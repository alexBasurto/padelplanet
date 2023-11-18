import { Router } from "express";

import authController from "../controllers/authController.js"

const router = Router();

router.get("/login",(req,res)=>{
    authController.loginForm(req,res);
})

router.post("/login",(req,res)=>{
    console.log("REQ BODY", req.body, req.body.email, req.body.password);
    authController.login(req,res);
})

/* router.get("/register",(req,res)=>{
    authController.registerForm(req,res);
})

router.post("/register",(req,res)=>{
    authController.register(req,res);
}) */

router.get("/logout",authController.logout)

export default router;