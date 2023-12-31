import { Op } from "sequelize";

import clubsModel from "../models/clubsModel.js";
import courtsModel from "../models/courtsModel.js";
import gamesModel from "../models/gamesModel.js";


// funciion getAll que devuelve en JSON todos los clubes, desglosados con todas sus pistas (courts)
const getAll = async (clubsSearch) => {
// options haciendo include de courtsModel, y desde courtsMOdel haciendo include de gamesModel
// apiClubsController.js

// apiClubsController.js

const options = {
    include: [
        {
            model: courtsModel,
            attributes: [
                'idCourt',
                'courtName',
                'courtType',
                'wallType',
                'widthType',
                'idClub' // Si quieres incluir el idClub en courtsModel
            ],
            include: [
                {
                    model: gamesModel,
                    attributes: [
                        'idGameDetail',
                        'idCourt',
                        'idUser1Team1',
                        'idUser2Team1',
                        'idUser1Team2',
                        'idUser2Team2',
                        'status',
                        'booking',
                        'set1result',
                        'set2result',
                        'set3result',
                        'typeOfGame'
                    ],
                }
            ]
        }
    ],
    order: [["clubName", "ASC"]],
};


    if (clubsSearch) {
        options.where = {
            clubName: {
                [Op.iLike]: `%${clubsSearch}%`,
            },
        };
    }
    try {
        const clubs = await clubsModel.findAll(options);
        return [null, clubs];
    } catch (e) {
        return [e.message, null];
    }
}


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
            where: { idClub: club.idClub },
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