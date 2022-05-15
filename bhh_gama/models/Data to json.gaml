
model Parameters

import "cleaner.gaml"

global {
	shape_file provinces_shp_file3 <- shape_file("../includes/bhh/bhh_vung_tuoi.shp");
	geometry shape <- envelope(provinces_shp_file3);

	init {
		create adm3 from: provinces_shp_file3 {
		}
		do adm_regionfull;
	}

	action adm_regionfull {
		file ss;
		string sss;
		/////
		save adm3 crs: 4326 to: "../js/bhh_vung_tuoi.js" type: "json";
		ss <- text_file("../js/bhh_vung_tuoi.js");
		sss <- "var mydata3_ =" + ss + ";adm3_layer.addData(mydata3_);";
		save sss to: "../js/bhh_vung_tuoi.js";
	}

}

species adm3 schedules: [] { 

	aspect default {
		draw shape;
		//		draw VARNAME_3 color: mcolor[int(risk_point / 8)];
	}

} 
experiment "Merge data" type: gui  { 
}