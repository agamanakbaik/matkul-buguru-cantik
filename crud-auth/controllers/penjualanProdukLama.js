const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/userModel');
const Penjualan_Produk_Lama = require('../models/PenjualanProdukLama');

const secret = 'rahasia';

/**exports.register = (req, res) => {
  const { name, email, password } = req.body;
  const hashed = bcrypt.hashSync(password, 10);
  const newUser = { name, email, password: hashed };

  User.create(newUser, (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'User registered' });
  });
};

exports.login = (req, res) => {
  const { email, password } = req.body;

  User.findByEmail(email, (err, results) => {
    if (err || results.length === 0) return res.status(400).json({ message: 'User not found' });

    const user = results[0];
    const match = bcrypt.compareSync(password, user.password);
    if (!match) return res.status(401).json({ message: 'Invalid credentials' });

    const token = jwt.sign({ id: user.id, email: user.email }, secret, { expiresIn: '1d' });
    res.json({ token });
  });
};
**/
exports.getAll = (req, res) => {
  Penjualan_Produk_Lama.findAll((err, Penjualan_Produk_Lamas) => {
    if (err) return res.status(500).json(err);
    res.json(Penjualan_Produk_Lamas);
  });
};

exports.getOne = (req, res) => {
  Penjualan_Produk_Lama.findById(req.params.id, (err, Penjualan_Produk_Lamas) => {
    if (err || Penjualan_Produk_Lamas.length === 0) return res.status(404).json({ message: 'Penjualan Produk Lama not found' });
    res.json(Penjualan_Produk_Lamas[0]);
  });
};

exports.update = (req, res) => {
  Penjualan_Produk_Lama.update(req.params.id, req.body, (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Penjualan Produk Lama updated' });
  });
};

exports.remove = (req, res) => {
  Penjualan_Produk_Lama.delete(req.params.id, (err) => {
    if (err) return res.status(500).json(err);
    res.json({ message: 'Penjualan Produk Lama deleted' });
  });
};