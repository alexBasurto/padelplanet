import Courts from "../../src/models/courtsModel.js";
import Club from "../../src/models/clubsModel.js";
import sequelize from "../../src/config/sequelize.js";

describe("Tests de modelo de canchas", () => {
    let idClub = null;
    let idCourt = null;

    // Antes de todos los tests, crea un club para asociar las canchas
    beforeAll(async () => {
        const club = await Club.create({
            clubName: "Club de Padel",
            address: "Calle Principal, Ciudad",
            comments: "Buenas instalaciones para jugar padel",
            photo: "club_photo.jpg",
        });
        idClub = club.idClub;
    });

    // Después de todos los tests, elimina el club y las canchas creadas
    afterAll(async () => {
        await Club.destroy({
            where: {
                idClub: idClub
            }
        });
        await sequelize.close();
    });

    test("Crear una nueva cancha", async () => {
        const court = await Courts.create({
            idClub: idClub,
            courtName: "Cancha 1",
            courtType: "Exterior",
            wallType: "Cristal",
            widthType: "Normal",
        });

        expect(court).not.toBeUndefined();
        expect(court).not.toBeNull();
        expect(court.idCourt).toBeDefined();
        expect(court.idClub).toEqual(idClub);
        expect(court.courtName).toEqual("Cancha 1");
        expect(court.courtType).toEqual("Exterior");
        expect(court.wallType).toEqual("Cristal");
        expect(court.widthType).toEqual("Normal");

        idCourt = court.idCourt;
    });

    test("Conseguir todas las canchas", async () => {
        const courts = await Courts.findAll({
            where: {
                idClub: idClub
            }
        });

        expect(courts.length).toBeGreaterThan(0);
        expect(courts[0]).toHaveProperty("idCourt");
        expect(courts[0]).toHaveProperty("idClub");
        expect(courts[0]).toHaveProperty("courtName");
        expect(courts[0]).toHaveProperty("courtType");
        expect(courts[0]).toHaveProperty("wallType");
        expect(courts[0]).toHaveProperty("widthType");
    });

    test("Conseguir una cancha por ID", async () => {
        const foundCourt = await Courts.findOne({
            where: {
                idCourt: idCourt
            }
        });

        expect(foundCourt).not.toBeUndefined();
        expect(foundCourt).not.toBeNull();
        expect(foundCourt.idCourt).toEqual(idCourt);
        expect(foundCourt.idClub).toEqual(idClub);
        expect(foundCourt.courtName).toEqual("Cancha 1");
        expect(foundCourt.courtType).toEqual("Exterior");
        expect(foundCourt.wallType).toEqual("Cristal");
        expect(foundCourt.widthType).toEqual("Normal");
    });

    test("Editar una cancha por ID", async () => {
        const foundCourt = await Courts.findOne({
            where: {
                idCourt: idCourt
            }
        });

        foundCourt.courtName = "Cancha 2";
        foundCourt.courtType = "Interior";
        foundCourt.wallType = "Muro";
        foundCourt.widthType = "Ancha";
        
        await foundCourt.save();

        const updatedCourt = await Courts.findOne({
            where: {
                idCourt: idCourt
            }
        });

        expect(updatedCourt).not.toBeUndefined();
        expect(updatedCourt).not.toBeNull();
        expect(updatedCourt.courtName).toEqual("Cancha 2");
        expect(updatedCourt.courtType).toEqual("Interior");
        expect(updatedCourt.wallType).toEqual("Muro");
        expect(updatedCourt.widthType).toEqual("Ancha");
    });

    test("Borrar una cancha por ID", async () => {
        await Courts.destroy({
            where: {
                idCourt: idCourt
            }
        });

        const deletedCourt = await Courts.findOne({
            where: {
                idCourt: idCourt
            }
        });

        expect(deletedCourt).toBeNull();
    });
});
