/***
* Name: Corona
* Author: hqngh
* Description: 
* Tags: Tag1, Tag2, TagN
***/
model Parameters

import "cleaner.gaml"

global {
	shape_file provinces_shp_file1 <- shape_file("../includes/adm1_.shp");
	shape_file provinces_shp_file2 <- shape_file("../includes/adm2_.shp");
	shape_file provinces_shp_file3 <- shape_file("../includes/adm3_.shp");
	geometry shape <- envelope(provinces_shp_file3);
	map<string, int> allid;
	map<string, adm1> alladm1;
	map<string, adm2> alladm2;
	map<string, adm3> alladm3;
	list<rgb> mcolor <- [rgb('#fee5d9'), rgb('#fcbba1'), rgb('#fc9272'), rgb('#fb6a4a'), rgb('#ef3b2c'), rgb('#cb181d'), rgb('#99000d')];

	init {
		create adm1 from: provinces_shp_file1 {
			alladm1[NAME_1] <- self;
		}

		create adm2 from: provinces_shp_file2 {
			alladm2[NAME_1 + NAME_2] <- self;
		}

		create adm3 from: provinces_shp_file3 {
			alladm3[NAME_1 + NAME_2 + NAME_3] <- self;
		}

		int iii <- 0;
		string ds <- "{";
		ask adm1 {
			ds <- ds + "\"" + NAME_1 + "\":" + iii + ",";
			allid[NAME_1] <- iii;
			iii <- iii + 1;
		}

		ask adm2 {
			ds <- ds + "\"" + NAME_1 + NAME_2 + "\":" + iii + ",";
			allid[NAME_1 + NAME_2] <- iii;
			iii <- iii + 1;
		}

		ask adm3 {
			ds <- ds + "\"" + NAME_1 + NAME_2 + NAME_3 + "\":" + iii + ",";
			allid[NAME_1 + NAME_2 + NAME_3] <- iii;
			iii <- iii + 1;
		}

		ds <- ds + "}";
		//		ds <- ds replace ("],]);", "]]);");
		save ds to: "../js/allid.json" type: text;
		do initpop;
		do pop_list;
	}

	int idx <- 0;

	reflex ssP when: idx < data1.rows {
		if (idx < data1.rows - 1) {
			do ssss;
		} else {
			do die;
		}

	}

	action adm_simplify {
	}

	list<string>
	headers <- ["2016-1", "2016-2", "2016-3", "2016-4", "2016-5", "2016-6", "2016-7", "2016-8", "2016-9", "2016-10", "2016-11", "2016-12", "2017-1", "2017-2", "2017-3", "2017-4", "2017-5", "2017-6", "2017-7", "2017-8", "2017-9", "2017-10", "2017-11", "2017-12", "2018-1", "2018-2", "2018-3", "2018-4", "2018-5", "2018-6", "2018-7", "2018-8", "2018-9", "2018-10", "2018-11", "2018-12", "2019-1", "2019-2", "2019-3", "2019-4", "2019-5", "2019-6", "2019-7", "2019-8", "2019-9", "2019-10", "2019-11", "2019-12", "2020-1", "2020-2", "2020-3", "2020-4", "2020-5", "2020-6", "2020-7"];

	action pop_list {
		string ds <- "var pops = {";
		int iii <- 0;
		ask adm1 {
			ds <- ds + "" + iii + ":[ ";
			loop ix from: 0 to: length(headers) - 1 {
				ds <- ds + pop[headers[ix]] + ",";
			}

			ds <- ds + "],";
			iii <- iii + 1;
		}

		ask alladm2 {
			ds <- ds + "" + iii + ":[ ";
			loop ix from: 0 to: length(headers) - 1 {
				ds <- ds + pop[headers[ix]] + ",";
				if (pop[headers[ix]]=nil) {
					write NAME_1+" "+NAME_2; 
				}

			}

			ds <- ds + "],";
			iii <- iii + 1;
		}

		list<int> total <- list_with(length(headers), 0);
		ask adm1 {
			loop ix from: 0 to: length(headers) - 1 {
				total[ix] <- total[ix]+pop[headers[ix]];
			}

		}

		ds <- ds + "'VN':" + total + "";
		ds <- ds replace (",],", "],") + "};";
		//		all <- all replace ('""', '","') replace ('],]', '],');
		save ds to: "../js/pop_list.js" type: text;
	}

	matrix data1;
	string fpath <- "../includes/pop1.csv";
	string outpath <- "";

	action initpop {
		file patient_csv_file <- csv_file("../includes/pop1.csv", ";", true);
		data1 <- ((patient_csv_file.contents));
		loop i from: 0 to: data1.rows - 1 {
			l1 <- "" + (data1[0, idx]);
			l2 <- "" + (data1[1, idx]);
			do cleaning;
			if (data1[2, idx] != "Province" and data1[2, idx] != "Municipality") {
				adm2 a2 <- alladm2[l1 + l2];
				if(l1+l2="Đồng ThápHồng Ngự"){
					write a2;
				}
				if (a2 != nil) {
					loop ix from: 0 to: length(headers) - 1 {
						a2.pop[headers[ix]] <- int(data1[3 + ix, idx]);
					}

				} else {
					write (l1 + l2 ="Đồng ThápHồng Ngự");
					write l1 + l2;
				}

			}

			idx <- idx + 1;
		}

		ask adm1 {
			loop ix from: 0 to: length(headers) - 1 {
				pop[headers[ix]] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[headers[ix]]);
			}
			//			pop[2016] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[2016]);
			//			pop[2017] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[2017]);
			//			pop[2018] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[2018]);
			//			pop[2019] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[2019]);
			//			pop[2020] <- sum((adm2 where (each.NAME_1 = NAME_1)) collect each.pop[2020]);
		}

		idx <- 0;
	}

	action ssss {
	}

}

species adm1 schedules: [] {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	float risk_point <- 0.0;
	string time;
	map<string, int> bytime;
	list<int> male <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> female <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> treatment <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> hiv <- [0, 0, 0, 0, 0, 0, 0];
	map<string, int> pop; // <- ([2016::1, 2017::1, 2018::1, 2019::1, 2020::1]);
	aspect default {
		draw shape;
		draw VARNAME_1 color: #red;
	}

}

species adm2 schedules: [] {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	float risk_point <- 0.0;
	string time;
	map<string, int> bytime;
	list<int> male <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> female <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> treatment <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> hiv <- [0, 0, 0, 0, 0, 0, 0];
	map<string, int> pop; //<- ([2016::1, 2017::1, 2018::1, 2019::1, 2020::1]);
	aspect default {
		draw shape color: mcolor[int(risk_point / 50) > 6 ? 6 : int(risk_point / 50)];
		draw VARNAME_2 color: #red;
	}

}

species adm3 schedules: [] {
	string NAME_1;
	string NAME_2;
	string NAME_3;
	string GID_1;
	string GID_2;
	string GID_3;
	string VARNAME_1;
	string VARNAME_2;
	string VARNAME_3;
	float risk_point <- 0.0;
	string time;
	map<string, int> bytime;
	list<int> male <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> female <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> treatment <- [0, 0, 0, 0, 0, 0, 0, 0];
	list<int> hiv <- [0, 0, 0, 0, 0, 0, 0];

	aspect default {
		draw shape color: mcolor[int(risk_point / 50) > 6 ? 6 : int(risk_point / 50)];
		//		draw VARNAME_3 color: mcolor[int(risk_point / 8)];
	}

}

experiment "Merge data" type: gui {

	action _init_ {
		create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.csv"];
		//		create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.000", outpath::"0"];

		//						loop i from: 0 to: 9 {
		//							create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.00" + i, outpath::"" + i];
		//						}
		//				
		//						loop i from: 10 to: 20 {
		//							create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.0" + i, outpath::"" + i];
		//						}

	}

	output {
	//		layout #split navigator: false;
	//		display "SS" {
	//			species adm3;
	//		}

	}

}
/*
 * Hải PhòngCát Bà
Thanh HóaHóc Môn
Đồng ThápXã An Long
Đồng ThápXã An Long
Hà NộiVăn Yên
Bà Rịa - Vũng TàuCôn Đảo
Thanh HóaHóc Môn
Hải DươngTT phòng chống HIV
Đắk LắkĐăk Nông
Thanh HóaHóc Môn
TP. Hồ Chí MinhTrần Văn Thời
Bà Rịa - Vũng TàuCôn Đảo
Hải PhòngKim Thành
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
Hà NộiVăn Yên
Hà NộiVăn Yên
Hà NamNghĩa Bình
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
Quảng BìnhHải Châu
Bà Rịa - Vũng TàuCôn Đảo
Quảng BìnhHải Châu
Bà Rịa - Vũng TàuCôn Đảo
Quảng BìnhHải Châu
Quảng BìnhHải Châu
Bà Rịa - Vũng TàuCôn Đảo
Bà Rịa - Vũng TàuCôn Đảo
 */