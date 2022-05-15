// var zoomHome = L.Control.zoomHome();
// zoomHome.addTo(Lmap);


// var btnTinh = L.easyButton('<h3>T</h3>', function () {
//     //console.log("tinh");

//     if (!allloaded) return;
//     clicked_province = "";
//     clicked_district = "";
//     clicked_commune = "";
//     color1 = true;
//     if (clicked_province === "") {
//         reset_adm1();
//     }
// }, "Xem mức tỉnh, thành");

// var btnHuyen = L.easyButton('<h3>H</h3>', function () {
//     //console.log("huyen");
//     // clicked_province = "";
//     // clicked_district = "";
//     //clicked_commune = "";
//     if (!allloaded) return;
//     color1 = false;
//     if (clicked_province === "") {
//         reset_adm2();
//     } else if (clicked_province) {

//         clean_map();
//         adm2_layer = L.geoJson(mydata2, {
//             style: style,
//             filter: provinceFilter,
//             onEachFeature: onEachFeature2
//         });
//         adm2_layer.addTo(Lmap);
//     }

//     if (clicked_district) {
//         clean_map();
//         adm2_layer = L.geoJson(mydata2, {
//             style: style,
//             filter: districtFilter2,
//             onEachFeature: onEachFeature2
//         });
//         adm2_layer.addTo(Lmap);
//     }
// }, "Xem mức quận, huyện");

// var btnXa = L.easyButton('<h3>X</h3>', function () {
//     //console.log("xa");	
//     //clicked_province = "";
//     // clicked_district = "";
//     // clicked_commune = "";
//     if (!allloaded) return;


//     color1 = false;
//     if (clicked_province === "") {
//         reset_adm3();
//     } else
//         if (clicked_province) {
//             clean_map();
//             adm3_layer = L.geoJson(mydata3, {
//                 style: style,
//                 filter: provinceFilter,
//                 onEachFeature: onEachFeature3
//             });
//             adm3_layer.addTo(Lmap);
//         }
//     if (clicked_district) {
//         clean_map();
//         adm3_layer = L.geoJson(mydata3, {
//             style: style,
//             filter: districtFilter,
//             onEachFeature: onEachFeature3
//         });
//         adm3_layer.addTo(Lmap);
//     }

// }, "Xem mức phường, xã");




// var legend = L.control({ position: 'topright' });
// var legends_labels = []; 
// legend.onAdd = function (map) {

//     var div = L.DomUtil.create('div', 'info legend');
//     div.id = "info legend";
//     // div.setAttribute("onmouseenter", "showDisclaimer()");
//     // div.setAttribute("onmouseleave", "hideDisclaimer()");

//     div.setAttribute("title", "Số ca trên 100 000 dân");
//     div.innerHTML = 'Thời gian:<label class="text-danger" id="month"> </label><table>';
//     var grades = [182.86, 365.71, 548.57, 731.43, 914.29, 1097.14, 1280.00],// [182.86, '#fee5d9'],
//         grades1 = [30, 60, 90, 120, 150, 180, 1280.00],
//         // [365.71, '#fcbba1'],
//         // [548.57, '#fc9272'],
//         // [731.43, '#fb6a4a'],
//         // [914.29, '#ef3b2c'],
//         // [1097.14, '#cb181d'],
//         // [1280.00, '#99000d']
//         ptype = ["0", "182.86", "365.71", "548.57", "731.43", "914.29", "1097.14"],
//         ptype1 = ["- 182.86", "- 365.71", "- 548.57", "- 731.43", "- 914.29", "- 1097.14", "- 1280.00+"],
//         ptype_ = ["0", "30", "60", "90", "120", "150", "180"],
//         ptype1_ = ["- 30", "- 60", "- 90", "- 120", "- 150", "- 180", "- 210+"],
//         from, to;
//     legends_labels.push('<table>'); 


//     for (var i = 0; i < grades.length; i++) {
//         from = grades[i];
//         from1 = grades1[i];
//         //to = grades[i + 1];


//         legends_labels.push('<tr><td>' + ptype[i] + '</td><td>' + ptype1[i] + '</td>');
//         legends_labels.push('<td><i style="background:' + getColor(from + 1) + '">&nbsp;&nbsp;&nbsp;</i></td></tr>');
 
//     }

//     legends_labels.push('</table>'); 
//     // console.log(legends_labels);
//     div.innerHTML = legends_labels.join('');


//     return div;
// };
// legend.addTo(Lmap);


// var info = L.control({ position: 'topright' });

// info.onAdd = function (map) {
//     this._div = L.DomUtil.create('div', 'info');
//     this.update('');
//     return this._div;
// };


// info.update = function (str) {
//     this._div.innerHTML = str;
//     // if (feature && feature.properties) {
//     //     var sc = 0;
//     //     sc = getScore(feature);
//     //     this._div.innerHTML = '' + (feature.properties ?
//     //         '<b>' + feature.properties.name + '</b>' +
//     //         (feature.properties.name2 ? (", <b>" + feature.properties.name2 + "</b>") : "") +
//     //         (feature.properties.name1 ? (", <b>" + feature.properties.name1 + "</b>") : "") +
//     //         '<br />' + sc + '.' :
//     //         '');

//     // }
// };

// info.addTo(Lmap);



// Lmap.addControl(new L.Control.Fullscreen({
//     pseudoFullscreen: true,
//     title: {
//         'false': 'Xem toàn màn hình',
//         'true': 'Thoát chế độ Toàn màn hình'
//     }
// }));


