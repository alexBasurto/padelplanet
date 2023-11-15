import User from "../../src/models/usersModel.js";

describe("Tests de modelo de usuario(s)",() => {
    let idUser = null;
    const userName = "Pedro";
    const userEmail = "pedro@siliconvalley.com";
    const level = 8;
    const favHand = "Derecha";
    const courtPos = "Derecha";
    const gameType = "Competi";
    const favSchedule = "Tardes";
    const password = "jfdsoiajfajfsajfoisajoifjpa";
    const photo = "mifoto.jpg";

    test("Crear un usuario nuevo", async () => {
        console.log(userName, userEmail, level, favHand, courtPos, gameType, favSchedule, password, photo);
        const user = await User.create({userName, userEmail, level, favHand, courtPos, gameType, favSchedule, password, photo});
        expect(user).not.toBeUndefined();
        expect(user).not.toBeNull();
        expect(user.userName).toEqual(userName);
        expect(user.userEmail).toEqual(userEmail);
        expect(user.level).toEqual(level);
        expect(user.favHand).toEqual(favHand);
        expect(user.courtPos).toEqual(courtPos);
        expect(user.gameType).toEqual(gameType);
        expect(user.favSchedule).toEqual(favSchedule);
        expect(user.password).toEqual(password);
        expect(user.photo).toEqual(photo);
        idUser = user.idUser;
    });

    test("Conseguir todos los usuarios", async() => {
        const usuarios = await User.findAll();
        expect(usuarios.length).toBeGreaterThan(0);
        expect(usuarios[0]).toHaveProperty("userName");
        expect(usuarios[0]).toHaveProperty("userEmail");
        expect(usuarios[0]).toHaveProperty("level");
        expect(usuarios[0]).toHaveProperty("favHand");
        expect(usuarios[0]).toHaveProperty("courtPos");
        expect(usuarios[0]).toHaveProperty("gameType");
        expect(usuarios[0]).toHaveProperty("favSchedule");
        expect(usuarios[0]).toHaveProperty("password");
        expect(usuarios[0]).toHaveProperty("photo");
    });

    test("Conseguir un usuario por ID", async() => {
        const usuario = await User.findOne({
            where: {
                idUser: idUser
            }
        });
        expect(usuario).not.toBeUndefined();
        expect(usuario).not.toBeNull();
        expect(usuario.userName).toEqual(userName);
        expect(usuario.userEmail).toEqual(userEmail);
        expect(usuario.level).toEqual(level);
        expect(usuario.favHand).toEqual(favHand);
        expect(usuario.courtPos).toEqual(courtPos);
        expect(usuario.gameType).toEqual(gameType);
        expect(usuario.favSchedule).toEqual(favSchedule);
        expect(usuario.password).toEqual(password);
        expect(usuario.photo).toEqual(photo);
    })

    test("Editar un usuario por ID", async() => {
        const usuario = await User.findOne({
            where: {
                idUser: idUser
            }
        });
        usuario.userName = "Jaime";;
        usuario.userEmail = "jaime@mail.com";
        usuario.level = 5;
        await usuario.save();
        const usuarioNuevo =  await User.findOne({
            where: {
                idUser: idUser
            }
        });
        expect(usuarioNuevo).not.toBeUndefined();
        expect(usuarioNuevo).not.toBeNull();
        expect(usuarioNuevo.userName).toEqual("Jaime");
        expect(usuarioNuevo.userEmail).toEqual("jaime@mail.com");
        expect(usuarioNuevo.level).toEqual(5);
    })

    test("Borrar un usuario por ID", async() => {
        await User.destroy({
            where: {
                idUser: idUser
            }
        });
        const oldUser = await User.findOne({
            where: {
                idUser: idUser
            }
        });
        expect(oldUser).toBeNull();

    })
})