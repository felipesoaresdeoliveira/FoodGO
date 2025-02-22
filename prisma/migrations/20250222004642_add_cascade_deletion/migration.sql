-- DropForeignKey
ALTER TABLE "menuCategory" DROP CONSTRAINT "menuCategory_restaurantId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_restaurantId_fkey";

-- DropForeignKey
ALTER TABLE "orderProducts" DROP CONSTRAINT "orderProducts_orderId_fkey";

-- DropForeignKey
ALTER TABLE "orderProducts" DROP CONSTRAINT "orderProducts_productId_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_menuCategoryId_fkey";

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_restaurantId_fkey";

-- AddForeignKey
ALTER TABLE "menuCategory" ADD CONSTRAINT "menuCategory_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_menuCategoryId_fkey" FOREIGN KEY ("menuCategoryId") REFERENCES "menuCategory"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_restaurantId_fkey" FOREIGN KEY ("restaurantId") REFERENCES "restaurant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orderProducts" ADD CONSTRAINT "orderProducts_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES "order"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orderProducts" ADD CONSTRAINT "orderProducts_productId_fkey" FOREIGN KEY ("productId") REFERENCES "products"("id") ON DELETE CASCADE ON UPDATE CASCADE;
