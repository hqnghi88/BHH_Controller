function fit_zoom_to_VN() {
    reset_adm1();
    Lmap.setView([16.0376435, 107.5341797], 5.5);
    // document.getElementById("thelist").innerHTML = data_info_general;
    return false;
}
function fit_zoom_to1(adm1) {
    clicked_province = adm1;
    clicked_district = "";
    clicked_commune = "";
    if (loaded_adm.get('adm_region2.js')) {
        reset_adm2();
        Lmap.fitBounds(adm2_layer.getBounds());
    } else {
        // var promisess = [];
        // url = 'geotb_gama/js/region/adm_region2' + id_.get(clicked_province) + '.js';
        // promisess.push(loadScript(url));

        // Promise.all(promisess)
        //     .then(function () {
        //         mydata2 = adm2_layer.toGeoJSON();
        //         reset_adm2();
        //         Lmap.fitBounds(adm2_layer.getBounds());
        //     }).catch(function (script) {
        //         console.log(script + ' failed to load');
        //     });



        basket
            .require({ url: 'geotb_gama/js/region/adm_region2' + id_.get(clicked_province) + '.js' })
            .then(function () {
                mydata2 = adm2_layer.toGeoJSON();
                reset_adm2();
                Lmap.fitBounds(adm2_layer.getBounds());
            }, function (error) {
                console.log(error);
            });
    }
    return false;
}

function fit_zoom_to2(adm1, adm2) {
    clicked_province = adm1;
    clicked_district = adm2;
    clicked_commune = "";
    if (loaded_adm.get('adm_region3.js')) {
        reset_adm3();
        Lmap.fitBounds(adm3_layer.getBounds());
    } else {
        // var promisess = [];
        // url = 'geotb_gama/js/region/adm_region3' + id_.get(clicked_province) + '.js';
        // promisess.push(loadScript(url));

        // Promise.all(promisess)
        //     .then(function () {
        //         mydata3 = adm3_layer.toGeoJSON();
        //         reset_adm3();
        //         Lmap.fitBounds(adm3_layer.getBounds());
        //     }).catch(function (script) {
        //         console.log(script + ' failed to load');
        //     });
            
        basket
        .require({ url: 'geotb_gama/js/region/adm_region3' + id_.get(clicked_province) + '.js' })
        .then(function () {
            mydata2 = adm2_layer.toGeoJSON();
            reset_adm2();
            Lmap.fitBounds(adm2_layer.getBounds());
        }, function (error) {
            console.log(error);
        });
    }
    return false;
}

function fit_zoom_to3(adm1, adm2, adm3) {
    clicked_province = adm1;
    clicked_district = adm2;
    clicked_commune = adm3;
    reset_adm4();

    Lmap.fitBounds(adm3_layer.getBounds());
    return false;
}