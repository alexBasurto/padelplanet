// Importa los módulos necesarios: express, dotenv (para cargar variables de entorno) y express-session.
import express from "express";
import dotenv from "dotenv";
import session from "express-session";

// Importa el módulo de enrutador definido en "router.js".
import router from "./routes/router.js";


// Carga las variables de entorno desde un archivo ".env".
dotenv.config();

// Crea una instancia de ExpressJS
const app = express();

app.use(session({
    secret: process.env.SESSION_SECRET,
    resave:false,
    saveUninitialized:false,
    cookie: {
        secure:false,
        maxAge: 1000 * 60 * 20
    }
}))

// Configura el middleware para servir archivos estáticos desde el directorio "public".
app.use(express.static("public"));
//Vistas

app.set('views', './src/views');
app.set('view engine', 'pug');

app.use(express.json());
app.use(express.urlencoded({extended:true}));

app.get("/",(req,res)=>{
    res.send("Servidor web en marcha en puerto 3000.");
});

app.use("/",router);

// Inicia el servidor en el puerto 3006 y muestra un mensaje en la consola
app.listen(3000, () => console.log("Servidor web en marcha en puerto 3000."));

