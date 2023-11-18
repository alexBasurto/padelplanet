import clubsController from "./clubsController.js";

import fs from "fs";

const getAll = async (req, res) => {
    const errorMessage = req.query.error;
    const clubsSearch = req.query.q;
    const [error, clubs] = await clubsController.getAll(clubsSearch);
    res.render("clubs/list", {
        error: error || errorMessage,
        clubs,
        session: req.session,
    });
};

const getById = async (req, res) => {
    const idClub = req.params.id;
    const [error, club] = await clubsController.getById(idClub);
    res.render("clubs/show", { error, club, session: req.session });
};

const createForm = async (req, res) => {
    const error = req.query.error;
    if (error) {
        res.redirect("/clubs");
    }
    res.render("clubs/new", { error });
};

const create = async (req, res) => {
    const { clubName, address, comments, photo } =
        req.body;
    let photoPath = null;
    if (req.file) {
        photoPath = "/images/clubs/" + req.file.filename;
    }
    const [error, club] = await clubsController.create(
        clubName,
        address,
        comments,
        photoPath
    );
    if (error) {
        const uriError = encodeURIComponent(error);
        return res.redirect(`/clubs/new?error=${uriError}`);
    }
    res.redirect("/clubs");
};

const updateForm = async (req, res) => {
    const errorMessage = req.query.error;
    const idClub = req.params.id;
    const [error, club] = await clubsController.getById(idClub);
    if (error) {
        res.redirect("/clubs");
    }
    res.render("clubs/edit", {
        error: errorMessage,
        club,
        session: req.session,
    });
};

const update = async (req, res) => {
    const idClub = req.params.id;
    const { clubName, address, comments, photo } = req.body;

    // Obtén el club existente de la base de datos
    const existingClub = await clubsController.getById(idClub);

    // Verifica si se proporciona una nueva foto, si no, mantén la foto existente
    const updatedPhoto = req.file ? "/images/clubs/" + req.file.filename : existingClub.photo;
     
    const [error, club] = await clubsController.update(
        idClub,
        clubName,
        address,
        comments,
        updatedPhoto
    );
    if (error) {
        const uriError = encodeURIComponent(error);
        return res.redirect(`/clubs/${idClub}/edit?error=${uriError}`);
    }
    res.redirect("/clubs");
};

const remove = async (req, res) => {
    const idClub = req.params.id;
    const [error, club] = await clubsController.getById(idClub);
    
    if (error) {
        return res.redirect("/clubs?error=" + encodeURIComponent(error));
    }
    const [deleteError, deletedClub] = await clubsController.remove(idClub);
    if (deleteError) {
        const uriError = encodeURIComponent(deleteError);
        return res.redirect(`/clubs?error=${uriError}`);
    } else {
    // Elimina el archivo de la foto si existe
    if (fs.existsSync(club.photo)) {
        fs.unlinkSync(club.photo, (err) => {
            if (err) {
                console.error(err);
            } else {
                console.log("File is deleted.");
            }
        });
    } else {
        console.log("File doesn't exist.")
    }
    }
    res.redirect("/clubs");
};

export default {
    getAll,
    getById,
    create,
    createForm,
    update,
    updateForm,
    remove,
};
