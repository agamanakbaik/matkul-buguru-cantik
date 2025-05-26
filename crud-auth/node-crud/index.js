var http = require('http');
            var url = require('url');
            var qs = require('querystring');
            var db = require("./db");
            var port = 8080
            http.createServer(function (req, res) {
                var q = url.parse(req.url, true);
                
                var id = q.query.id;
                res.setHeader('Content-Type', 'application/json');
                
                if(q.pathname == "/products" && req.method === "GET"){
                	
                	if(id !== undefined){
                		//list product

                        let sql = "SELECT * FROM products";
                        db.query(sql,(err, result) => {
                            if (err) throw err;
                            
                            res.end(JSON.stringify(result));
                            
                        });

                	}else if(id > 0){
                		//get 1 product

                        let sql = "SELECT * FROM products where id = "+ id;
                    
                    db.query(sql,(err, result) => {
                        if (err) throw err;
                        
                        var product = result[0];
                        res.end(JSON.stringify(product));
                        
                    });
                	}
                    
                }
                else if(q.pathname == "/products" && req.method === "POST"){
                	//save product
                	
                }
                else if(q.pathname == "/products" && req.method === "PUT"){
                	//update product    
                	
                }
                else if(q.pathname == "/products" && req.method === "DELETE"){
                	//delete product    
                }
              
            }).listen(port);
            console.log('server is running on http://localhost:'+ port);
            
