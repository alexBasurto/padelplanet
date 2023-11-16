import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";

const clubsModel = sequelize.define("tbClubs", {
    idClub: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    clubName: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    address: {
        type: DataTypes.STRING(200),
        allowNull: false,
    },
    comments: {
        type: DataTypes.STRING(200),
    },
    photo: {
        type: DataTypes.TEXT,
    }
},
    {
        tableName: 'tbClubs',
        timestamps: false, // Si no tienes campos createdAt y updatedAt en tu tabla
        underscored: false, // Utiliza el estilo de nomenclatura snake_case para las columnas
})

export default clubsModel;