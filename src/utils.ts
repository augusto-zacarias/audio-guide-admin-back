import { user } from "@prisma/client"
import { TuristPoint, TuristPointDTO, User, UserDTO } from "./Types"

export function PointToPointDTO(turistPoint:TuristPoint): TuristPointDTO {
    return {
        id: turistPoint.id,
        name:turistPoint.name,
        latitude: turistPoint.latitude,
        longitude: turistPoint.longitude,
        address: turistPoint.address,
        accessible: turistPoint.accessible,
        entryPrice: turistPoint.entryPrice,
        type: turistPoint.type,
        transcript: turistPoint.transcript.text!,
        email: turistPoint.email,
        telephone: turistPoint.telephone,
        shouldContact: turistPoint.shouldContact,
        days: turistPoint.day1
    }
}

export function PointDTOToPoint(dto:TuristPointDTO): TuristPoint {
    return {
        id:dto.id,
        name:dto.name,
        latitude: dto.latitude,
        longitude: dto.longitude,
        address: dto.address,
        accessible: dto.accessible,
        entryPrice: dto.entryPrice,
        type: dto.type,
        tags: [],
        transcript: {
            language: 'pt',
            duration: 0,
            text: ""
        },
        images: [],
        audio: {
            id: "",
            language: "pt",
            duration: 0
        },
        email: dto.email,
        telephone: dto.telephone,
        language: 'pt',
        shouldContact: dto.shouldContact,
        day1: dto.days,
        day2: dto.days,
        day3: dto.days,
        day4: dto.days,
        day5: dto.days,
        day6: dto.days,
        day7: dto.days
    }
}

export function UserToUserDTO(user:User): UserDTO {
    return {
        username: user.username,
        password: user.password
    }
}

export function UserDTOToUser(user:UserDTO): User {
    return {
        username: user.username,
        password: user.password,
        isAdmin: false
    }
}

export function UserToUserDB(user:User): user {
    return {
        username: user.username,
        password: user.password,
        isAdmin: user.isAdmin
    }
}

export function UserDBToUser(user:user): User {
    return {
        username: user.username,
        password: user.password,
        isAdmin: user.isAdmin
    }
}