-- DropForeignKey
ALTER TABLE "point" DROP CONSTRAINT "point_point_type_id_fkey";

-- DropForeignKey
ALTER TABLE "point_audio" DROP CONSTRAINT "point_audio_language_fkey";

-- DropForeignKey
ALTER TABLE "point_audio" DROP CONSTRAINT "point_audio_point_id_fkey";

-- DropForeignKey
ALTER TABLE "point_image" DROP CONSTRAINT "point_image_point_id_fkey";

-- DropForeignKey
ALTER TABLE "point_name" DROP CONSTRAINT "point_name_language_fkey";

-- DropForeignKey
ALTER TABLE "point_name" DROP CONSTRAINT "point_name_point_id_fkey";

-- DropForeignKey
ALTER TABLE "point_tag" DROP CONSTRAINT "point_tag_point_id_fkey";

-- DropForeignKey
ALTER TABLE "point_tag" DROP CONSTRAINT "point_tag_tag_id_fkey";

-- DropForeignKey
ALTER TABLE "point_transcript" DROP CONSTRAINT "point_transcript_language_fkey";

-- DropForeignKey
ALTER TABLE "point_transcript" DROP CONSTRAINT "point_transcript_point_id_fkey";

-- DropForeignKey
ALTER TABLE "point_type_language" DROP CONSTRAINT "point_type_language_language_fkey";

-- DropForeignKey
ALTER TABLE "tag_language" DROP CONSTRAINT "tag_language_language_fkey";

-- DropForeignKey
ALTER TABLE "tag_language" DROP CONSTRAINT "tag_language_tag_id_fkey";

-- AddForeignKey
ALTER TABLE "point" ADD CONSTRAINT "point_point_type_id_fkey" FOREIGN KEY ("point_type_id") REFERENCES "point_type"("id") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_audio" ADD CONSTRAINT "point_audio_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_audio" ADD CONSTRAINT "point_audio_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_image" ADD CONSTRAINT "point_image_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_name" ADD CONSTRAINT "point_name_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_name" ADD CONSTRAINT "point_name_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_tag" ADD CONSTRAINT "point_tag_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_tag" ADD CONSTRAINT "point_tag_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "tag"("id") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_transcript" ADD CONSTRAINT "point_transcript_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_transcript" ADD CONSTRAINT "point_transcript_point_id_fkey" FOREIGN KEY ("point_id") REFERENCES "point"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "point_type_language" ADD CONSTRAINT "point_type_language_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tag_language" ADD CONSTRAINT "tag_language_language_fkey" FOREIGN KEY ("language") REFERENCES "language"("name") ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tag_language" ADD CONSTRAINT "tag_language_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "tag"("id") ON DELETE NO ACTION ON UPDATE CASCADE;
