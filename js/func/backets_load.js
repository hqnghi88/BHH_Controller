

basket.timeout = 1000000000;
basket
	.require(
		{ url: 'js/leaflet-slider.js' },
		{ url: 'js/scripts.js' },
		{ url: 'assets/demo/chart-sexage.js' },
		{ url: 'assets/demo/chart-time.js' },
		{ url: 'assets/demo/chart-rate.js' },
		{ url: 'assets/demo/chart-hiv.js' },
		{ url: 'assets/demo/chart-treat.js' },
		{ url: 'assets/demo/datatables.js' },


	)
	.then(function () {

		basket
			.require(
				{ url: 'geotb_gama/js/allid.js' },
				{ url: 'geotb_gama/js/adm_list.js' },
				{ url: 'geotb_gama/js/pop_list.js' },
				{ url: 'js/func/gis_filter.js' })
			.then(function () {
				basket.require(
					{ url: 'js/func/get_data.js' },
					{ url: 'js/maplayers.js' },
					{ url: 'js/func/fit_zoom_to.js' },
					{ url: 'js/func/add_control.js' });
				if (main_type_ == "geoai") {
					basket.require(
						{ url: 'js/func/add_control_ai.js' });
				}
			});




		console.log("scripts loaded");
	}, function (error) {
		// There was an error fetching the script
		console.log(error);
	});