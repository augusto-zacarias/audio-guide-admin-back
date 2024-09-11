import chai, { expect } from 'chai';
import chaiHttp from 'chai-http';
import app from '../../src/server';

chai.use(chaiHttp);
const requester = await chai.request.agent(app).keepOpen()

describe('TuristPoint Routes', () => {
    describe('GET /turistPoint', () => {
        it('should return all turist points', async () => {
            const res = await requester.get('/turistPoint').auth();
            expect(res.status).to.equal(200);
            expect(res.body).to.be.an('array');
        });
    });

    describe('GET /turistPoint/:id', () => {
        it('should return a specific turist point', async () => {
            const res = await request(app).get('/turistPoint/1');
            expect(res.status).to.equal(200);
            expect(res.body).to.be.an('object');
        });

        it('should return 404 if turist point not found', async () => {
            const res = await request(app).get('/turistPoint/999');
            expect(res.status).to.equal(404);
        });
    });

    describe('POST /turistPoint', () => {
        it("should create a new turist point", async () => {
            const res = await request(app).post('/turistPoint');
            expect(res.statusCode).to.equal(201);
            expect(res._getJSONData()).to.deep.equal();
          });
    });

    describe('PUT /turistPoint/:id', () => {
        it("should update an existing turist point", async () => {
            const res = await request(app).put('/turistPoint/1');
            expect(res.statusCode).to.equal(201);
            expect(res._getJSONData()).to.deep.equal();
          });
    });

    describe('DELETE /turistPoint/:id', () => {
        it("should delete an existing turist point", async () => {
            const res = await request(app).delete('/turistPoint/1');
            expect(res.statusCode).to.equal(204);
            expect(res._getJSONData()).to.be.empty;
          });
    });
});