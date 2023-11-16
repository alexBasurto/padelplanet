import { Op } from "sequelize";

import clubsModel from "../models/clubsModel.js";
import courtsModel from "../models/courtsModel.js";

const getAll = async (clubsSearch = null) => {
    const options = {};
    if (clubsSearch) {
        options.where = {
            clubName: { [Op.like]: `%${clubsSearch}%` },
        };
    }
    try {
        const clubs = await clubsModel.findAll(options);
        return [null, clubs];
    } catch (e) {
        return [e.message, null];
    }
};


const getById = async (id) => {
    const options = {};
    try {
        const club = await clubsModel.findByPk(id, options);
        return [null, club];
    } catch (e) {
        return [e.message, null];
    }
};

const create = async (clubName, address, comments, photo) => {
    if (clubName === undefined || address === undefined) {
        const error = "Rellene todos los campos obligatorios.";
        return [error, null];
    }
    try {
        const club = await clubsModel.create({
            clubName, address, comments, photo
        });
        return [null, club];
    } catch (e) {
        return [e.message, null];
    }
};

const update = async (idClub, clubName, address, comments, photo) => {
    if (idClub == undefined) {
        const error = "Tienes que especificar un ID válido";
        return [error, null];
    }
    if (clubName === undefined || address === undefined) {
        const error =
            "Los campos nombre y domicilio son obligatorios.";
        return [error, null];
    }
    try {
        const club = await clubsModel.findByPk(idClub);
        club.clubName = clubName;
        club.address = address;
        club.comments = comments;
        club.photo = photo;
        club.save();
        return [null, club];
    } catch (e) {
        console.log(e);
        return [e.message, null];
    }
};

const remove = async (idClub) => {
    try {
        const club = await clubsModel.findByPk(idClub);
        if (!club) {
            const error = "No se ha encontrado ningún club con ese ID.";
            return [error, null];
        }
        const checkCourts = await courtsModel.count({
            where: { idclub: club.idclub },
        });
        if (checkCourts > 0) {
            const error = `No se puede borrar. Existe(n) ${checkCourts} pistas(s) de este club. Borre las pistas primero.`;
            return [error, null];
        }
        club.destroy();
        return [null, club];
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