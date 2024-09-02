import { PrismaClient, point } from '@prisma/client'
import { TuristPoint,TuristPointDB } from '../Types.js';

export default class TuristPointRepository {

    prismaClient = new PrismaClient()
    FIND_POINT_OPTIONS = {
        include: {
            point_audio: {
                select: {
                    duration: true,
                    language: true,
                    id: true
                }
            },
            point_image: {
                select: {
                    credits: true,
                    id: true
                }
            },
            point_name: {
                select: {
                    name: true,
                    language: true
                }
            },
            point_tag: {
                select: {
                    tag_id: true
                }
            },
            point_transcript: {
                select: {
                    text: true,
                    language: true,
                    duration: true
                }
            }
        }
    }

    async createTuristPoint(newTuristPoint:TuristPoint): Promise<TuristPoint> {

        const point_type = await this.prismaClient.point_type_language.findFirst({
            where: {
                name: newTuristPoint.type,
                language: newTuristPoint.language
            }
        })

        if (point_type==null) {
            throw new Error("Invalid point type")
        }

        const tagIds = await Promise.all(newTuristPoint.tags.map(async tag=>{
            const tagId = (await this.prismaClient.tag_language.findFirst({
                where: {
                    name: tag,
                    language: newTuristPoint.language
                }
            }))?.id
            return {
                tag_id: tagId
            }
        }))

        if (tagIds.length == 0) {
            throw new Error("Invalid tags with language")
        }

        const newPoint = (await this.prismaClient.point.create({
            data: {
                latitude: newTuristPoint.latitude,
                longitude: newTuristPoint.longitude,
                address: newTuristPoint.address,
                entry_price: newTuristPoint.entryPrice,
                email: newTuristPoint.email,
                phone: newTuristPoint.telephone,
                point_type_id: point_type.point_type_id,
                should_contact: newTuristPoint.shouldContact,
                day1: newTuristPoint.day1,
                day2: newTuristPoint.day2,
                day3: newTuristPoint.day3,
                day4: newTuristPoint.day4,
                day5: newTuristPoint.day5,
                day6: newTuristPoint.day6,
                day7: newTuristPoint.day7,
                accessible: newTuristPoint.accessible,
                point_audio: {
                    create: [{
                        duration: newTuristPoint.audio.duration,
                        language: 'pt'
                    }]
                },
                point_image: {
                    create: newTuristPoint.images.map(image=>{
                        return {
                            credits: image.credits
                        }
                    })
                },
                point_name: {
                    create: [{
                        language: 'pt',
                        name: newTuristPoint.name
                    }]
                },
                point_tag: {
                    create: tagIds
                },
                point_transcript: {
                    create: [{
                        text: newTuristPoint.transcript.text!,
                        duration: newTuristPoint.transcript.duration,
                        language: newTuristPoint.transcript.language
                    }]
                },
                
            },
            ...this.FIND_POINT_OPTIONS
        })) as TuristPointDB

        return this.PointDBToPoint(newPoint)
    }

    async getAllTuristPoints(): Promise<TuristPoint[]> {
        const turistPointDBs = (await this.prismaClient.point.findMany(this.FIND_POINT_OPTIONS)) as TuristPointDB[]

        const turistPoints = await Promise.all(turistPointDBs.map(async point => {
            return await this.PointDBToPoint(point);
        }))

        return turistPoints
    }

    async getTuristPoint(id:number): Promise<TuristPoint>  {
        const turistPointDB = (await this.prismaClient.point.findFirst({
            where: {
                id: id
            },
            ...this.FIND_POINT_OPTIONS
        })) as TuristPointDB;
    
        return await this.PointDBToPoint(turistPointDB)
    }

    async updateTuristPoint(id:number,newTuristPoint:TuristPoint): Promise<TuristPoint> {
        const point_type = await this.prismaClient.point_type_language.findFirst({
            where: {
                name: newTuristPoint.type,
                language: newTuristPoint.language
            }
        })

        if (point_type==null) {
            throw new Error("Invalid point type")
        }

        const tagIds = await Promise.all(newTuristPoint.tags.map(async tag=>{
            const tagId = (await this.prismaClient.tag_language.findFirst({
                where: {
                    name: tag,
                    language: newTuristPoint.language
                }
            }))?.id
            return {
                tag_id: tagId
            }
        }))

        if (tagIds.length == 0) {
            throw new Error("Invalid tags with language")
        }

        const newPoint = (await this.prismaClient.point.update({
            data: {
                latitude: newTuristPoint.latitude,
                longitude: newTuristPoint.longitude,
                address: newTuristPoint.address,
                entry_price: newTuristPoint.entryPrice,
                email: newTuristPoint.email,
                phone: newTuristPoint.telephone,
                point_type_id: point_type.point_type_id,
                should_contact: newTuristPoint.shouldContact,
                day1: newTuristPoint.day1,
                day2: newTuristPoint.day2,
                day3: newTuristPoint.day3,
                day4: newTuristPoint.day4,
                day5: newTuristPoint.day5,
                day6: newTuristPoint.day6,
                day7: newTuristPoint.day7,
                accessible: newTuristPoint.accessible,
                // point_audio: {
                //     upsert: {
                //         where: {
                //             id: newTuristPoint.audio.id
                //         },
                //         update: {
                //             duration: newTuristPoint.audio.duration
                //         },
                //         create: {
                //             duration: newTuristPoint.audio.duration,
                //             language: 'pt'
                //         }
                //     }
                // },
                // point_image: {
                //     upsert: {
                //         where: {
                //             id: newTuristPoint.images[0].id
                //         },
                //         update: {
                //             credits: newTuristPoint.images[0].credits
                //         },
                //         create: {
                //             credits: newTuristPoint.images[0].credits,
                //         }
                //     }
                // },
                point_name: {
                    update: [{
                        data: {
                            name: newTuristPoint.name
                        }, where: {
                            point_id_language: {
                                point_id: id,
                                language: 'pt'
                            }
                        }
                    }]
                },
            //     point_tag: {
            //     },
            //     point_transcript: {
            //         update: [{
            //             data: {
            //                 text: newTuristPoint.transcript.text!,
            //                 duration: newTuristPoint.transcript.duration,
            //                 language: newTuristPoint.transcript.language
            //             }, where: {
            //                 point_id_language: {
            //                     point_id: id,
            //                     language: newTuristPoint.language
            //                 }
            //             }
            //         }]
            //     },
                
            },
            where: {
                id: id
            },
            ...this.FIND_POINT_OPTIONS
        })) as TuristPointDB

        return this.PointDBToPoint(newPoint)
    }

    async deleteTuristPoint(id:number) {
        await this.prismaClient.point.delete({
            where: {
                id: id
            }
        })
    }

    async doesPointExistById(id: number): Promise<boolean> {
        return await this.prismaClient.point.findFirst({
            where: {
                id: id
            }
        }) != null
    }

    async doesPointExistByName(name: string): Promise<boolean> {
        return await this.prismaClient.point.findFirst({
            where: {
                point_name: {
                    some: {
                        name: name
                    }
                }
            }
        }) != null
    }

    async doesExistOtherPointWithName(point: TuristPoint): Promise<boolean> {
        return await this.prismaClient.point.findFirst({
            where: {
                point_name: {
                    some: {
                        name: point.name,
                    }
                },
                id: {not: point.id}
            }
        }) != null
    }
    
    async PointDBToPoint(turistPoint:TuristPointDB): Promise<TuristPoint> {
        const point_type = await this.prismaClient.point_type_language.findFirst({
            where: {
                point_type_id: turistPoint.point_type_id
            }
        })

        if (point_type==null) {
            throw new Error("Invalid point type")
        }

        const tag_languages = await Promise.all(turistPoint.point_tag.map(async (tag,i)=>{
            return await this.prismaClient.tag_language.findFirst({
                where: {
                    tag_id: tag.tag_id!,
                }
            })
        }))

        if (tag_languages.length==0) {
            throw new Error("Invalid tags with language")
        }

        return {
            id :turistPoint.id,
            name:turistPoint.point_name[0].name!,
            latitude: turistPoint.latitude,
            longitude: turistPoint.longitude,
            address: turistPoint.address,
            accessible: turistPoint.accessible!,
            entryPrice: turistPoint.entry_price!,
            type: point_type.name!,
            tags: tag_languages.map(tag=>tag!.name!),
            transcript: turistPoint.point_transcript[0],
            images: turistPoint.point_image,
            audio: turistPoint.point_audio[0],
            email: turistPoint.email!,
            telephone: turistPoint.phone!,
            language: 'pt',
            shouldContact: turistPoint.should_contact!,
            day1: turistPoint.day1!,
            day2: turistPoint.day2!,
            day3: turistPoint.day3!,
            day4: turistPoint.day4!,
            day5: turistPoint.day5!,
            day6: turistPoint.day6!,
            day7: turistPoint.day7!
        }
    }

    // async PointToPointDB(turistPoint:TuristPoint): TuristPointDB {
    //     return {
    //     }
    // }
}
