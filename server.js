const http = require('http');
const handleRequest = (request, response) => {
  console.log('Received request for URL: ' + request.url);
  response.writeHead(200);
  response.end(`host: ${process.env.HOSTNAME} name: ${process.env.NAME}`);
};
const www = http.createServer(handleRequest);
console.log("listening :8080")
www.listen(8080);
