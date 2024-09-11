import { expect } from "chai";
import supertest from "supertest";
import app from "../../src/server";

import { PrismaClient } from '@prisma/client'


describe("User Controller", () => {

    const client = new PrismaClient();
    beforeEach(async ()=>{
    });
    
    afterEach(async ()=>{
        try {
            await client.user.delete({
                where: {
                    username: 'user2'
                }
            })
        } catch {
    
        }
    });

    describe('POST /user/login', () => {
        it("should login into a user", async () => {
            const response = await supertest(app)
                .post("/user/login")
                .send({
                    username: "user",
                    password: "user"
                });
    
            expect(response.status).to.equal(200);
            expect(response.body).to.have.property("token");
        });

        it("should fail login into a user empty username", async () => {
            const response = await supertest(app)
                .post("/user/login")
                .send({
                    username: "",
                    password: "user"
                });
                expect(response.status).to.equal(400);
                expect(response.body).to.have.property("error");
                expect(response.body.error).to.equal("Indalid values for User");
        });

        it("should fail login into a user not found", async () => {
            const response = await supertest(app)
                .post("/user/login")
                .send({
                    username: "notFound",
                    password: "notFound"
                });
            expect(response.status).to.equal(404);
            expect(response.body).to.have.property("error");
            expect(response.body.error).to.equal("User not found");
        });
    });

    describe('POST /user/register', () => {
        it("should register a new user", async () => {
            const response = await supertest(app)
                .post("/user/register")
                .send({
                    username: "user2",
                    password: "user2"
                });
    
            expect(response.status).to.equal(200);
            expect(response.body).to.have.property("token");
        });

        it("should fail when register a user that already exists", async () => {
            const response = await supertest(app)
                .post("/user/register")
                .send({
                    username: "user",
                    password: "user"
                });
            expect(response.status).to.equal(400);
            expect(response.body).to.have.property("error");
            expect(response.body.error).to.equal("User with username already exists");
        });

        it("should fail when empty username", async () => {
            const response = await supertest(app)
                .post("/user/register")
                .send({
                    username: "",
                    password: "user"
                });
            expect(response.status).to.equal(400);
            expect(response.body).to.have.property("error");
            expect(response.body.error).to.equal("Indalid values for User");
        });
    });
    
});