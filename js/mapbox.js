
mapboxgl.accessToken = 'pk.eyJ1IjoiaHFuZ2hpODgiLCJhIjoiY2t0N2w0cGZ6MHRjNTJ2bnJtYm5vcDB0YyJ9.oTjisOggN28UFY8q1hiAug';

const map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/satellite-streets-v11',
    // pitch: 45,
    // bearing: -17.6,
    // antialias: true,
    center: [106.27376101504079, 20.818302624833308], // TLU -84.5, 38.05starting position 
    zoom: 10 // starting zoom
});

var json0 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json1 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json2 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json3 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json4 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json5 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json6 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json7 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json8 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var json9 = { 'type': 'FeatureCollection', 'features': [{ 'type': 'Feature', 'geometry': { 'type': 'Point', 'coordinates': [0, 0] } }] };
var lst_json = [];
var name_json = ['bhh_bo_kenh_xung_yeu',
    'bhh_cac_cong_trinh_cong_tb',
    'bhh_cong_trinh_chinh',
    'bhh_hanh_chinh',
    'bhh_kenh_cap_1',
    'bhh_long_kenh_boi_lang',
    'bhh_song_ngoai_kenh_chinh_bo_kenh_chinh',
    'bhh_vi_pham_cong_trinh',
    'bhh_vi_pham_xa_thai',
    'bhh_vung_tuoi'];
var map_json = new Map();
// Enumerate ids of the layers.
const toggleableLayerIds = [];
map.on('load', async () => {
    // Add the source1 location as a source.
    name_json.forEach(e => $.getJSON("json/" + e+".geojson", function (data) {
        console.log(e);
        toggleableLayerIds.push(e);
        map_json.set(e, data);


        map.addSource(e, {
            type: 'geojson',
            data: map_json.get(e)
        });
        map.addLayer({
            'id': e,
            type: 'fill',
            'source': e,
            'layout': {},
            'paint': {
                'fill-color': 'gray',
                'fill-opacity': 0.7,
                'fill-outline-color': 'red'

            },
        });
        map.on('mouseenter', e, showDes);
        map.on('mouseleave', e, removePopup);
        map.fitBounds(turf.extent(map_json.get(e)), { padding: 20 });
        // map.getSource(e).setData(map_json.get(e));
    }
    )
    );
 
    // bhh_bo_kenh_xung_yeu
    // bhh_cac_cong_trinh_cong_tb
    // bhh_cong_trinh_chinh
    // bhh_hanh_chinh
    // bhh_kenh_cap_1
    // bhh_long_kenh_boi_lang
    // bhh_song_ngoai_kenh_chinh_bo_kenh_chinh
    // bhh_vi_pham_cong_trinh
    // bhh_vi_pham_xa_thai
    // bhh_vung_tuoi


    // for (var i = 0; i < 9; i++) {
    //     map.addSource('source' + i, {
    //         type: 'geojson',
    //         data: json0
    //     });
    //     map.addLayer({
    //         'id': 'source' + i,
    //         type: 'fill',
    //         'source': 'source' + i,
    //         'layout': {},
    //         'paint': {
    //             'fill-color': 'pink',
    //             'fill-opacity': 0.7,
    //             'fill-outline-color': 'red'

    //         },
    //     });
    // }


    // Create a popup, but don't add it to the map yet.
    const popup = new mapboxgl.Popup({
        closeButton: false,
        closeOnClick: false
    });
    function showDes(e) {
        // Change the cursor style as a UI indicator.
        map.getCanvas().style.cursor = 'pointer';

        // Copy coordinates array.
        const coordinates = (turf.center(e.features[0])).geometry.coordinates.slice();//.coordinates[0].slice()[0];
        // console.log(coordinates);
        const description = e.features[0].properties.descriptio;

        // Ensure that if the map is zoomed out such that multiple
        // copies of the feature are visible, the popup appears
        // over the copy being pointed to.
        while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
            coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
        }

        // Populate the popup and set its coordinates
        // based on the feature found.
        popup.setLngLat(coordinates).setHTML(description).addTo(map);
    }
    function removePopup() {

        map.getCanvas().style.cursor = '';
        popup.remove();
    }
 
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


// After the last frame rendered before the map enters an "idle" state.
map.on('idle', () => {
    // If these two layers were not added to the map, abort
    // if (!map.getLayer('source1') || !map.getLayer('source2')) {
    //     return;
    // }


    // Set up the corresponding toggle button for each layer.
    for (const id of toggleableLayerIds) {
        // Skip layers that already have a button set up.
        if (document.getElementById(id)) {
            continue;
        }

        // Create a link.
        const link = document.createElement('a');
        link.id = id;
        link.href = '#';
        link.textContent = id;
        link.className = 'active';

        // Show or hide layer when the toggle is clicked.
        link.onclick = function (e) {
            const clickedLayer = this.textContent;
            e.preventDefault();
            e.stopPropagation();

            const visibility = map.getLayoutProperty(
                clickedLayer,
                'visibility'
            );

            // Toggle layer visibility by changing the layout object's visibility property.
            if (visibility === 'visible') {
                map.setLayoutProperty(clickedLayer, 'visibility', 'none');
                this.className = '';
            } else {
                this.className = 'active';
                map.setLayoutProperty(
                    clickedLayer,
                    'visibility',
                    'visible'
                );
            }
        };

        const layers = document.getElementById('menu');
        layers.appendChild(link);
    }
});
