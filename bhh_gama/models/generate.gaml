/**
* Name: NewModel
* Based on the internal empty template. 
* Author: ADMIN
* Tags: 
*/
model NewModel

global {
	shape_file adm1_shp <- shape_file("../includes/adm1Ha Noi.shp");
	shape_file adm2_shp <- shape_file("../includes/adm2_hanoi.shp");
	shape_file adm3_shp <- shape_file("../includes/adm3_hanoi.shp");
	geometry shape <- envelope(adm3_shp);
	map<string, adm1> alladm1;
	map<string, adm2> alladm2;
	map<string, adm3> alladm3;
	float max_risk_point <- 100.0;
	float min_risk_point <- 0.0;

	init {
		create adm1 from: adm1_shp {
			if (NAME_1 = "Hà Nội") {
				alladm1[NAME_1] <- self;
			}
			//			else{do die;}

		}

		create adm2 from: adm2_shp {
			if (NAME_1 = "Hà Nội") {
				alladm2[NAME_1 + NAME_2] <- self;
			}
			//			else{do die;}

		}

		create adm3 from: adm3_shp {
			if (NAME_1 = "Hà Nội") {
				alladm3[NAME_1 + NAME_2 + NAME_3] <- self;
			}
			//			else{do die;}

		}
		//		save adm2 crs: 3857 to: "../includes/adm2_hanoi.shp" type: "shp" attributes:["ID"::int(self), "NAME_1"::NAME_1, "GID_1"::GID_1, "NAME_2"::NAME_2, "GID_2"::GID_2, "NAME_3"::NAME_3, "GID_3"::GID_3, "VARNAME_1"::VARNAME_1, "VARNAME_2"::VARNAME_2, "VARNAME_3"::VARNAME_3];
		//		save adm3 crs: 3857 to: "../includes/adm3_hanoi.shp" type: "shp" attributes:["ID"::int(self), "NAME_1"::NAME_1, "GID_1"::GID_1, "NAME_2"::NAME_2, "GID_2"::GID_2, "NAME_3"::NAME_3, "GID_3"::GID_3, "VARNAME_1"::VARNAME_1, "VARNAME_2"::VARNAME_2, "VARNAME_3"::VARNAME_3];
		do ss;
	}

	font info <- font("Helvetica", 16, #bold);
	font info1 <- font("Helvetica", 18, #plain);
	matrix data1;

	action ss {
		string fpath <- "../includes/1GeoSp_VTM_KhamBenh_16_20_simple.csv";
		if (!file_exists(fpath)) {
			return;
		}

		file patient_csv_file <- csv_file(fpath, ";", true);
		data1 <- ((patient_csv_file.contents));
		loop i from: 0 to: data1.rows - 1 {
			do ssss;
			//			list<adm3> a <- (adm3 where (each.NAME_2 in string(data1[3, i]) and each.NAME_3 in string(data1[2, i])));
			//			write ""+(data1[2, i])+(data1[3, i])+(data1[4, i]);
			//			write alladm[""+(data1[2, i])+(data1[3, i])+(data1[4, i])];

			//			else{
			//				create f0 {
			//					location <- any_location_in(any(adm2));
			//				}
			//			}

		}

		save f0 crs: 4326 to: "json/f0_.geojson" type: "json" attributes: ["time"::("" + self.time), "mag"::self.ct];
		//				save f0 crs: 4326 to: "js/f0_.geojson" type: "json";
		//		save f0 crs: 4326 to: "js/f0.js" type: "json";
		//		file ss <- text_file("js/f0.js");
		//		string sss <- "var f0_gis=" + ss + ";";
		//		save sss to: "js/f0.js";
	}

	int idx <- 0;

	action ssss {
		adm3 a3 <- alladm3["" + (data1[6, idx]) + (data1[7, idx]) + (data1[8, idx])];
		adm2 a2 <- alladm2["" + (data1[6, idx]) + (data1[7, idx])];
		adm2 a1 <- alladm2["" + (data1[6, idx])];
		if (a3 != nil) {
			create f0 {
				location <- any_location_in(a3);
				time <- "" + data1[1, idx];
				ct <- int(data1[2, idx]);
			}

		} else if (a2 != nil) {
			create f0 {
				location <- any_location_in(a2);
				time <- "" + data1[1, idx];
				ct <- int(data1[2, idx]);
			}

		} else if (a1 != nil) {
			create f0 {
				location <- any_location_in(a1);
				time <- "" + data1[1, idx];
				ct <- int(data1[2, idx]);
			}

		}

		idx <- idx + 1;
	}

	list<adm3> candi;

	reflex ss {
		loop times: 100 {
			if (idx < data1.rows) {
				do ssss;
			}

		}

		candi <- ((adm3) sort_by (-each.risk_point)) where (each.risk_point > min_risk_point);
		int nb_ranking_list <- length(candi);
		int xx <- 10;
		int y <- 60;
		int i <- 0;
		loop while: i < nb_ranking_list {
			candi[i].STT <- "" + (i + 1); // ((i + 1) < 10 ? "0" : "") + (i + 1);
			i <- i + 1;
		}

	} }

species f0 {
	string code;
	string time;
	int ct <- 0.0;
	//	geometry shape <- square(10);
	adm3 detect;
	int score <- 14;
	string cause <- "";
	//	reflex sss when: score > 0 {
	//		score <- score - 1;
	//	}
	aspect default {
		draw shape color: #red;
	}

}

species adm1 {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	string STT;
	float risk_point <- 0.0;
	rgb my_risk_color <- (rgb(236, 255, 236, 255));

	aspect def {
		draw shape color: #gray border: #gray empty: true;
	}

	aspect default {
		draw shape color: my_risk_color border: false empty: true;
	}

}

species adm2 {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	string STT;
	float risk_point <- 0.0;
	rgb my_risk_color <- (rgb(236, 255, 236, 255));

	aspect def {
		draw shape color: #gray border: #gray empty: true;
	}

	aspect default {
		draw shape color: my_risk_color border: false empty: true;
	}

}

species adm3 {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	string STT;
	float risk_point <- 0.0;
	rgb my_risk_color <- (rgb(236, 255, 236, 255));

	aspect def {
		draw shape color: my_risk_color border: #white empty: false;
	}

	aspect default {
		if (risk_point > 0) {
			draw shape color: my_risk_color border: false; // empty: true;
		}

	}

}

experiment Exp type: gui {
	output {
		layout #split navigator: false tabs: false toolbars: false consoles: false editors: false controls: false;
		display "sim" ambient_light: 0 {
			species adm3;
			species adm2 aspect: def;
		}

		display ranking type: java2D background: #white {
		//			overlay position: {100, 0} size: {320 #px, 350 #px} transparency: 0.2 {
			graphics "rank" {
				draw ("Xếp hạng:") font: info1 at: {10 #px, 10 #px} anchor: #top_left color: #black;
				//					draw ("" + thedate) font: info1 at: {10 #px, 35 #px} anchor: #top_left color: #black;
				int nb_ranking_list <- length(candi);
				//					string s <- "";
				int xx <- 10;
				int y <- 60;
				int i <- 0;
				loop while: i < nb_ranking_list {
					y <- y + 25;
					draw (((i + 1) < 10 ? "0" : "") + (i + 1) + " . " + candi[i].NAME_2 + " - " + candi[i].NAME_3) font: info at: {xx #px, y #px} anchor: #top_left color: #black;
					i <- i + 1;
					if (i mod 30 = 0) {
						xx <- xx + 270;
						y <- 60;
					}

				}

			}

		}

	}

}