const queryString = window.location.search;

const urlParams = new URLSearchParams(queryString);
mapboxgl.accessToken = 'pk.eyJ1IjoiaHFuZ2hpODgiLCJhIjoiY2t0N2w0cGZ6MHRjNTJ2bnJtYm5vcDB0YyJ9.oTjisOggN28UFY8q1hiAug';

const map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/satellite-streets-v11',
    // pitch: 45,
    // bearing: -17.6,
    antialias: true,
    center: [106.27376101504079, 20.818302624833308], // TLU -84.5, 38.05starting position 
    zoom: 10 // starting zoom
});
province = urlParams.get('p');
//console.log(province); 

district = urlParams.get('d');
//console.log(district); 

commune = urlParams.get('c');
//console.log(commune); 
var clicked_province = "";
var clicked_district = "";
var clicked_commune = "";
var color1 = false;
var slider_idx1 = 0;
var slider_idx2 = 70;

// var adm1_layer;
// var adm2_layer;
// var adm3_layer; 

// var Lmap = L.map('map', {
//     zoomControl: false,
//     scrollWheelZoom: true
// }).setView([20.818302624833308, 106.27376101504079], 12);//16.0376435, 107.5341797


// adm3_layer = L.geoJson(mydata3, {
//     style: style,
//     onEachFeature: onEachFeature3
// });

// L.tileLayer('https://maps.vnpost.vn/api/tm/{z}/{x}/{y}@2x.png?apikey={accessToken}', {
//     // attribution: 'Map data &copy; <a href="https://vmap.vn">Vmap</a>, <a href="http://openstreetmap.org">OSM Contributors</a>',
//     maxZoom: 20,
//     minZoom: 10,
//     id: 'Vmap.streets',
//     accessToken: '26f9804e1ff6d86f72a33ebd518f057e0aff542de23c724d'
// }).addTo(Lmap);
// L.tileLayer('https://maps.vietmap.vn/api/tm/{z}/{x}/{y}.png?apikey=383a90729d0590f9e1074083a11791ff64767fb56c1d9c4f', {
//     // attribution: 'Map data &copy; <a href="https://maps.vietmap.vn">VIETMAP</a>',
//     maxZoom: 20,
//     minZoom: 5.5,
//     id: 'mapbox/light-v9',
//     tileSize: 512,
//     zoomOffset: -1
// }).addTo(Lmap);


// Lmap.on('zoomend', function (e) {
//     zoom_based_layerchange();
// });
var geojson = {
    'type': 'FeatureCollection',
    'features': [
        {
            'type': 'Feature',
            'geometry': {
                'type': 'Point',
                'coordinates': [0, 0]
            }
        }
    ]
}; 
var json;
 
map.on('load', async () => {
    // Add the source1 location as a source.
    $.getJSON("json/bhh_vung_tuoi.geojson", function (data) {
        var json = data; 
        map.addSource('source1', {
            type: 'geojson',
            data: 'json/bhh_vung_tuoi.geojson'
        });
        map.addLayer({
            'id': 'source1',
            type: 'fill',
            'source': 'source1',
            'layout': {},
            'paint': {
                'fill-color': 'gray',
                'fill-opacity':0.7

            },
        }); 
        map.fitBounds(turf.extent(json), { padding: 20 });
        showtable();
    });
    const layers = map.getStyle().layers;
    const labelLayerId = layers.find(
        (layer) => layer.type === 'symbol' && layer.layout['text-field']
    ).id;

    // // Add some fog in the background
    // map.setFog({
    // 	'range': [-0.5, 5],
    // 	'color': 'white',
    // 	'horizon-blend': 0.2
    // });
    // Add a sky layer over the horizon
    map.addLayer({
        'id': 'sky',
        'type': 'sky',
        'paint': {
            'sky-type': 'atmosphere',
            'sky-atmosphere-color': 'rgba(85, 151, 210, 0.5)'
        }
    });
    // Add terrain source, with slight exaggeration
    map.addSource('mapbox-dem', {
        'type': 'raster-dem',
        'url': 'mapbox://mapbox.terrain-rgb',
        'tileSize': 512,
        'maxzoom': 14
    });
    map.setTerrain({ 'source': 'mapbox-dem', 'exaggeration': 1.5 });
    map.setLight({ anchor: 'map' });

}); 
map.addControl(new mapboxgl.FullscreenControl());

map.addControl(new mapboxgl.NavigationControl());  


function clean_map() {
    Lmap.eachLayer(function (layer) {
        if (layer instanceof L.GeoJSON)
        //Do marker specific actions here
        {
            //layer._leaflet_id = null;
            Lmap.removeLayer(layer);
        }
        //console.log(layer);
    });
}



function reset_adm3() {
    // clean_map();
    // // console.log(mydata3);
    // adm3_layer = L.geoJson(mydata3, {
    //     style: style,
    //     onEachFeature: onEachFeature3
    // });
    // adm3_layer.addTo(Lmap);
}
function zoom_based_layerchange() {

    reset_adm3();
}
function update_layers() {
    // document.getElementById("info legend").innerHTML = legends_labels.join('');
    // if (color1) {
    //     document.getElementById("info legend").innerHTML = legends1_labels.join('');
    // }
    // if (main_type_ == "geoai") {
    //     document.getElementById("info legend").innerHTML = legends_ai_labels.join('');
    // } 
    clean_map();
    console.log(mydata3);
    adm3_layer = L.geoJson(mydata3, {
        style: style,
        filter: districtFilter,
        onEachFeature: onEachFeature3
    });
    adm3_layer.addTo(Lmap);
}
function style(feature) {
    // var tmp_color = main_type_ == "geoai" ? getColorAI(getRateAI(feature)) : getColor(getRate(feature));
    return {
        weight: 1,
        opacity: 1,
        color: 'pink',
        dashArray: '3',
        fillOpacity: 0.5,
        fillColor: 'gray'
    };
}


function getColor(d) {
    if (("" + d) === "undefined") { d = 0.0; }
    if (color1) return getColor1(d);
    // if (index_of_rate > 30) {
    //     d = d * 50;
    // }
    // return d > 90 ? '#DA4711' :
    //     d > 70 ? '#F28E12' :
    //         d > 50 ? '#F1BA15' :
    //             d > 3 ? '#0FA57F' :
    //                 '#0FA57F';
    return d > 1097.14 ? '#99000d' :
        d > 914.29 ? '#cb181d' :
            d > 731.43 ? '#ef3b2c' :
                d > 548.57 ? '#fb6a4a' :
                    d > 365.71 ? '#fc9272' :
                        d > 182.86 ? '#fcbba1' :
                            d > 0.0 ? '#fee5d9' :
                                '#fff';
    // [182.86, '#fee5d9'],
    // [365.71, '#fcbba1'],
    // [548.57, '#fc9272'],
    // [731.43, '#fb6a4a'],
    // [914.29, '#ef3b2c'],
    // [1097.14, '#cb181d'],
    // [1280.00, '#99000d']
}




// var popup;
function highlightFeature(e) {
    var layer = e.target;

    layer.setStyle({
        weight: 3,
        color: 'white',
        dashArray: '3',
        fillOpacity: 1.0
    });
    strpop = "";
    if (layer.feature && layer.feature.properties) {
        var sc = layer.feature.properties.descriptio;
        strpop = '' + (layer.feature.properties ?
            '<b>' + layer.feature.properties.name + '</b>' +
            (layer.feature.properties.name2 ? (", <b>" + layer.feature.properties.name2 + "</b>") : "") +
            (layer.feature.properties.name1 ? (", <b>" + layer.feature.properties.name1 + "</b>") : "") +
            '<br />Số ca: ' + sc + '.' + (layer.feature.properties.name2 ? '' : '<br />Tỉ lệ:  .') :
            '');
    }
    // popup = L.popup()
    //     .setLatLng([16.0376435, 107.5341797]) //(assuming e.latlng returns the coordinates of the event)
    //     .setContent(strpop)
    //     .openOn(Lmap);
    if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
        layer.bringToFront();
    }
    info.update(strpop);
}

function resetHighlight(e) {
    // if (adm1_layer) {
    //     adm1_layer.resetStyle(e.target);
    // }
    // if (adm2_layer) {
    //     adm2_layer.resetStyle(e.target);
    // }
    // if (adm3_layer) {
    //     adm3_layer.resetStyle(e.target);
    // }

    adm3_layer.resetStyle(e.target);
    // popup.removeFrom(Lmap)

    info.update('');
}

function zoomToFeature(e) {
    Lmap.fitBounds(e.target.getBounds());
}


function onEachFeature1(feature, layer) {
    layer.on({
        mouseover: highlightFeature,
        mouseout: resetHighlight,
        click: zoomToFeature
    });

    layer.on('click', function (e) {
        province = e.target.feature.properties.name;
        clicked_province = province;
        showallchart1();

        // province_loader.show(province);
    });
}

function onEachFeature2(feature, layer) {
    layer.on({
        mouseover: highlightFeature,
        mouseout: resetHighlight,
        click: zoomToFeature
    });
    layer.on('click', function (e) {
        clicked_province = e.target.feature.properties.name1;
        clicked_district = e.target.feature.properties.name;

        province = e.target.feature.properties.name1;
        district = e.target.feature.properties.name;

        showallchart2();
        // district_loader.show(province, district);
    });
}

function onEachFeature3(feature, layer) {
    layer.on({
        mouseover: highlightFeature,
        mouseout: resetHighlight,
        click: zoomToFeature
    });

    //layer._leaflet_id = feature.id;  
    layer.on('click', function (e) {

        commune = e.target.feature.properties.name;
        province = e.target.feature.properties.name1;
        district = e.target.feature.properties.name2;
        clicked_province = province;
        clicked_district = district;
        clicked_commune = commune;
        // fit_zoom_to3(province, district, commune);
    });
}


// Lmap.attributionControl.addAttribution('Data &copy; <a href="https://itrithuc.vn/">iTriThuc</a>');
// document.getElementById("thelist").innerHTML = `
// <table id='customers' style="width: 680">
//     <tr><th>
//         Thống kê theo tháng
//         <a data-toggle="collapse" href="#divF0daily"
//             aria-expanded="true" aria-controls="divF0daily">
//             <i style="float: right;"class="fas fa-angle-up rotate-icon">&nbsp;</i>
//         </a>
//     </th></tr>
// </table><div id="divF0daily" style="width: 680;border-style: outset;" class="collapse show">
//     <canvas id="F0dailyChart" width="680" height="400"></canvas>
// </div>
// `;