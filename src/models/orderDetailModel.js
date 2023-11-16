import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import ordersModel from "./ordersModel.js"; // Asegúrate de importar el modelo de órdenes
import productsModel from "./productsModel.js"; // Asegúrate de importar el modelo de productos

const orderDetailModel = sequelize.define("tbOrderDetail", {
    idOrder: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        references: {
            model: ordersModel,
            key: "idOrder",
        },
    },
    idProduct: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        references: {
            model: productsModel,
            key: "idProduct",
        },
    },
    quantity: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    comments: {
        type: DataTypes.STRING(200),
        collate: "pg_catalog.default",
    },
}, {
    tableName: 'tbOrderDetail',
    timestamps: false,
    underscored: false,
});

orderDetailModel.belongsTo(ordersModel, {
    foreignKey: "idOrder",
    as: "order",
});

ordersModel.hasMany(orderDetailModel, {
    foreignKey: "idOrder",
});

orderDetailModel.belongsTo(productsModel, {
    foreignKey: "idProduct",
    as: "product",
});

productsModel.hasMany(orderDetailModel, {
    foreignKey: "idUser",
});

export default orderDetailModel;
