export interface TuristPoint {
    id?:number,
    name:string,
    latitude: number,
    longitude: number,
    address: string,
    accessible: boolean,
    entryPrice: number,
    type: string,
    tags: string[],
    transcript: TuristTranscript,
    images: TuristImage[],
    audio: TuristAudio,
    email?: string,
    telephone?: string,
    language: 'pt' | 'en',
    shouldContact: boolean,
    day1: string,
    day2: string,
    day3: string,
    day4: string,
    day5: string,
    day6: string,
    day7: string
}

export interface TuristPointDTO {
    id?: number,
    name:string,
    latitude: number,
    longitude: number,
    address: string,
    accessible: boolean,
    entryPrice: number,
    type: string,
    transcript: string,
    email?: string,
    telephone?: string,
    shouldContact: boolean,
    days: string
}

export function EmptyTuristPoint(): TuristPoint {
    return {
        id:0,
        name:'',
        latitude: 0,
        longitude: 0,
        address: '',
        accessible: false,
        entryPrice: 0,
        type: '',
        tags: [''],
        transcript: {
            language: 'pt',
            duration: 0,
            text: ''
        },
        images: [{
            id: '',
            credits: '',
        }],
        audio: {
            id: '',
            language: 'pt',
            duration: 0
        },
        email: '',
        telephone: '',
        language: 'pt',
        shouldContact: false,
        day1: '',
        day2: '',
        day3: '',
        day4: '',
        day5: '',
        day6: '',
        day7: ''
    }

}

export class HTTPError {
    constructor(statusCode: number,message: string) {
        this.statusCode = statusCode
        this.message = message
    }
    statusCode: number
    message: string
}

export interface TuristImage {
    id: string
    credits: string | null
    description?: string
}

export interface UserDTO {
    username: string
    password: string
}

export interface User {
    username: string
    password: string
    isAdmin: boolean
}

export interface TuristAudio {
    id: string
    language: 'pt' | 'en'
    duration: number | null
}

export interface TuristTranscript {
    language: 'pt' | 'en'
    duration: number | null
    text: string | null
}

export interface TuristName {
    language: 'pt' | 'en'
    name: string | null
}

export interface TuristTag {
    tag_id: number | null
}

export interface TuristType {
    id: number | null
}

export interface TuristPointDB {
    id: number
    latitude: number
    longitude: number
    address: string
    entry_price: number | null | undefined
    email: string | null | undefined
    phone: string | null | undefined
    point_type_id: number | null
    should_contact: boolean | null | undefined
    day1: string | null | undefined
    day2: string | null | undefined
    day3: string | null | undefined
    day4: string | null | undefined
    day5: string | null | undefined
    day6: string | null | undefined
    day7: string | null | undefined
    accessible: boolean | null | undefined
    point_audio: TuristAudio[]
    point_image: TuristImage[]
    point_name: TuristName[]
    point_tag: TuristTag[]
    point_transcript: TuristTranscript[]
    point_type?: TuristType | null
}