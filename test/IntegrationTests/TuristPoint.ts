import { expect } from 'chai';
import app from '../../src/server';
import request from 'supertest';
import { PrismaClient } from '@prisma/client'
import { TuristPoint } from '../../src/Types';

const client = new PrismaClient();
describe('TuristPoint Routes', () => {
    
    let userToken: string;
    let adminToken: string;
    let turistPointId = '1';
    const defaultTuristPoint = {
        "id": 1,
        "name": "Default turist point",
        "latitude": -27.123,
        "longitude": 11.123,
        "address": "Endereço aqui",
        "entryPrice": 9.99,
        "type": "Parque",
        "accessible": true,
        "tags": [
          "Arte"
        ],
        "transcript": {
          "language": "pt" as const,
          "duration": 0,
          "text": "string"
        },
        "images": [
          {
            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
            "credits": "string",
            "description": "string"
          }
        ],
        "audio": {
          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "language": "pt" as const,
          "duration": 0
        },
        "email": "string",
        "telephone": "string",
        "language": "pt" as const,
        "shouldContact": true,
        "day1": "string",
        "day2": "string",
        "day3": "string",
        "day4": "string",
        "day5": "string",
        "day6": "string",
        "day7": "string"
      }
    const newTuristPoint = {
        "id": 2,
        "name": "An actual name",
        "latitude": -27.123,
        "longitude": 11.123,
        "address": "Endereço aqui",
        "entryPrice": 9.99,
        "type": "Parque",
        "accessible": true,
        "tags": [
          "Arte"
        ],
        "transcript": {
          "language": "pt" as const,
          "duration": 0,
          "text": "string"
        },
        "images": [
          {
            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
            "credits": "string",
            "description": "string"
          }
        ],
        "audio": {
          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "language": "pt" as const,
          "duration": 0
        },
        "email": "string",
        "telephone": "string",
        "language": "pt" as const,
        "shouldContact": true,
        "day1": "string",
        "day2": "string",
        "day3": "string",
        "day4": "string",
        "day5": "string",
        "day6": "string",
        "day7": "string"
      }
    const updatedTuristPoint = {
        "id": 1,
        "name": "testName2",
        "latitude": -28.123,
        "longitude": 12.123,
        "address": "Endereço aqui",
        "entryPrice": 9.99,
        "type": "Parque",
        "accessible": true,
        "tags": [
          "Arte"
        ],
        "transcript": {
          "language": "pt",
          "duration": 0,
          "text": "string"
        },
        "images": [
          {
            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
            "credits": "string",
            "description": "string"
          }
        ],
        "audio": {
          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "language": "pt",
          "duration": 0
        },
        "email": "string",
        "telephone": "string",
        "language": "pt",
        "shouldContact": true,
        "day1": "string",
        "day2": "string",
        "day3": "string",
        "day4": "string",
        "day5": "string",
        "day6": "string",
        "day7": "string"
      };

    const invalidTuristPoint = {
    "id": 1,
    "name": "test",
    "latitude": "-27.123",
    "longitude": 11.123,
    "address": "Endereço aqui",
    "entryPrice": 9.99,
    "type": "Parque",
    "accessible": true,
    "tags": [
        "Arte"
    ],
    "transcript": {
        "language": "pt" as const,
        "duration": 0,
        "text": "string"
    },
    "images": [
        {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "credits": "string",
        "description": "string"
        }
    ],
    "audio": {
        "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        "language": "pt" as const,
        "duration": 0
    },
    "email": "string",
    "telephone": "string",
    "language": "pt" as const,
    "shouldContact": true,
    "day1": "string",
    "day2": "string",
    "day3": "string",
    "day4": "string",
    "day5": "string",
    "day6": "string",
    "day7": "string"
    }

    before(async () => {
        const responseUser = await request(app)
            .post("/user/login")
            .send({
                username: "user",
                password: "user"
            });

            const responseAdmin = await request(app)
            .post("/user/login")
            .send({
                username: "admin",
                password: "admin"
            });
    
            userToken = responseUser.body.token!;
            adminToken = responseAdmin.body.token!;
    });

    beforeEach(async () => {
        try {
            await createTuristPoint(defaultTuristPoint);
        } catch(err) {
        }
    })

    afterEach(async () => {
        try {
            await client.point.delete({
                where: {
                    id: 1
                }
            })
        } catch(err) {
        }
        try {
            await client.point.delete({
                where: {
                    id: 2
                }
            })
        } catch(err) {
        }
    })

    describe('GET /turistPoint', () => {
        it('should return all turist points', async () => {

            const res = await request(app).get('/turistPoint').auth(userToken, {
                type: 'bearer'
            });
            expect(res.status).to.equal(200);
            expect(res.body).to.be.an('array');
            expect(res.body.length).to.equal(1);
        });

        it('should fail when not authorized', async () => {

            const res = await request(app).get('/turistPoint');
            expect(res.status).to.equal(401);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized user");
        });
    });

    describe('GET /turistPoint/:id', () => {
        it('should return a specific turist point', async () => {
            const res = await request(app).get('/turistPoint/1').auth(userToken, {
                type: 'bearer'
            });
            expect(res.status).to.equal(200);
        });
    
        it('should return 404 if turist point not found', async () => {
            const res = await request(app).get('/turistPoint/999')
            .auth(userToken, {
                type: 'bearer'
            });
            expect(res.status).to.equal(404);
            expect(res.body).to.be.an('object');
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Turist point not found");
        });

        it('should return 400 if invalid id', async () => {
            const res = await request(app).get('/turistPoint/asdf').auth(userToken, {
                type: 'bearer'
            });
            expect(res.status).to.equal(400);
            expect(res.body).to.be.an('object');
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Invalid id passed");
        });

        it('should fail when not authorized', async () => {
            const res = await request(app).get('/turistPoint/1');
            expect(res.status).to.equal(401);
            expect(res.body).to.be.an('object');
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized user");
        });
    });

    describe('POST /turistPoint', () => {
        it('should create a new turist point', async () => {
            const res = await request(app)
                .post('/turistPoint')
                .auth(adminToken, { type: 'bearer' })
                .send(newTuristPoint);
                expect(res.body).to.be.an('object');
                expect(res.body.name).to.equal(newTuristPoint.name);
                expect(res.body.latitude).to.equal(newTuristPoint.latitude);
                expect(res.body.longitude).to.equal(newTuristPoint.longitude);
                expect(res.status).to.equal(201);
        });

        it('should fail to create a new turist point when not authorized', async () => {
            const res = await request(app)
                .post('/turistPoint')
                .send(newTuristPoint);

            expect(res.status).to.equal(401);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized user");
        });

        it('should fail to create a new turist point when authorized without permission', async () => {
            const res = await request(app)
                .post('/turistPoint')
                .auth(userToken, { type: 'bearer' })
                .send(newTuristPoint);

            expect(res.status).to.equal(403);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized token");
        });

        it('should fail when sending invalid turistPoint values', async () => {
            

            const res = await request(app)
                .post('/turistPoint')
                .auth(adminToken, { type: 'bearer' })
                .send(invalidTuristPoint);

            expect(res.status).to.equal(400);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Indalid values for Turist Point");
        });

        it('should fail when turist point already exists', async () => {
            const res = await request(app)
                .post('/turistPoint')
                .auth(adminToken, { type: 'bearer' })
                .send(defaultTuristPoint);

            expect(res.status).to.equal(409);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Error creating turistPoint");
        });
    });

    describe('PUT /turistPoint/:id', () => {
        it('should update an existing turist point', async () => {
            const res = await request(app)
                .put(`/turistPoint/${turistPointId}`)
                .auth(adminToken, { type: 'bearer' })
                .send(updatedTuristPoint);

            expect(res.status).to.equal(201);
            expect(res.body).to.be.an('object');
            expect(res.body.id).to.equal(updatedTuristPoint.id);
            expect(res.body.name).to.equal(updatedTuristPoint.name);
            expect(res.body.latitude).to.equal(updatedTuristPoint.latitude);
            expect(res.body.longitude).to.equal(updatedTuristPoint.longitude);
        });

        it('should fail to update with invalid id', async () => {
            const res = await request(app)
                .put(`/turistPoint/asdfg`)
                .auth(adminToken, { type: 'bearer' })
                .send(updatedTuristPoint);

            expect(res.status).to.equal(400);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Invalid id passed");
        });

        it('should fail to update with invalid turistPoint data', async () => {
            const res = await request(app)
                .put(`/turistPoint/${turistPointId}`)
                .auth(adminToken, { type: 'bearer' })
                .send({...updatedTuristPoint,email:""});

            expect(res.status).to.equal(400);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Invalid values for Turist Point");
        });

        it('should fail to update if pointId passed doesn\'t exist', async () => {
            const res = await request(app)
                .put(`/turistPoint/999`)
                .auth(adminToken, { type: 'bearer' })
                .send(updatedTuristPoint);

            expect(res.status).to.equal(400);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Error updating Turist Point");
        });

        it('should fail to update an existing turist point when not authorized', async () => {
            const res = await request(app)
                .put(`/turistPoint/${turistPointId}`)
                .send(updatedTuristPoint);

            expect(res.status).to.equal(401);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized user");
        });

        it('should fail to update an existing turist point when authorized without permission', async () => {
            const res = await request(app)
                .put(`/turistPoint/${turistPointId}`)
                .auth(userToken, { type: 'bearer' })
                .send(updatedTuristPoint);

            expect(res.status).to.equal(403);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized token");
        });
    });

    describe('DELETE /turistPoint/:id', () => {
        it('should delete an existing turist point', async () => {
            const res = await request(app)
                .delete(`/turistPoint/${turistPointId}`)
                .auth(adminToken, { type: 'bearer' });

            expect(res.status).to.equal(204);
            expect(res.body).to.be.an('object');
        });

        it('should fail to delete with invalid id', async () => {
            const res = await request(app)
                .delete(`/turistPoint/asdf`)
                .auth(adminToken, { type: 'bearer' });

            expect(res.status).to.equal(400);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Invalid id passed");
        });

        it('should fail to delete when passing id not exists', async () => {
            const res = await request(app)
                .delete(`/turistPoint/999`)
                .auth(adminToken, { type: 'bearer' });

            expect(res.status).to.equal(404);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Error deleting turistPoint");
        });

        it('should fail to delete an existing turist point when not authorized', async () => {
            const res = await request(app)
                .delete(`/turistPoint/${turistPointId}`);

            expect(res.status).to.equal(401);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized user");
        });

        it('should fail to update an existing turist point when authorized without permission', async () => {
            const res = await request(app)
                .delete(`/turistPoint/${turistPointId}`)
                .auth(userToken, { type: 'bearer' });


            expect(res.status).to.equal(403);
            expect(res.body).to.have.property("error");
            expect(res.body.error).to.equal("Unauthorized token");
        });
    });

});

async function createTuristPoint(newTuristPoint:TuristPoint) {

    const FIND_POINT_OPTIONS = {
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

    const point_type = await client.point_type_language.findFirst({
        where: {
            name: newTuristPoint.type,
            language: newTuristPoint.language
        }
    })

    if (point_type==null) {
        throw new Error("Invalid point type")
    }

    const tagIds = await Promise.all(newTuristPoint.tags.map(async tag=>{
        const tagId = (await client.tag_language.findFirst({
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
    await client.point.create({
        data: {
            id: newTuristPoint.id,
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
        ...FIND_POINT_OPTIONS
    })
}