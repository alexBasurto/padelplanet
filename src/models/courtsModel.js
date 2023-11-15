import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import clubsModel from "./clubsModel.js"; // Asegúrate de importar el modelo del club

const courtsModel = sequelize.define("tbCourts", {
    idCourt: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    idClub: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: clubsModel,
            key: "idClub",
        },
    },
    courtName: {
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    courtType: {
        type: DataTypes.STRING(25),
        allowNull: false,
    },
    wallType: {
        type: DataTypes.STRING(25),
        allowNull: false,
    },
    widthType: {
        type: DataTypes.STRING(25),
        allowNull: false,
    }
},
    {
        tableName: 'tbCourts',
        timestamps: false, // Si no tienes campos createdAt y updatedAt en tu tabla
        underscored: false, // Utiliza el estilo de nomenclatura snake_case para las columnas
})

//pendiente definir relaciones

export default courtsModel;
