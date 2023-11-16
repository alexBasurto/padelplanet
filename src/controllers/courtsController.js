import { Op } from "sequelize";

import courtsModel from "../models/courtsModel.js";
import gamesModel from "../models/gamesModel.js";

const getAll = async (idClub = null) => {
    const options = {};
    if (idClub) {
        options.where = {
            idClub: {[Op.eq]: idClub}
        };
    }
    try {
        const courts = await courtsModel.findAll(options);
        return [null, courts];
    } catch (e) {
        return [e.message, null];
    }
};


const getById = async (idCourt) => {
    const options = {};
    try {
        const court = await courtsModel.findByPk(idCourt, options);
        return [null, court];
    } catch (e) {
        return [e.message, null];
    }
};

const create = async (idClub, courtName, courtType, wallType, widthType) => {
    if (idClub === undefined || courtName === undefined || courtType === undefined ||  wallType === undefined ||  widthType === undefined) {
        const error = "Rellene todos los campos.";
        return [error, null];
    }
    try {
        const court = await courtsModel.create({
            idClub, courtName, courtType, wallType, widthType
        });
        return [null, court];
    } catch (e) {
        return [e.message, null];
    }
};

const update = async (idCourt, idClub, courtName, courtType, wallType, widthType) => {
    if (idCourt == undefined) {
        const error = "Tienes que especificar un ID válido";
        return [error, null];
    }
    if (idClub === undefined
        || courtName === undefined
        || courtType === undefined
        || wallType === undefined
        || widthType === undefined) {
        const error =
            "Todos los campos son obligatorios.";
        return [error, null];
    }
    try {
        const court = await courtsModel.findByPk(idCourt);
        court.idClub = idClub;
        court.courtName = courtName;
        court.courtType = courtType;
        court.wallType = wallType;
        court.widthType = widthType;
        court.save();
        return [null, court];
    } catch (e) {
        console.log(e);
        return [e.message, null];
    }
};

const remove = async (idCourt) => {
    try {
        const court = await courtsModel.findByPk(idCourt);
        if (!court) {
            const error = "No se ha encontrado ninguna pista con ese ID.";
            return [error, null];
        }
        const checkGames = await gamesModel.count({
            where: { idCourt: court.idCourt },
        });
        if (checkGames > 0) {
            const error = `No se puede borrar. Existe(n) ${checkGames} partido(s) en el histórico de esta pista.`;
            return [error, null];
        }
        court.destroy();
        return [null, court];
    } catch (e) {
        return [e.message, null];
    }
};

export default {
    getAll,
    getById,
    create,
    update,
    remove
};