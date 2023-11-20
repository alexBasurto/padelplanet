import usersModel from "../models/usersModel.js";

// Middleware de autenticación que verifica si un usuario ha iniciado sesión.
const isAuthenticated = (req, res, next) => {

    if (req.session.user) {
        //console log de fondo azul mostrando req.session.user
        console.log("\x1b[44m%s\x1b[0m", "llega aquí ", req.session);
        // Si existe una sesión de usuario, se considera autenticado.
        next(); // Llama a la siguiente función en la cadena de middleware.
    } else {
        // Si no existe una sesión de usuario, se redirige al usuario a la página de inicio de sesión.
        res.redirect("/login");
    }
}

const isAdmin = async (req,res,next) =>{
    if(req.session.user ){
        try {
            const user = await usersModel.findByPk(req.session.user);
            
            if (user && user.admin === 1) {
                 //console log de fondo azul mostrando req.session.user
                console.log("\x1b[44m%s\x1b[0m", "3. IS ADMIN: req.session: ", req.session);
                // El usuario tiene permisos de administrador, permite el acceso.
                next();
            } else {
                // El usuario no es un administrador, redirige a la página de inicio de sesión.
                res.redirect("/login");
            }
        } catch (error) {
            // Maneja errores de la consulta a la base de datos, si los hay.
            console.error("Error al buscar al usuario en la base de datos:", error);
            res.redirect("/error"); // Puedes redirigir a una página de error personalizada.
        }
    } else {
        // Si no hay sesión de usuario, redirige a la página de inicio de sesión.
        res.redirect("/login");
    }
}
// Exporta el middleware de autenticación.
export {
    isAuthenticated,
    isAdmin
};
