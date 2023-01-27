const http = require('http');
const fs = require('fs');
const url = require('url');

const indexPage = fs.readFileSync('./index.html', 'UTF-8');
const otherPage1 = fs.readFileSync('./seito.html', 'UTF-8');
const otherPage2 = fs.readFileSync('./sensei.html', 'UTF-8');
const loginPage = fs.readFileSync('./login.html', 'UTF-8');
const testPage = fs.readFileSync('./test.html', 'UTF-8');
const styleCss = fs.readFileSync('./index.css', 'UTF-8');
const scriptJs = fs.readFileSync('./js/test.js', 'UTF-8');
const login = fs.readFileSync('./js/login.js', 'UTF-8');
const home = fs.readFileSync('./home.html', 'UTF-8');

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
    case '/index.html':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(indexPage);
      res.end();
      break;

    case '/login':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(loginPage);
      res.end();
      break;
    
    case '/seito.html':
    	res.writeHead(200, {'Content-Type': 'text/html'});
    	res.write(otherPage1);
      res.end();
      break;

    case '/sensei.html':
    	res.writeHead(200, {'Content-Type': 'text/html'});
    	res.write(otherPage2);
      res.end();
      break;
    
    case '/home.html':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(home);
      res.end();
      break;

    case '/test.html':
      res.writeHead(200, {'Content-Type': 'text/html'});
      res.write(testPage);
      res.end();
      break;

    case '/css/index.css':
    	res.writeHead(200, {'Content-Type': 'text/css'});
   	 	res.write(styleCss);
    	res.end();
    	break;

    case '/js/test.js':
    	res.writeHead(200, {'Content-Type': 'text/plain'});
    	res.write(scriptJs);
    	res.end();
    	break;

      case '/js/login.js':
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.write(login);
        res.end();
        break;

    default:
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.end('お探しのページは見つかりません。');
      break;
  }
}
