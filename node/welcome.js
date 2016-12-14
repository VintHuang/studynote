var http = require('http');

http.createServer(function (request, respone) {
    respone.writeHead(200, {'Content-Type':'text/plain'});

    var buf = new Buffer("welcome");
    // buf.write();
    var json = buf.toJSON(buf);
    respone.write(json);
    // respone.end("welcome1");
    respone.end();

}).listen(8888);

console.log("Server running at http://www.wencai.name:8888/");