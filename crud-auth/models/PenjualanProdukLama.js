const db = require('../config/db');

const Penjualan_Produk_Lama = {
  create: (data, callback) => {
    const sql = 'INSERT INTO penjualan_produk_lama SET ?';
    db.query(sql, data, callback);
  },
  findByUserId: (user_id, callback) => {
    const sql = 'SELECT * FROM penjualan_produk_lama WHERE user_id = ?';
    db.query(sql, [user_id], callback);
  },
  findAll: (callback) => {
    db.query('SELECT * FROM penjualan_produk_lama', callback);
  },
  findById: (id, callback) => {
    db.query('SELECT * FROM penjualan_produk_lama WHERE id = ?', [id], callback);
  },
  update: (id, data, callback) => {
    db.query('UPDATE penjualan_produk_lama SET ? WHERE id = ?', [data, id], callback);
  },
  delete: (id, callback) => {
    db.query('DELETE FROM penjualan_produk_lama WHERE id = ?', [id], callback);
  }
};

module.exports = Penjualan_Produk_Lama;