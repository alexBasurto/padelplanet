import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';

dotenv.config();

const secretKey = process.env.SECRET_KEY;

const generarToken = (usuario) => {
    const payload = {
        id: usuario.idUser,
        email: usuario.userEmail,
        rol: usuario.admin
    };

    // Firma el token y establece su expiración (por ejemplo, 1 hora)
    const token = jwt.sign({ data: 'yourData' }, 'secretKey', { expiresIn: '1h' });
    return token;
}

export default generarToken;
