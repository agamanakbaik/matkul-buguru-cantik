const express = require('express');
const router = express.Router();
//const userController = require('../controllers/userController');
const protectPenjualanProdukLama = require('../middleware/authMiddleware');
const PenjualanProdukLamaController = require('../controllers/penjualanProdukLama');

/**router.post('/register', userController.register);
router.post('/login', userController.login);**/
router.get('/PenjualanProdukLama', protectPenjualanProdukLama, PenjualanProdukLamaController.getAll);
router.get('/PenjualanProdukLama/:id', protectPenjualanProdukLama, PenjualanProdukLamaController.getOne);
router.put('/PenjualanProdukLama/:id', protectPenjualanProdukLama, PenjualanProdukLamaController.update);
router.delete('/PenjualanProdukLama/:id', protectPenjualanProdukLama, PenjualanProdukLamaController.remove);

module.exports = router;