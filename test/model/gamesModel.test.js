import Games from "../../src/models/gamesModel.js";
import Courts from "../../src/models/courtsModel.js";
import Users from "../../src/models/usersModel.js";
import sequelize from "../../src/config/sequelize.js";

describe("Tests de modelo de juegos", () => {
    let idCourt = null;
    let idUser1Team1 = null;
    let idUser2Team1 = null;
    let idUser1Team2 = null;
    let idUser2Team2 = null;
    let idGameDetail = null;

    // Antes de todos los tests, crea un club, canchas y juegos asociando usuarios existentes
    beforeAll(async () => {
        // Crear un club (puedes ajustar esto según tus necesidades)
        const court = await Courts.create({
            // Ajusta estos valores según tu lógica de prueba
            idClub: 1,
            courtName: "Cancha 1",
            courtType: "Exterior",
            wallType: "Cristal",
            widthType: "Normal",
        });
        idCourt = court.idCourt;

        // Obtener usuarios existentes de la base de datos
        const users = await Users.findAll({ where: { idUser: [1, 2, 3, 4] } });

        // Asignar IDs de usuarios para equipos y juegos
        idUser1Team1 = users[0].idUser;
        idUser2Team1 = users[1].idUser;
        idUser1Team2 = users[2].idUser;
        idUser2Team2 = users[3].idUser;
    });

    // Después de todos los tests, elimina los juegos, canchas creados
    afterAll(async () => {
        await Courts.destroy({
            where: {
                idCourt: idCourt
            }
        });

        await sequelize.close();
    });

    test("Crear un nuevo juego", async () => {
        const game = await Games.create({
            idCourt: idCourt,
            idUser1Team1: idUser1Team1,
            idUser2Team1: idUser2Team1,
            idUser1Team2: idUser1Team2,
            idUser2Team2: idUser2Team2,
            status: "En Progreso",
            booking: "Reservado",
            typeOfGame: "Dobles",
        });

        expect(game).not.toBeUndefined();
        expect(game).not.toBeNull();
        expect(game.idGameDetail).toBeDefined();
        expect(game.idCourt).toEqual(idCourt);
        expect(game.idUser1Team1).toEqual(idUser1Team1);
        expect(game.idUser2Team1).toEqual(idUser2Team1);
        expect(game.idUser1Team2).toEqual(idUser1Team2);
        expect(game.idUser2Team2).toEqual(idUser2Team2);
        expect(game.status).toEqual("En Progreso");
        expect(game.booking).toEqual("Reservado");
        expect(game.typeOfGame).toEqual("Dobles");

        idGameDetail = game.idGameDetail;
    });

    test("Conseguir todos los juegos", async () => {
        const games = await Games.findAll({
            where: {
                idCourt: idCourt
            }
        });

        expect(games.length).toBeGreaterThan(0);
        expect(games[0]).toHaveProperty("idGameDetail");
        expect(games[0]).toHaveProperty("idCourt");
        expect(games[0]).toHaveProperty("idUser1Team1");
        expect(games[0]).toHaveProperty("idUser2Team1");
        expect(games[0]).toHaveProperty("idUser1Team2");
        expect(games[0]).toHaveProperty("idUser2Team2");
        expect(games[0]).toHaveProperty("status");
        expect(games[0]).toHaveProperty("booking");
        expect(games[0]).toHaveProperty("typeOfGame");
    });

    test("Conseguir un juego por ID", async () => {
        const foundGame = await Games.findOne({
            where: {
                idGameDetail: idGameDetail
            }
        });

        expect(foundGame).not.toBeUndefined();
        expect(foundGame).not.toBeNull();
        expect(foundGame.idGameDetail).toEqual(idGameDetail);
        expect(foundGame.idCourt).toEqual(idCourt);
        expect(foundGame.idUser1Team1).toEqual(idUser1Team1);
        expect(foundGame.idUser2Team1).toEqual(idUser2Team1);
        expect(foundGame.idUser1Team2).toEqual(idUser1Team2);
        expect(foundGame.idUser2Team2).toEqual(idUser2Team2);
        expect(foundGame.status).toEqual("En Progreso");
        expect(foundGame.booking).toEqual("Reservado");
        expect(foundGame.typeOfGame).toEqual("Dobles");
    });

    test("Editar un juego por ID", async () => {
        const foundGame = await Games.findOne({
            where: {
                idGameDetail: idGameDetail
            }
        });

        foundGame.status = "Terminado";
        foundGame.booking = "No Reservado";
        foundGame.typeOfGame = "Individual";

        await foundGame.save();

        const updatedGame = await Games.findOne({
            where: {
                idGameDetail: idGameDetail
            }
        });

        expect(updatedGame).not.toBeUndefined();
        expect(updatedGame).not.toBeNull();
        expect(updatedGame.status).toEqual("Terminado");
        expect(updatedGame.booking).toEqual("No Reservado");
        expect(updatedGame.typeOfGame).toEqual("Individual");
    });

    test("Borrar un juego por ID", async () => {
        await Games.destroy({
            where: {
                idGameDetail: idGameDetail
            }
        });

        const deletedGame = await Games.findOne({
            where: {
                idGameDetail: idGameDetail
            }
        });

        expect(deletedGame).toBeNull();
    });
});
