import { Router } from "express";

import apiClubsController from "../apiControllers/apiClubsController.js";
import { isAuthenticated, isAdmin } from "../middlewares/authMiddleware.js";

const router = Router();

// Ruta para obtener todos los clubs a partir de apiClubsContoller.getAll
router.get("/clubs", isAuthenticated, async (req, res) => {
    const clubsSearch = req.query.search; // Puedes obtener el parámetro de búsqueda desde la consulta (query)
    
    try {
        const [error, clubs] = await apiClubsController.getAll(clubsSearch);

        if (error) {
            return res.status(500).json({ error: "Error al obtener los clubes" });
        }

        res.json(clubs);
    } catch (e) {
        console.error("Error inesperado:", e);
        res.status(500).json({ error: "Error inesperado" });
    }
});

export default router;