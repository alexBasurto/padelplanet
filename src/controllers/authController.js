import bcrypt from "bcrypt";
import usersModel from "../models/usersModel.js";


// Controlador para el inicio de sesión.
const login = async(req,res)=>{
    const {email,password} = req.body;
    try{
        const user = await usersModel.findOne({where:{userEmail:email}})
        if(!user){
            throw new Error("credenciales incorrectas");
        }
        const hash = user.password;

        if(await bcrypt.compare(password,hash)){
            req.session.user = user.idUser;
            req.session.rol = user.admin;
        } else {
            throw new Error("Contraseña errónea.")
        }
    }
    catch(e){
        const errorUri = encodeURIComponent("credenciales incorrectas");
        return res.redirect("/login?error="+errorUri);
    }
    
    res.redirect("/");
}
// Controlador para mostrar el formulario de inicio de sesión.
const loginForm = (req,res) => {
    const errorMessage = req.query.error
    res.render("auth/login",{error:errorMessage});
}

// Controlador para cerrar sesión.
const logout = (req,res)=>{
    req.session.destroy();
    res.redirect("/login");
}

// Controlador para mostrar el formulario de registro.
const registerForm = (req,res)=>{
    const errorMessage = req.query.error;
    res.render("auth/register");
}

// Controlador para el registro de usuarios.
const register = async (req,res)=>{
    const {name,email,favHand,courtPosition,gameType,favSchedule,password,confirmPassword} = req.body;
    try {
        if(password === confirmPassword){
            const hash = await bcrypt.hash(password,10);
            const newUser = await usersModel.create({
                userName:name,
                userEmail:email,
                favHand:favHand,
                courtPos:courtPosition,
                gameType:gameType,
                favSchedule:favSchedule,
                password:hash,
                admin:0
            });
            req.session.user = newUser.idUser;
            req.session.rol = newUser.admin;
            res.redirect("/");
        } else {
            throw new Error("Las contraseñas no coinciden.")
        }
    }
    catch(e){
        const errorUri = encodeURIComponent(e.message);
        return res.redirect("/register?error="+errorUri);
    }
    
}

// Exporta los controladores relacionados con la autenticación.
export default {
    login,
    loginForm,
    logout,
    registerForm,
    register
}