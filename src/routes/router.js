// Importa el módulo "Router" desde "express" para definir rutas.
import { Router } from "express";

import clubsRouter from "./clubsRouter.js"

// Crea una instancia de Router para definir rutas.
const router = Router();

// Ruta clubs
router.use("/clubs",clubsRouter);

// Exporta el objeto de rutas para su uso en la aplicación.
export default router;