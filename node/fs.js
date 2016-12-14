/*var fs = require("fs");

// var data = fs.readFileSync('input.txt');

// console.log(data.toString());

fs.readFile('input.txt',function (msg,data) {
	if (msg) {
		return console.error(msg)
	}
	console.log(data.toString());
});

console.log("运行结束");
*/
var eventObj = require("events");
var emitter = new eventObj.EventEmitter();
emitter.on('some_event',function() {
	console.log('some_event事件触发')
});

setTimeout(function(){
	emitter.emit('some_event');
},1000);