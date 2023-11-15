import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";

const usersModel = sequelize.define("tbUsers", {
    idUser: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    userName: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    userEmail: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    level: {
        type: DataTypes.INTEGER,
    },
    favHand: {
        type: DataTypes.STRING(10),
    },
    courtPos: {
        type: DataTypes.STRING(10),
    },
    gameType: {
        type: DataTypes.STRING(10),
    },
    favSchedule: {
        type: DataTypes.STRING(10),
    },
    password: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    photo: {
        type: DataTypes.TEXT,
        allowNull: true,
    }
},
    {
        tableName: 'tbUsers',
        timestamps: false, // Si no tienes campos createdAt y updatedAt en tu tabla
        underscored: false, // Utiliza el estilo de nomenclatura snake_case para las columnas
})

//pendiente definir relaciones

export default usersModel;
