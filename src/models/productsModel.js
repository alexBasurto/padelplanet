import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";

const productsModel = sequelize.define("tbProducts", {
    idProduct: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    productName: {
        type: DataTypes.STRING(200),
        allowNull: false,
    },
    brand: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    image: {
        type: DataTypes.TEXT,
    },
    price: {
        type: DataTypes.INTEGER,
    },
    finalPrice: {
        type: DataTypes.INTEGER,
    }
},
    {
        tableName: 'tbProducts',
        timestamps: false, // Si no tienes campos createdAt y updatedAt en tu tabla
        underscored: false, // Utiliza el estilo de nomenclatura snake_case para las columnas
})

//pendiente definir relaciones

export default productsModel;
