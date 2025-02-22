/*
  Warnings:

  - You are about to drop the column `AvatarImgUrl` on the `restaurant` table. All the data in the column will be lost.
  - Added the required column `AvatarImageUrl` to the `restaurant` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "restaurant" DROP COLUMN "AvatarImgUrl",
ADD COLUMN     "AvatarImageUrl" TEXT NOT NULL;
