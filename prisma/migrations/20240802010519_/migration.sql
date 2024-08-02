/*
  Warnings:

  - You are about to drop the `books` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "books";

-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point" (
    "id" SERIAL NOT NULL,
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "address" TEXT NOT NULL,
    "entry_price" REAL,
    "email" TEXT,
    "phone" TEXT,
    "point_type_id" INTEGER,
    "should_contact" BOOLEAN DEFAULT false,
    "day1" VARCHAR,
    "day2" VARCHAR,
    "day3" VARCHAR,
    "day4" VARCHAR,
    "day5" VARCHAR,
    "day6" VARCHAR,
    "day7" VARCHAR,
    "accessible" BOOLEAN DEFAULT false,

    CONSTRAINT "point_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_audio" (
    "id" UUID NOT NULL,
    "point_id" INTEGER NOT NULL,
    "language" VARCHAR(30) NOT NULL,
    "duration" INTEGER,

    CONSTRAINT "point_audio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_image" (
    "id" UUID NOT NULL,
    "point_id" INTEGER NOT NULL,
    "credits" TEXT,

    CONSTRAINT "point_image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_name" (
    "id" SERIAL NOT NULL,
    "point_id" INTEGER NOT NULL,
    "language" VARCHAR(30) NOT NULL,
    "name" VARCHAR(100),

    CONSTRAINT "point_name_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_tag" (
    "id" SERIAL NOT NULL,
    "point_id" INTEGER NOT NULL,
    "tag_id" INTEGER,

    CONSTRAINT "point_tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_transcript" (
    "id" SERIAL NOT NULL,
    "point_id" INTEGER NOT NULL,
    "language" VARCHAR(30) NOT NULL,
    "text" TEXT NOT NULL,
    "duration" INTEGER,

    CONSTRAINT "point_transcript_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_type" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "point_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "point_type_language" (
    "id" SERIAL NOT NULL,
    "point_type_id" INTEGER,
    "language" VARCHAR(30) NOT NULL,
    "name" VARCHAR(30),

    CONSTRAINT "point_type_language_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "schema_migrations" (
    "version" BIGINT NOT NULL,
    "dirty" BOOLEAN NOT NULL,

    CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version")
);

-- CreateTable
CREATE TABLE "tag" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tag_language" (
    "id" SERIAL NOT NULL,
    "tag_id" INTEGER NOT NULL,
    "language" VARCHAR(30) NOT NULL,
    "name" VARCHAR(30) NOT NULL,

    CONSTRAINT "tag_language_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "language" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(30) NOT NULL,

    CONSTRAINT "language_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "point_audio_point_id_language_key" ON "point_audio"("point_id", "language");

-- CreateIndex
CREATE UNIQUE INDEX "point_name_point_id_language_key" ON "point_name"("point_id", "language");

-- CreateIndex
CREATE UNIQUE INDEX "point_tag_point_id_tag_id_key" ON "point_tag"("point_id", "tag_id");

-- CreateIndex
CREATE UNIQUE INDEX "point_transcript_point_id_language_key" ON "point_transcript"("point_id", "language");

-- CreateIndex
CREATE UNIQUE INDEX "point_type_language_point_type_id_language_key" ON "point_type_language"("point_type_id", "language");

-- CreateIndex
CREATE UNIQUE INDEX "tag_language_tag_id_language_key" ON "tag_language"("tag_id", "language");

-- CreateIndex
CREATE UNIQUE INDEX "language_name_key" ON "language"("name");

-- AddForeignKey
ALTER TABLE "point" ADD CONSTRAINT "point_point_type_id_fkey" FOREIGN KEY ("point_type_id") REFERENCES "point_type"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_audio" ADD CONSTRAINT "point_audio_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_audio" ADD CONSTRAINT "point_audio_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_image" ADD CONSTRAINT "point_image_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_name" ADD CONSTRAINT "point_name_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_name" ADD CONSTRAINT "point_name_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_tag" ADD CONSTRAINT "point_tag_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_tag" ADD CONSTRAINT "point_tag_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "tag"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_transcript" ADD CONSTRAINT "point_transcript_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_transcript" ADD CONSTRAINT "point_transcript_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point_type_language" ADD CONSTRAINT "point_type_language_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "tag_language" ADD CONSTRAINT "tag_language_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "tag_language" ADD CONSTRAINT "tag_language_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "tag"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
