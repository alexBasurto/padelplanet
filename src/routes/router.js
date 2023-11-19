// Importa el módulo "Router" desde "express" para definir rutas.
import { Router } from "express";

import clubsRouter from "./clubsRouter.js"
import authRouter from "./authRouter.js";
import apisRouter from "./apisRouter.js";

// Crea una instancia de Router para definir rutas.
const router = Router();

// Ruta clubs
router.use("/clubs",clubsRouter);

// Ruta para APIs
router.use("/api", apisRouter);

//Creamos ruta para login
router.use("/",authRouter);

// Exporta el objeto de rutas para su uso en la aplicación.
export default router;