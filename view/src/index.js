const http = require('http');
const fs = require('fs');
const url = require('url');

const loginPage = fs.readFileSync('./login.html', 'UTF-8');
const testPage = fs.readFileSync('./test.html', 'UTF-8');
const styleCss = fs.readFileSync('./index.css', 'UTF-8');
const tableCss = fs.readFileSync('./table.css', 'UTF-8');
const Css = fs.readFileSync('./style.css', 'UTF-8');
const login = fs.readFileSync('./js/login.js', 'UTF-8');
const jsQR = fs.readFileSync('./js/jsQR.js', 'UTF-8');
const QRreadjs = fs.readFileSync('./js/QRreader.js', 'UTF-8');
const QRviews = fs.readFileSync('./js/view.js', 'UTF-8');
const home = fs.readFileSync('./home.html', 'UTF-8');
const attend = fs.readFileSync('./attend.html', 'UTF-8');
const QRread = fs.readFileSync('./QRread.html', 'UTF-8');
const check = fs.readFileSync('./check.html', 'UTF-8');

const hostname = '0.0.0.0'; //ローカル なら "127.0.0.1"
const port = 8000;

const server = http.createServer(RouteSetting);

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

function RouteSetting(req, res) {
  const url_parts = url.parse(req.url);
  switch (url_parts.pathname) {
    case '/':
    case '/login':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(loginPage);
      res.end();
      break; 

    case '/check':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(check);
      res.end();
      break;  
    
    case '/attend':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(attend);
      res.end();
      break;  

    case '/QRread':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(QRread);
      res.end();
      break;
    
    case '/home':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(home);
      res.end();
      break;

    case '/test':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(testPage);
      res.end();
      break;

    case '/index.css':
    	res.writeHead(200, {'Content-Type': 'text/css'});
   	 	res.write(styleCss);
    	res.end();
    	break;
    
    case '/style.css':
      res.writeHead(200, {'Content-Type': 'text/css'});
        res.write(Css);
      res.end();
      break;

    case '/table.css':
      res.writeHead(200, {'Content-Type': 'text/css'});
        res.write(tableCss);
      res.end();
      break;

    case '/js/login.js':
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write(login);
      res.end();
      break;
    
    case '/jsQR.js':
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write(jsQR);
      res.end();
      break;

    case '/QRreader.js':
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write(QRreadjs);
      res.end();
      break;
    
    case '/view.js':
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write(QRviews);
      res.end();
      break;  

    case '/photo/logo.png':  //　←　アドレスは任意。本当はuuidとか使うのがいいのかもしれませんが。
      res.writeHead(200, {
      'Content-Type': `image/png; charset=utf-8`  //　← ここがキモ！
      });
      var image = fs.readFileSync("./photo/logo.png", "binary"); // ← ファイルpathはその環境に合わせてください
      res.end(image, "binary");
      break;
    
    case '/photo/back.png':  //　←　アドレスは任意。本当はuuidとか使うのがいいのかもしれませんが。
      res.writeHead(200, {
      'Content-Type': `image/png; charset=utf-8`  //　← ここがキモ！
      });
      var image = fs.readFileSync("./photo/back.png", "binary"); // ← ファイルpathはその環境に合わせてください
      res.end(image, "binary");
      break;
    
    case '/photo/home.png':  //　←　アドレスは任意。本当はuuidとか使うのがいいのかもしれませんが。
      res.writeHead(200, {
      'Content-Type': `image/png; charset=utf-8`  //　← ここがキモ！
      });
      var image = fs.readFileSync("./photo/home.png", "binary"); // ← ファイルpathはその環境に合わせてください
      res.end(image, "binary");
      break;

    default:
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.end('お探しのページは見つかりません。');
      break;
  }
}
