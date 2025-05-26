const express = require('express');
const router = express.Router();
const ProdukController = require('../controllers/produkController');
const protectProducts = require('../middleware/authMiddleware');

//router.post('/register', userController.register);
//router.post('/login', userController.login);
router.get('/produk', protectProducts, ProdukController.getAll);
router.get('/produk/:id', protectProducts, ProdukController.getOne);
router.put('/produk/:id', protectProducts, ProdukController.update);
router.delete('/produk/:id', protectProducts, ProdukController.remove);

module.exports = router;