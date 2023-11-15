import { DataTypes } from "sequelize";
import sequelize from "../config/sequelize.js";
import courtsModel from "./courtsModel.js"; // Asegúrate de importar el modelo de canchas
import usersModel from "./usersModel.js"; // Asegúrate de importar el modelo de usuarios

const gamesModel = sequelize.define("tbGames", {
    idGameDetail: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    idCourt: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: courtsModel,
            key: "idCourt",
        },
    },
    idUser1Team1: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: usersModel,
            key: "idUser",
        },
    },
    idUser2Team1: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: usersModel,
            key: "idUser",
        },
    },
    idUser1Team2: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: usersModel,
            key: "idUser",
        },
    },
    idUser2Team2: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: usersModel,
            key: "idUser",
        },
    },
    status: {
        type: DataTypes.STRING(25),
        allowNull: false,
    },
    booking: {
        type: DataTypes.STRING(25),
        allowNull: false,
    },
    set1result: {
        type: DataTypes.STRING(10),
    },
    set2result: {
        type: DataTypes.STRING(10),
    },
    set3result: {
        type: DataTypes.STRING(10),
    },
    typeOfGame: {
        type: DataTypes.STRING(25),
        allowNull: false,
    },
}, {
    tableName: 'tbGames',
    timestamps: false,
    underscored: false,
});

// Definir relaciones con modelos de canchas y usuarios
gamesModel.belongsTo(courtsModel, {
    foreignKey: 'idCourt',
    as: 'court',
});

gamesModel.belongsTo(usersModel, {
    foreignKey: 'idUser1Team1',
    as: 'user1Team1',
});

gamesModel.belongsTo(usersModel, {
    foreignKey: 'idUser2Team1',
    as: 'user2Team1',
});

gamesModel.belongsTo(usersModel, {
    foreignKey: 'idUser1Team2',
    as: 'user1Team2',
});

gamesModel.belongsTo(usersModel, {
    foreignKey: 'idUser2Team2',
    as: 'user2Team2',
});

export default gamesModel;
