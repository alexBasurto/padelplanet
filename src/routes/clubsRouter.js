import { Router } from "express";

import clubsViewController from "../controllers/clubsViewController.js";
import {isAuthenticated, isAdmin} from "../middlewares/authMiddleware.js";
import upload from '../config/multerConfig.js'; 


const router = Router();

router.get("/", /* isAuthenticated, */ (req, res) => {
    clubsViewController.getAll(req, res);
});

router.get("/new", /* isAuthenticated, */ clubsViewController.createForm);

router.get("/:id", /* isAuthenticated, */ (req, res) => {
    clubsViewController.getById(req, res);
});

router.post("/", /* isAuthenticated, */ upload.single('photo'), (req, res) => {
    clubsViewController.create(req, res);
});

router.get("/:id/edit", /* isAuthenticated, isAdmin, */ clubsViewController.updateForm);

router.post("/:id", /* isAuthenticated, isAdmin, */upload.single('photo'), (req, res) => {
    console.log("AQUIIIII", req.file);
    clubsViewController.update(req, res);
});

router.get("/:id/delete", /* isAuthenticated, isAdmin, */ (req, res) => {
    clubsViewController.remove(req, res);
})

export default router;