import sequelize from "../../src/config/sequelize.js";

describe("Pruebas de conexión con la base de datos", () => {
    test("Conexión exitosa con la base de datos", async () => {
        await expect(sequelize.authenticate()).resolves.not.toThrow();
    });
});
