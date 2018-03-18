---
title: 使用node建立簡易http server
date: 2018-03-18 21:18:54
tags: node
---
1. 在index.html的目錄建立`server.js`檔
2. 輸入`server.js`內容
```
var http = require('http');
var fs = require('fs');
//404 response
function sent404Response(response){
        response.writeHead(404,{"Context-Type":"text/plain"});
        response.write('Error 404:Page not found!'); //write a response to the client
        response.end(); //end the response
}
//handle a user request function
function onRequest(req, res) {
        /*
        console.log("A user made a request "+ req.url);
        res.writeHead(200,{"Context-Type":"text/plain"});
        res.write('Here is some data.'); //write a response to the client
        res.end(); //end the response
        */
        if (req.method == 'GET' && req.url == '/') {
                res.writeHead(200,{"Context-Type":"text/plain"});
                fs.createReadStream("./index.html").pipe(res);//將"./index.html"傳入res參數內
        }else{
                sent404Response(res);
        }

}
//create a server object:
http.createServer(onRequest).listen(8888); //the server object listens on port 8080
console.log("Server is now running.")
```
3. 執行`server.js` `node server.js`
4. 其實最簡單的方式就是安裝`http-server`模組。
```
npm i -g http-server
```
5. 執行`http-server`即可。
