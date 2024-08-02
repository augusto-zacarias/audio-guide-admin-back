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
            path: '',
            language: 'pt',
            duration: 0,
            text: ''
        },
        images: [{
            id: '',
            credits: '',
        }],
        audio: {
            path: '',
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
    credits: string
    description?: string
}

export interface User {
    username: string
    password: string
}

export interface UserDB extends User {
    id: number
}

export interface TuristAudio {
    path: string
    language: 'pt' | 'en'
    duration: number
}

export interface TuristTranscript {
    path: string
    language: 'pt' | 'en'
    duration: number
    text: string
}

export interface TuristPointDB {
    id: number
    name: string
    latitude: number
    longitude: number
    address: string
    entry_price?: number
    email?: string
    phone?: string
    type: string
    should_contact?: boolean
    day1?: string
    day2?: string
    day3?: string
    day4?: string
    day5?: string
    day6?: string
    day7?: string
    accessible?: boolean
    language: string

    //audios
    //images
    //tags
    //transcripts
}