// Modified problem from here
// https://stackoverflow.com/questions/750486/javascript-closure-inside-loops-simple-practical-example
function getFunctions() {
	var functions = [];
	for(var i=0; i<5; i++) {
		var test = (function (j) {return function(){return j;}})(i);
		functions.push(test);
	}
	return functions;
}

var f = getFunctions();
for(var j=0; j<f.length; j++)
	console.log(f[j]());