import Orders from "../../src/models/ordersModel.js";
import Users from "../../src/models/usersModel.js";
import sequelize from "../../src/config/sequelize.js";

describe("Tests de modelo de órdenes", () => {
    const existingUserId = 5; // ID de un usuario existente en tu base de datos
    let idOrder = null;

    test("Crear una nueva orden", async () => {
        const order = await Orders.create({
            idUser: existingUserId,
            // Otros campos de la orden
        });

        expect(order).not.toBeUndefined();
        expect(order).not.toBeNull();
        expect(order.idOrder).toBeDefined();
        expect(order.idUser).toEqual(existingUserId);

        idOrder = order.idOrder;
    });

    test("Conseguir todas las órdenes", async () => {
        const orders = await Orders.findAll({
            where: {
                idUser: existingUserId
            }
        });

        expect(orders.length).toBeGreaterThan(0);
        expect(orders[0]).toHaveProperty("idOrder");
        expect(orders[0]).toHaveProperty("idUser");
        // Otros campos de la orden
    });

    test("Conseguir una orden por ID", async () => {
        const foundOrder = await Orders.findOne({
            where: {
                idOrder: idOrder
            }
        });

        expect(foundOrder).not.toBeUndefined();
        expect(foundOrder).not.toBeNull();
        expect(foundOrder.idOrder).toEqual(idOrder);
        expect(foundOrder.idUser).toEqual(existingUserId);
        // Otros campos de la orden
    });

    test("Editar una orden por ID", async () => {
        const foundOrder = await Orders.findOne({
            where: {
                idOrder: idOrder
            }
        });

        // Modificar campos de la orden según tus necesidades
        // foundOrder.algunCampo = "nuevoValor";

        await foundOrder.save();

        const updatedOrder = await Orders.findOne({
            where: {
                idOrder: idOrder
            }
        });

        expect(updatedOrder).not.toBeUndefined();
        expect(updatedOrder).not.toBeNull();
        // Verificar que los campos se hayan actualizado correctamente
        // expect(updatedOrder.algunCampo).toEqual("nuevoValor");
    });

    test("Borrar una orden por ID", async () => {
        await Orders.destroy({
            where: {
                idOrder: idOrder
            }
        });

        const deletedOrder = await Orders.findOne({
            where: {
                idOrder: idOrder
            }
        });

        expect(deletedOrder).toBeNull();
    });
});
