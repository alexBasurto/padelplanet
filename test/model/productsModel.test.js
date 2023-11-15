import Product from "../../src/models/productsModel.js";

describe("Tests de modelo de productos", () => {
    let idProduct = null;
    const productName = "Laptop";
    const brand = "HP";
    const image = "laptop_image.jpg";
    const price = 800;
    const finalPrice = 750;

    test("Crear un nuevo producto", async () => {
        const product = await Product.create({ productName, brand, image, price, finalPrice });
        expect(product).not.toBeUndefined();
        expect(product).not.toBeNull();
        expect(product.productName).toEqual(productName);
        expect(product.brand).toEqual(brand);
        expect(product.image).toEqual(image);
        expect(product.price).toEqual(price);
        expect(product.finalPrice).toEqual(finalPrice);
        idProduct = product.idProduct;
    });

    test("Conseguir todos los productos", async () => {
        const products = await Product.findAll();
        expect(products.length).toBeGreaterThan(0);
        expect(products[0]).toHaveProperty("productName");
        expect(products[0]).toHaveProperty("brand");
        expect(products[0]).toHaveProperty("image");
        expect(products[0]).toHaveProperty("price");
        expect(products[0]).toHaveProperty("finalPrice");
    });

    test("Conseguir un producto por ID", async () => {
        const foundProduct = await Product.findOne({
            where: {
                idProduct: idProduct
            }
        });
        expect(foundProduct).not.toBeUndefined();
        expect(foundProduct).not.toBeNull();
        expect(foundProduct.productName).toEqual(productName);
        expect(foundProduct.brand).toEqual(brand);
        expect(foundProduct.image).toEqual(image);
        expect(foundProduct.price).toEqual(price);
        expect(foundProduct.finalPrice).toEqual(finalPrice);
    });

    test("Editar un producto por ID", async () => {
        const foundProduct = await Product.findOne({
            where: {
                idProduct: idProduct
            }
        });
        foundProduct.productName = "Tablet";
        foundProduct.brand = "Samsung";
        foundProduct.image = "tablet_image.jpg";
        foundProduct.price = 300;
        foundProduct.finalPrice = 280;
        await foundProduct.save();
        const updatedProduct = await Product.findOne({
            where: {
                idProduct: idProduct
            }
        });
        expect(updatedProduct).not.toBeUndefined();
        expect(updatedProduct).not.toBeNull();
        expect(updatedProduct.productName).toEqual("Tablet");
        expect(updatedProduct.brand).toEqual("Samsung");
        expect(updatedProduct.image).toEqual("tablet_image.jpg");
        expect(updatedProduct.price).toEqual(300);
        expect(updatedProduct.finalPrice).toEqual(280);
    });

    test("Borrar un producto por ID", async () => {
        await Product.destroy({
            where: {
                idProduct: idProduct
            }
        });
        const deletedProduct = await Product.findOne({
            where: {
                idProduct: idProduct
            }
        });
        expect(deletedProduct).toBeNull();
    });
});
