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

