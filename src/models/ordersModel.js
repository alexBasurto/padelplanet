import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import usersModel from "./usersModel.js"; // Asegúrate de importar el modelo de usuarios
import orderDetailModel from "./orderDetailModel.js";

const ordersModel = sequelize.define("tbOrders", {
    idOrder: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    idUser: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: usersModel,
            key: "idUser",
        },
    },
}, {
    tableName: 'tbOrders',
    timestamps: false,
    underscored: false,
});

// Definir relación con el modelo de usuarios
ordersModel.belongsTo(usersModel, {
    foreignKey: 'idUser',
    as: 'user',
});

// Definir relación con el modelo de pedidos
ordersModel.hasMany(orderDetailModel, {
    foreignKey: 'idOrder',
});

export default ordersModel;
