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
        idUser = user._id;
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

/* 

    test("Conseguir un usuario por ID", async() => {
        const producto = await Product.findOne({_id:id});
        expect(producto).not.toBeUndefined();
        expect(producto).not.toBeNull();
        expect(producto.nombre).toEqual(nombre);
        expect(producto.imagen).toEqual(imagen);
        expect(producto.precio).toEqual(precio);
    })

    test("Editar un usuario por ID", async() => {
        const producto = await Product.findOne({_id:id});
        producto.nombre="Anderoid";
        producto.precio=9999;
        await producto.save();
        const productoNuevo =  await Product.findOne({_id:id});
        expect(productoNuevo).not.toBeUndefined();
        expect(productoNuevo).not.toBeNull();
        expect(productoNuevo.nombre).toEqual("Anderoid");
        expect(productoNuevo.imagen).toEqual(imagen);
        expect(productoNuevo.precio).toEqual(9999);
    })

    test("Borrar un usuario por ID", async() => {
        await Product.deleteOne({_id:id});
        const oldProduct = await Product.findOne({_id:id});
        expect(oldProduct).toBeNull();

    }) */


})