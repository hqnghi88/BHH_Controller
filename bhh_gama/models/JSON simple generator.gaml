/**
* Name: JSON File Loading
* Author:  Arnaud Grignard
* Description: Initialize a grid from a JSON FIle. 
* Tags:  load_file, grid, json
*/
model json_loading

import "cleaner.gaml"

global {
	file JsonFile <- json_file("../js/adm_list.json");
	file idJsonFile <- json_file("../js/allid.json");
	map<string, unknown> amap <- JsonFile.contents;
	map<string, unknown> allid <- idJsonFile.contents;
	int idx <- 0;
	list<string> lsttime <- [];
	matrix data1;
	string outpath <- "";
	//	map<string,> bytime;
	map<string, map<string, int>> alladm1;
	map<string, map<string, int>> alladm2;
	map<string, map<string, int>> alladm3;
	string fpath <- "../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv";
	int tnum <- 0;
	int maxnumfield <- 31;
	//	map<string, int>
	//	zero <- ["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
	init {
		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				loop n3 over: container(amap[n1 + n2]) {
				//						write "" + (allid[n1]) + " " + n1 + " " + (allid[n1 + n2]) + " " + n2 + " " + (allid[n1 + n2 + n3]) + " " + n3 + " " + amap[n1 + n2 + n3];
					alladm3[n1 + n2 + n3 + "bytime"] <-
					["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
					alladm2[n1 + n2 + "bytime"] <-
					["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
					alladm1[n1 + "bytime"] <-
					["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
					loop n4 from: 0 to: maxnumfield {
						alladm3[n1 + n2 + n3 + "saht" + n4] <-
						["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
						alladm2[n1 + n2 + "saht" + n4] <-
						["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
						alladm1[n1 + "saht" + n4] <-
						["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
					}

				}

			}

		}

		do initcsv;
		do merge;
	}

	action initcsv {
	//		string fpath <- "../includes/GeoSp_VTM_KhamBenh_16_20_adm.csv";
	//		string fpath <- "../includes/GeoSp_VTM_KhamBenh_16_20_adm.000"; 
	//		file patient_csv_file <- csv_file("../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv", ";", true);
		file patient_csv_file <- csv_file(fpath, ";", true);
		data1 <- ((patient_csv_file.contents));
		//		loop i from: 0 to: data1.rows - 1 {
		//					do ssss;
		//		}

	}

	reflex ssP when: idx < data1.rows {
		if (idx < data1.rows - 1) {
			do ssss;
		} else {
			write ssasfwe;
			do timeAdm;
			//			do sexage;
			//			do adm_regionfull;
			do die;
		}

	}

	action ssss {
		l1 <- "" + (data1[2, idx]);
		l2 <- "" + (data1[3, idx]);
		l3 <- "" + (data1[4, idx]);
		date tmp <- date(data1[1, idx]);
		int age <- int(data1[6, idx]);
		int gen <- int(data1[7, idx]);
		int hiv_id <- int(data1[8, idx]);
		int treat_id <- int(data1[13, idx]);
		//		int khang_id <- int(data1[14, idx]);
		string ttime <- "" + tmp.year + "-" + tmp.month; // + "-" + tmp.day;
		string ttime1 <- "" + tmp.month + "-28-" + tmp.year;
		string tytime <- "" + tmp.year;
		do cleaning;
		if (!(ttime in lsttime)) {
			lsttime <+ ttime;
		}

		if (alladm3[l1 + l2 + l3 + "bytime"] = nil) {
			alladm3[l1 + l2 + l3 + "bytime"] <- [];
			loop n4 from: 0 to: maxnumfield {
				alladm3[l1 + l2 + l3 + "saht" + n4] <- [];
			}

		}

		if (alladm2[l1 + l2 + "bytime"] = nil) {
			alladm2[l1 + l2 + "bytime"] <- [];
			loop n4 from: 0 to: maxnumfield {
				alladm2[l1 + l2 + "saht" + n4] <- [];
			}

		}

		if (alladm1[l1 + "bytime"] = nil) {
			alladm1[l1 + "bytime"] <- [];
			loop n4 from: 0 to: maxnumfield {
				alladm1[l1 + "saht" + n4] <- [];
			}

		}

		int sage <- int((age + 5) / 10);
		sage <- sage > 7 ? 7 : sage;
		if (l1 != "" and l2 != "" and l3 != "") {
			if (data1[13, idx] != " ") {
				alladm3[l1 + l2 + l3 + "bytime"][ttime] <- alladm3[l1 + l2 + l3 + "bytime"][ttime] + (1.0);
				if (gen < 0) {
					alladm3[l1 + l2 + l3 + "saht" + (sage)][ttime] <- alladm3[l1 + l2 + l3 + "saht" + (sage)][ttime] + 1;
				} else {
					alladm3[l1 + l2 + l3 + "saht" + (8 + sage)][ttime] <- alladm3[l1 + l2 + l3 + "saht" + (8 + sage)][ttime] + 1;
				}

				alladm3[l1 + l2 + l3 + "saht" + (16 + hiv_id)][ttime] <- alladm3[l1 + l2 + l3 + "saht" + (16 + hiv_id)][ttime] + 1;
				alladm3[l1 + l2 + l3 + "saht" + (23 + treat_id)][ttime] <- alladm3[l1 + l2 + l3 + "saht" + (23 + treat_id)][ttime] + 1;
				if (data1[14, idx] = "1") {
					alladm3[l1 + l2 + l3 + "saht" + (31)][ttime] <- alladm3[l1 + l2 + l3 + "saht" + (31)][ttime] + 1;
				}

			}

		}

		////////////////
		///////////////
		//////////////
		/////////////  		
		if (l1 != "" and l2 != "") {
		//			write l1 + l2 + "saht" + (8 + sage);
			if (data1[13, idx] != " ") {
				alladm2[l1 + l2 + "bytime"][ttime] <- alladm2[l1 + l2 + "bytime"][ttime] + (1.0); //(100000.0 / a2.pop[int(tytime)]);
				if (gen < 0) {
					alladm2[l1 + l2 + "saht" + (sage)][ttime] <- alladm2[l1 + l2 + "saht" + (sage)][ttime] + 1;
				} else {
					alladm2[l1 + l2 + "saht" + (8 + sage)][ttime] <- alladm2[l1 + l2 + "saht" + (8 + sage)][ttime] + 1;
				}

				alladm2[l1 + l2 + "saht" + (16 + hiv_id)][ttime] <- alladm2[l1 + l2 + "saht" + (16 + hiv_id)][ttime] + 1;
				alladm2[l1 + l2 + "saht" + (23 + treat_id)][ttime] <- alladm2[l1 + l2 + "saht" + (23 + treat_id)][ttime] + 1;
				if (data1[14, idx] = "1") {
					alladm2[l1 + l2 + "saht" + (31)][ttime] <- alladm2[l1 + l2 + "saht" + (31)][ttime] + 1;
				}

			}

		}
		////////////////
		///////////////
		//////////////
		/////////////  
		if (l1 != "") {
			if (data1[13, idx] != " ") {
				ssasfwe <- ssasfwe + 1;
				alladm1[l1 + "bytime"][ttime] <- alladm1[l1 + "bytime"][ttime] + (1.0);
				if (gen < 0) {
					alladm1[l1 + "saht" + (sage)][ttime] <- alladm1[l1 + "saht" + (sage)][ttime] + 1;
				} else {
					alladm1[l1 + "saht" + (8 + sage)][ttime] <- alladm1[l1 + "saht" + (8 + sage)][ttime] + 1;
				}

				alladm1[l1 + "saht" + (16 + hiv_id)][ttime] <- alladm1[l1 + "saht" + (16 + hiv_id)][ttime] + 1;
				alladm1[l1 + "saht" + (23 + treat_id)][ttime] <- alladm1[l1 + "saht" + (23 + treat_id)][ttime] + 1;
				if (data1[14, idx] = "1") {
					alladm1[l1 + "saht" + (31)][ttime] <- alladm1[l1 + "saht" + (31)][ttime] + 1;
				}

			}

		}

		idx <- idx + 1;
	}

	int ssasfwe <- 0;

	//		list<string> TL;
	action sexage {
		string TL <- "";
		int xxx <- 0;
		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			loop n4 from: 0 to: maxnumfield {
				TL <- TL + allid[n1] + "_" + n4 + "," + alladm1[n1 + "saht" + n4].values + "\n";
			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + lsttime + "\n") replace ("'", "")) + TL;
				save TL to: "../js/sexageAdm1" + xxx + ".csv" type: text;
				TL <- "";
			}

			xxx <- xxx + 1;
		}

		////////
		////////
		////////
		xxx <- 0;
		TL <- "";
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				loop n4 from: 0 to: maxnumfield {
					TL <- TL + allid[n1 + n2] + "_" + n4 + "," + alladm2[n1 + n2 + "saht" + n4].values + "\n";
				}

			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + lsttime + "\n") replace ("'", "")) + TL;
				save TL to: "../js/sexageAdm2" + xxx + ".csv" type: text;
				TL <- "";
			}

			xxx <- xxx + 1;
		}

		////////
		////////
		////////
		xxx <- 0;
		TL <- "";
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				loop n3 over: container(amap[n1 + n2]) {
				//					loop n4 from: 0 to: maxnumfield {
				//						TL <- TL + allid[n1 + n2 + n3] + "_" + n4 + "," + alladm3[n1 + n2 + n3 + "saht" + n4].values + "\n";
				//					}
					string n1n2n3 <- n1 + n2 + n3;
					string n1n2n3saht <- n1 + n2 + n3 + "saht";
					string tttt <- "" + allid[n1n2n3] + "_";
					string
					tmp <- ((tttt + 0 + "," + alladm3[n1n2n3saht + 0].values + "\n" + tttt + 1 + "," + alladm3[n1n2n3saht + 1].values + "\n" + tttt + 2 + "," + alladm3[n1n2n3saht + 2].values + "\n" + tttt + 3 + "," + alladm3[n1n2n3saht + 3].values + "\n" + tttt + 4 + "," + alladm3[n1n2n3saht + 4].values + "\n" + tttt + 5 + "," + alladm3[n1n2n3saht + 5].values + "\n" + tttt + 6 + "," + alladm3[n1n2n3saht + 6].values + "\n" + tttt + 7 + "," + alladm3[n1n2n3saht + 7].values + "\n" + tttt + 8 + "," + alladm3[n1n2n3saht + 8].values + "\n" + tttt + 9 + "," + alladm3[n1n2n3saht + 9].values + "\n" + tttt + 10 + "," + alladm3[n1n2n3saht + 10].values + "\n" + tttt + 11 + "," + alladm3[n1n2n3saht + 11].values + "\n" + tttt + 12 + "," + alladm3[n1n2n3saht + 12].values + "\n" + tttt + 13 + "," + alladm3[n1n2n3saht + 13].values + "\n" + tttt + 14 + "," + alladm3[n1n2n3saht + 14].values + "\n" + tttt + 15 + "," + alladm3[n1n2n3saht + 15].values + "\n" + tttt + 16 + "," + alladm3[n1n2n3saht + 16].values + "\n" + tttt + 17 + "," + alladm3[n1n2n3saht + 17].values + "\n" + tttt + 18 + "," + alladm3[n1n2n3saht + 18].values + "\n" + tttt + 19 + "," + alladm3[n1n2n3saht + 19].values + "\n" + tttt + 20 + "," + alladm3[n1n2n3saht + 20].values + "\n" + tttt + 21 + "," + alladm3[n1n2n3saht + 21].values + "\n" + tttt + 22 + "," + alladm3[n1n2n3saht + 22].values + "\n" + tttt + 23 + "," + alladm3[n1n2n3saht + 23].values + "\n" + tttt + 24 + "," + alladm3[n1n2n3saht + 24].values + "\n" + tttt + 25 + "," + alladm3[n1n2n3saht + 25].values + "\n" + tttt + 26 + "," + alladm3[n1n2n3saht + 26].values + "\n" + tttt + 27 + "," + alladm3[n1n2n3saht + 27].values + "\n" + tttt + 28 + "," + alladm3[n1n2n3saht + 28].values + "\n" + tttt + 29 + "," + alladm3[n1n2n3saht + 29].values + "\n" + tttt + 30 + "," + alladm3[n1n2n3saht + 30].values + "\n" + tttt + 31 + "," + alladm3[n1n2n3saht + 31].values + "\n"));
					TL <- TL + tmp;
				}

			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + lsttime + "\n") replace ("'", "")) + TL;
				save TL to: "../js/sexageAdm3" + xxx + ".csv" type: text;
				TL <- "";
			}

			xxx <- xxx + 1;
		}

	}

	action merge {
		file patient_csv_file <- csv_file("../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv", ";", true);
		data1 <- ((patient_csv_file.contents));
		file tcf <- csv_file("../includes/data/GeoSp_VTM_DieuTri_16_20_simple.csv", ";", true);
		matrix data2 <- ((tcf.contents));
		map<string, string> dieutri;
		loop i from: 0 to: data2.rows - 1 {
			dieutri["" + (data2[1, i])] <- "" + data2[4, i];
		}

		file tcfkhang <- csv_file("../includes/data/20211119_lao_map_2_ds.csv", ";", true);
		matrix data3 <- ((tcfkhang.contents));
		map<string, string> khang;
		loop i from: 0 to: data3.rows - 1 {
			khang["" + (data3[0, i])] <- "1";
		}

		loop i from: 0 to: data1.rows - 1 {
			if (dieutri["" + (data1[5, i])] = nil) {
				dieutri["" + (data1[5, i])] <- "";
			}

			if (khang["" + (data1[5, i])] = nil) {
				khang["" + (data1[5, i])] <- "0";
			}

			data1[13, i] <- dieutri["" + (data1[5, i])];
			dieutri["" + (data1[5, i])]<-" ";
			if (data1[13, i] != " ") {
//				write data1[13, i];
				ssasfwe <- ssasfwe + 1;
			}

			data1[14, i] <- khang["" + (data1[5, i])];
			//			if(data1[0,i]="3592560"){
			//			}

		}
		write ssasfwe;
		ssasfwe<-0;
	}

	action gets {
		tnum <- tnum + 1;
		//				TL <- TL replace ("[", "") replace ("]", "");
		//			save TL to: "../js/sexageAdm3.csv" type: text;
		//				do die;
	}

	action timeAdm {
		string TL;
		TL <- ("P," + lsttime + "\n") replace ("'", "");
		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			if (alladm1[n1 + "bytime"] != nil) {
				TL <- TL + allid[n1] + "," + alladm1[n1 + "bytime"].values + "\n";
			}

		}

		TL <- TL replace ("[", "") replace ("]", "");
		//		write TL;
		save TL to: "../js/time/timeAdm1" + outpath + ".csv" type: text;
		//////
		//////
		//////
		TL <- ("," + lsttime + "\n") replace ("'", "");
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				if (alladm2[n1 + n2 + "bytime"] != nil) {
					TL <- TL + allid[n1 + n2] + "," + alladm2[n1 + n2 + "bytime"].values + "\n";
				}

			}

		}

		TL <- TL replace ("[", "") replace ("]", "");
		save TL to: "../js/time/timeAdm2" + outpath + ".csv" type: text;
		//////
		//////
		//////
		TL <- ("," + lsttime + "\n") replace ("'", "");
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				loop n3 over: container(amap[n1 + n2]) {
					if (alladm3[n1 + n2 + n3 + "bytime"] != nil) {
						TL <- TL + allid[n1 + n2 + n3] + "," + alladm3[n1 + n2 + n3 + "bytime"].values + "\n";
					}

				}

			}

		}

		TL <- TL replace ("[", "") replace ("]", "");
		save TL to: "../js/time/timeAdm3" + outpath + ".csv" type: text;
	}

}

species par parallel: false use_individual_shapes: false use_regular_agents: false {
	string n1n2n3; //<-n1 + n2 + n3;
	string n1n2n3saht; //<-n1 + n2 + n3 + "saht" ;
	string tttt; //<-""+allid[n1n2n3]+"_";

}

experiment Display type: gui { //autorun: true {
	action _init_ {
		create simulation with: [fpath::"../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv"];
		//		create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.000", outpath::"0"];
		//		loop i from: 0 to: 9 {
		//			create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.00" + i, outpath::"" + i];
		//		}
		//
		//		loop i from: 10 to: 20 {
		//			create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.0" + i, outpath::"" + i];
		//		}

	}

}
