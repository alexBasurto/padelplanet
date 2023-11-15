import Club from "../../src/models/clubsModel.js";

describe("Tests de modelo de clubes", () => {
    let idClub = null;
    const clubName = "Club de Pádel";
    const address = "Calle Principal, Ciudad";
    const comments = "Buenas instalaciones para jugar pádel";
    const photo = "club_photo.jpg";

    test("Crear un nuevo club", async () => {
        const club = await Club.create({ clubName, address, comments, photo });
        expect(club).not.toBeUndefined();
        expect(club).not.toBeNull();
        expect(club.clubName).toEqual(clubName);
        expect(club.address).toEqual(address);
        expect(club.comments).toEqual(comments);
        expect(club.photo).toEqual(photo);
        idClub = club.idClub;
    });

    test("Conseguir todos los clubes", async () => {
        const clubs = await Club.findAll();
        expect(clubs.length).toBeGreaterThan(0);
        expect(clubs[0]).toHaveProperty("clubName");
        expect(clubs[0]).toHaveProperty("address");
        expect(clubs[0]).toHaveProperty("comments");
        expect(clubs[0]).toHaveProperty("photo");
    });

    test("Conseguir un club por ID", async () => {
        const foundClub = await Club.findOne({
            where: {
                idClub: idClub
            }
        });
        expect(foundClub).not.toBeUndefined();
        expect(foundClub).not.toBeNull();
        expect(foundClub.clubName).toEqual(clubName);
        expect(foundClub.address).toEqual(address);
        expect(foundClub.comments).toEqual(comments);
        expect(foundClub.photo).toEqual(photo);
    });

    test("Editar un club por ID", async () => {
        const foundClub = await Club.findOne({
            where: {
                idClub: idClub
            }
        });
        foundClub.clubName = "Club de Padel";
        foundClub.address = "Otra Calle, Otra Ciudad";
        foundClub.comments = "Excelentes pistas de padel";
        await foundClub.save();
        const updatedClub = await Club.findOne({
            where: {
                idClub: idClub
            }
        });
        expect(updatedClub).not.toBeUndefined();
        expect(updatedClub).not.toBeNull();
        expect(updatedClub.clubName).toEqual("Club de Padel");
        expect(updatedClub.address).toEqual("Otra Calle, Otra Ciudad");
        expect(updatedClub.comments).toEqual("Excelentes pistas de padel");
    });

    test("Borrar un club por ID", async () => {
        await Club.destroy({
            where: {
                idClub: idClub
            }
        });
        const deletedClub = await Club.findOne({
            where: {
                idClub: idClub
            }
        });
        expect(deletedClub).toBeNull();
    });
});
