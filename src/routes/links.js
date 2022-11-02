const express = require('express');
const router = express.Router();

const pool = require('../database');

router.get('/add', (req, res)=>{
    res.render('links/add');
});

router.post('/add',  async (req,res)=>{
    const {Nombre, Fecha_Nacimiento, Raza, Peso} = req.body;
    const newPet = {
        Nombre,
        Fecha_Nacimiento,
        Raza,
        Peso
    };
    await pool.query('INSERT INTO MASCOTAS set ?', [newPet]);
    res.redirect('/links');
});

router.get('/', async (req, res)=>{
    const pets = await pool.query('SELECT * FROM MASCOTAS');
    console.log(pets);
    res.render('links/list', {pets});
});

router.get('/delete/:id', async (req, res) => {
    const {id} = req.params;
    await pool.query('DELETE FROM MASCOTAS WHERE ID = ?', [id]);
    res.redirect('/links');
});
 
module.exports = router;