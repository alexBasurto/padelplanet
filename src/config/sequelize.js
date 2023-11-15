import { Sequelize } from "sequelize";
import dotenv from "dotenv";

dotenv.config();

const sequelize = new Sequelize(
    process.env.POSTGRES_DB,
    process.env.POSTGRES_USER,
    process.env.POSTGRES_PASSWORD,
    {
        host: process.env.POSTGRES_HOST,
        port: process.env.POSTGRES_PORT,
        dialect: "postgres",
        define: {
            timestamps: false,
            freezeTableName: true,
        },
        schema: "padelplanet", // Aquí especificas el esquema
    },
);


async function probarConexion(){
    try {
        await sequelize.authenticate();
        console.log('Conexión con BBDD OK');
      } catch (error) {
        console.error('Conexión con BBDD ha FALLADO:', error);
      }
}

probarConexion();

export default sequelize;
