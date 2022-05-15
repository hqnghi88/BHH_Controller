
var mydata1;
var mydata2;
var mydata3; 
var promisestinh = []; 
var progressEltinh = document.getElementById('pbtinh');//document.querySelector('progress');

 
function loadScript(url) {
	// return new Promise(function  
	res = $.ajax({
		type: "GET",
		url: url,
		success: function () {
		},
		dataType: "script",
		cache: true
	});
	return res.promise();
}    

// url = 'bhh_gama/geojson/bhh_vung_tuoi.js';
// promisestinh.push(loadScript(url));

 
    
function progressPromise(promises, tickCallback) {
	var len = promises.length;
	var progress = 0;

	function tick(promise) {
		promise.then(function () {
			progress++;
			tickCallback(progress, len);
		});
		return promise;
	}

	return Promise.all(promises.map(tick));
}

function update1(completed, total) {
	progressEltinh.value = Math.round(completed / total * 100);
} 

var allloaded = false;
var stats1loaded = false;

progressPromise( promisestinh, update1).then(function (results) {
	console.log('tinh done!');
	allloaded = true;
	document.getElementById("thelist").innerHTML = "";
});
// progressPromise(promiseshuyen, update2).then(function (results) {
// 	console.log('huyen done!');
// });
// progressPromise(promisesxa, update3).then(function (results) {
// 	console.log('xa done!');
// });


// Promise.all(promisestinh)
// 	.then(function () {
// 		// btnTinh.addTo(Lmap);
// 		mydata3 = mydata3_;
// 		allloaded = true;
// 		stats1loaded = true;
// 		allloaded = true;    
		
// 		reset_adm3();
// 		// console.log("ss"+adm3_layer.getBounds());
// 		// Lmap.fitBounds(adm3_layer.getBounds());
// 		// zoom_based_layerchange();
// 		// build_slider();
// 		// slider.addTo(Lmap);
// 		// console.log(mydata3);
// 	}).catch(function (script) {
// 		console.log(script + ' failed to load');
// 	});

// Promise.all(promisesStats)
// 	.then(function () {
// 		stats1loaded = true;
// 		allloaded = true; 
// 		// zoom_based_layerchange(); 
// 		console.log('stats1 loaded');
// 	}).catch(function (script) {
// 		console.log(script + ' failed to load');
// 	});

 