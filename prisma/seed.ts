import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()
async function main() {
  const admin = await prisma.user.upsert({
    where: { username: 'admin' },
    update: {
        username: 'admin',
        password: 'admin',
        isAdmin: true
    },
    create: {
        username: 'admin',
        password: 'admin',
        isAdmin: true
    },
  })
  const user = await prisma.user.upsert({
    where: { username: 'user' },
    update: {
        username: 'user',
        password: 'user',
        isAdmin: false
    },
    create: {
        username: 'user',
        password: 'user',
        isAdmin: false
    },
  })
  console.log({ admin, user })
  
  const pointTypesIds = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16].map(id => ({ id }))
  await prisma.point_type.createMany({
    data: pointTypesIds,
  })

  const tagIds = [1,2,3,4,5,6,7,8,9,10,11,12,13].map(id => ({ id }))
  await prisma.tag.createMany({
    data: tagIds,
  })

  const languages = [{id:1,name:'pt' }, {id:2,name:'en' }]
  await prisma.language.createMany({
    data: languages,
  })

  const tag_languages = [
    {id:1, tag_id:1, language:'pt', name:'Lazer'},
    {id:2, tag_id:2, language:'pt', name:'História e Cultura'},
    {id:3, tag_id:3, language:'pt', name:'Natureza e Ecoturismo'},
    {id:4, tag_id:4, language:'pt', name:'Gastronomia'},
    {id:5, tag_id:5, language:'pt', name:'Entretenimento e Eventos'},
    {id:6, tag_id:6, language:'pt', name:'Compras e Artesanato'},
    {id:7, tag_id:7, language:'pt', name:'Educação e Aprendizado'},
    {id:8, tag_id:8, language:'pt', name:'Arte'},
    {id:9, tag_id:9, language:'pt', name:'Economia'},
    {id:10, tag_id:10, language:'pt', name:'Arquitetura e Urbanismo'},
    {id:11, tag_id:11, language:'pt', name:'Tecnologia e Inovação'},
    {id:12, tag_id:12, language:'pt', name:'Religioso'},
    {id:13, tag_id:13, language:'pt', name:'Ecoturismo'},
  ]
  await prisma.tag_language.createMany({
    data: tag_languages,
  })

  const point_type_language = [
    {id:2, point_type_id:1, language:'pt', name:'Parque'},
    {id:3, point_type_id:2, language:'pt', name:'Museu'},
    {id:4, point_type_id:3, language:'pt', name:'Monumento'},
    {id:5, point_type_id:4, language:'pt', name:'Mercado'},
    {id:6, point_type_id:5, language:'pt', name:'Teatro'},
    {id:7, point_type_id:6, language:'pt', name:'Corpo d\'água'},
    {id:8, point_type_id:7, language:'pt', name:'Universidade'},
    {id:9, point_type_id:8, language:'pt', name:'Restaurante'},
    {id:10, point_type_id:9, language:'pt', name:'Estádio'},
    {id:11, point_type_id:10, language:'pt', name:'Ginásio'},
    {id:12, point_type_id:11, language:'pt', name:'Igreja'},
    {id:13, point_type_id:12, language:'pt', name:'Praça'},
    {id:14, point_type_id:13, language:'pt', name:'Rua'},
    {id:15, point_type_id:14, language:'pt', name:'Prédio'},
    {id:16, point_type_id:15, language:'pt', name:'Escola'},
    {id:17, point_type_id:16, language:'pt', name:'Marco histórico'},
  ]
  await prisma.point_type_language.createMany({
    data: point_type_language,
  })
}
main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })

