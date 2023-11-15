import orderDetailModel from "../../src/models/orderDetailModel.js";
import Orders from "../../src/models/ordersModel.js";
import Products from "../../src/models/productsModel.js";
import sequelize from "../../src/config/sequelize.js";

describe("Tests de modelo de detalles de órdenes", () => {
    let idOrderDetail = null;

    // Antes de todos los tests, obtén un detalle de orden existente de la base de datos con ID 1
    beforeAll(async () => {
        // Obtener un detalle de orden existente de la base de datos con ID 1
        const existingOrderDetail = await orderDetailModel.findOne({
            where: {
                idOrder: 1
            }
        });
        idOrderDetail = existingOrderDetail.idOrder;
    });

    test("Obtener un detalle de orden existente", async () => {
        // No es necesario crear un nuevo orderDetail, ya que lo estamos obteniendo de la base de datos
        const orderDetail = await orderDetailModel.findByPk(idOrderDetail);

        expect(orderDetail).not.toBeUndefined();
        expect(orderDetail).not.toBeNull();
        expect(orderDetail.idOrder).toEqual(1); // Ajusta según tus necesidades
        // Puedes agregar más expectativas según la estructura de tu modelo
    });

    // Resto de los tests permanecen igual o puedes agregar más según tus necesidades
});
