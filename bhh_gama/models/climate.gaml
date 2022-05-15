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
	int idx2 <- 0;
	int idx3 <- 0;
	list<string> lsttime <- [];
	matrix data1;
	matrix data3;
	matrix data4;
	string outpath <- "";
	//	map<string,> bytime;
	map<string, map<string, int>> alladm1;
	map<string, map<string, int>> alladm2;
	map<string, map<string, int>> alladm3;
	//	string fpath <- "../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv";
	int tnum <- 0;
	int maxnumfield <- 4;
	map<string, int> zero <- []; //["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
	map<string,int>clim<-[];
	list<int> ccclim<-[0,5,5,5,4,4,4,2,2,2,1,1,1];
	init {
		loop i from: 2016 to: 2025 {
			loop j from: 1 to: 12 {
				zero <+ "" + i + "-" + j::0;
				clim["" + i + "-" + j]<-ccclim[j];
			}

		}
		//5 5 5 4 4 4 2 2 2 1 1 1
		do merge;
		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			loop n2 over: container(amap[n1]) {
				loop n3 over: container(amap[n1 + n2]) {
									loop n4 from: 0 to: 1 {
										alladm3[n1 + n2 + n3 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm2[n1 + n2 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm1[n1 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										loop s over: zero.keys {
											alladm3[n1 + n2 + n3 + "pcm" + n4][s] <- rnd(100);
											alladm2[n1 + n2 + "pcm" + n4][s] <- rnd(100);
											alladm1[n1 + "pcm" + n4][s] <- rnd(100);
										}
				
									}
									int n4<-2;
										alladm3[n1 + n2 + n3 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm2[n1 + n2 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm1[n1 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										loop s over: zero.keys {
											alladm3[n1 + n2 + n3 + "pcm" + n4][s] <- rnd(100);
											alladm2[n1 + n2 + "pcm" + n4][s] <- luot[n1+n2];
											alladm1[n1 + "pcm" + n4][s] <- luot[n1];
										}
									n4<-3;
										alladm3[n1 + n2 + n3 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm2[n1 + n2 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm1[n1 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										loop s over: zero.keys {
											alladm3[n1 + n2 + n3 + "pcm" + n4][s] <- rnd(100);
											alladm2[n1 + n2 + "pcm" + n4][s] <- dic[n1+n2];
											alladm1[n1 + "pcm" + n4][s] <- dic[n1];
										}
									
									n4<-4;
										alladm3[n1 + n2 + n3 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm2[n1 + n2 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										alladm1[n1 + "pcm" + n4] <-
										["2016-1"::0, "2016-2"::0, "2016-3"::0, "2016-4"::0, "2016-5"::0, "2016-6"::0, "2016-7"::0, "2016-8"::0, "2016-9"::0, "2016-10"::0, "2016-11"::0, "2016-12"::0, "2017-1"::0, "2017-2"::0, "2017-3"::0, "2017-4"::0, "2017-5"::0, "2017-6"::0, "2017-7"::0, "2017-8"::0, "2017-9"::0, "2017-10"::0, "2017-11"::0, "2017-12"::0, "2018-1"::0, "2018-2"::0, "2018-3"::0, "2018-4"::0, "2018-5"::0, "2018-6"::0, "2018-7"::0, "2018-8"::0, "2018-9"::0, "2018-10"::0, "2018-11"::0, "2018-12"::0, "2019-1"::0, "2019-2"::0, "2019-3"::0, "2019-4"::0, "2019-5"::0, "2019-6"::0, "2019-7"::0, "2019-8"::0, "2019-9"::0, "2019-10"::0, "2019-11"::0, "2019-12"::0, "2020-1"::0, "2020-2"::0, "2020-3"::0, "2020-4"::0, "2020-5"::0, "2020-6"::0, "2020-7"::0];
										loop s over: zero.keys {
											alladm3[n1 + n2 + n3 + "pcm" + n4][s] <- clim[s];
											alladm2[n1 + n2 + "pcm" + n4][s] <- clim[s];
											alladm1[n1 + "pcm" + n4][s] <- clim[s];
										}

				}

			}

		}

		do sexage;
		do die;
		//		do initcsv;
		//		do merge;
	}

	reflex ssP when: idx < data1.rows {
		if (idx < data1.rows - 1) {
		//			do ssss;
		} else {
		//			if (idx2 < data3.rows - 1) {
		//				do mdr;
		//			} else {
		//				if (idx3 < data4.rows - 1) {
		//					do mdrraw;
		//				} else {
			do sexage;
			//			do adm_regionfull;
			do die;
			//				}
			//
			//			}

		}

	}

	map<string, int> dic;
	map<string, int> luot;

	action merge {
		file tcf <- csv_file("../includes/moving.csv", ";", false);
		matrix data2 <- ((tcf.contents));
		loop i from: 0 to: data2.rows - 1 {
//			if (("" + data2[2, i] + data2[1, i]) = "Bà Rịa - Vũng TàuBà Rịa") {
//				write "ssss" + "" + data2[2, i] + data2[1, i];
//			}

			int tmm <- int(data2[8, i]);
			dic["" + data2[2, i] + data2[1, i]] <- int(data2[6, i])*tmm;
			if (tmm = 1) {
				luot["" + data2[2, i] + data2[1, i]] <- rnd(10000);
			}
			if (tmm = 2) {
				luot["" + data2[2, i] + data2[1, i]] <- 10000+rnd(10000);
			}
			if (tmm = 3) {
				luot["" + data2[2, i] + data2[1, i]] <- 20000+rnd(30000);
			}
			if (tmm = 4) {
				luot["" + data2[2, i] + data2[1, i]] <- 50000+rnd(50000);
			}
			if (tmm = 5) {
				luot["" + data2[2, i] + data2[1, i]] <- 100000+rnd(100000);
			}

		}

		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			int tong <- 0;
			int tong2 <- 0;
			int nnn <- 0;
			loop n2 over: container(amap[n1]) {
				if (dic["" + n1 + n2] = nil) {
				//					write n1+amap[n1];
//					write n1;
//					write n2;
				} else {
					tong <- tong + dic["" + n1 + n2];
					tong2 <- tong2 + luot["" + n1 + n2];
					nnn <- nnn + 1;
				}

			}

			dic[n1] <- tong / nnn;
			write n1+""+ dic[n1];
			luot[n1] <- tong2 / nnn;
		}

	}

	//		list<string> TL;
	action sexage {
		string TL <- "";
		int xxx <- 0;
		list<string> cells <- amap["VN"];
		loop n1 over: cells {
			loop n4 from: 0 to: maxnumfield {
				TL <- TL + allid[n1] + "_" + n4 + "," + alladm1[n1 + "pcm" + n4].values + "\n";
			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + zero.keys + "\n") replace ("'", "")) + TL;
				save TL to: "../js/pcmAdm1" + xxx + ".csv" type: text;
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
					TL <- TL + allid[n1 + n2] + "_" + n4 + "," + alladm2[n1 + n2 + "pcm" + n4].values + "\n";
				}

			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + zero.keys + "\n") replace ("'", "")) + TL;
				save TL to: "../js/pcmAdm2" + xxx + ".csv" type: text;
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
					loop n4 from: 0 to: maxnumfield {
						TL <- TL + allid[n1 + n2 + n3] + "_" + n4 + "," + alladm3[n1 + n2 + n3 + "pcm" + n4].values + "\n";
					}
					//					string n1n2n3 <- n1 + n2 + n3;
					//					string n1n2n3pcm <- n1 + n2 + n3 + "pcm";
					//					string tttt <- "" + allid[n1n2n3] + "_";
					//					string
					//					tmp <- ((tttt + 0 + "," + alladm3[n1n2n3pcm + 0].values + "\n" + tttt + 1 + "," + alladm3[n1n2n3pcm + 1].values + "\n" + tttt + 2 + "," + alladm3[n1n2n3pcm + 2].values + "\n" + tttt + 3 + "," + alladm3[n1n2n3pcm + 3].values + "\n" + tttt + 4 + "," + alladm3[n1n2n3pcm + 4].values + "\n" + tttt + 5 + "," + alladm3[n1n2n3pcm + 5].values + "\n" + tttt + 6 + "," + alladm3[n1n2n3pcm + 6].values + "\n" + tttt + 7 + "," + alladm3[n1n2n3pcm + 7].values + "\n" + tttt + 8 + "," + alladm3[n1n2n3pcm + 8].values + "\n" + tttt + 9 + "," + alladm3[n1n2n3pcm + 9].values + "\n" + tttt + 10 + "," + alladm3[n1n2n3pcm + 10].values + "\n" + tttt + 11 + "," + alladm3[n1n2n3pcm + 11].values + "\n" + tttt + 12 + "," + alladm3[n1n2n3pcm + 12].values + "\n" + tttt + 13 + "," + alladm3[n1n2n3pcm + 13].values + "\n" + tttt + 14 + "," + alladm3[n1n2n3pcm + 14].values + "\n" + tttt + 15 + "," + alladm3[n1n2n3pcm + 15].values + "\n" + tttt + 16 + "," + alladm3[n1n2n3pcm + 16].values + "\n" + tttt + 17 + "," + alladm3[n1n2n3pcm + 17].values + "\n" + tttt + 18 + "," + alladm3[n1n2n3pcm + 18].values + "\n" + tttt + 19 + "," + alladm3[n1n2n3pcm + 19].values + "\n" + tttt + 20 + "," + alladm3[n1n2n3pcm + 20].values + "\n" + tttt + 21 + "," + alladm3[n1n2n3pcm + 21].values + "\n" + tttt + 22 + "," + alladm3[n1n2n3pcm + 22].values + "\n" + tttt + 23 + "," + alladm3[n1n2n3pcm + 23].values + "\n" + tttt + 24 + "," + alladm3[n1n2n3pcm + 24].values + "\n" + tttt + 25 + "," + alladm3[n1n2n3pcm + 25].values + "\n" + tttt + 26 + "," + alladm3[n1n2n3pcm + 26].values + "\n" + tttt + 27 + "," + alladm3[n1n2n3pcm + 27].values + "\n" + tttt + 28 + "," + alladm3[n1n2n3pcm + 28].values + "\n" + tttt + 29 + "," + alladm3[n1n2n3pcm + 29].values + "\n" + tttt + 30 + "," + alladm3[n1n2n3pcm + 30].values + "\n" + tttt + 31 + "," + alladm3[n1n2n3pcm + 31].values + "\n" + tttt + 32 + "," + alladm3[n1n2n3pcm + 32].values + "\n"));
					//					TL <- TL + tmp;
				}

			}

			if ((xxx > 0 and xxx mod 10 = 0) or (xxx = 62)) {
				xxx <- xxx = 62 ? 70 : xxx;
				TL <- TL replace ("[", "") replace ("]", "");
				TL <- (("P," + zero.keys + "\n") replace ("'", "")) + TL;
				save TL to: "../js/pcmAdm3" + xxx + ".csv" type: text;
				TL <- "";
			}

			xxx <- xxx + 1;
		}

	}

}

species par parallel: false use_individual_shapes: false use_regular_agents: false {
	string n1n2n3; //<-n1 + n2 + n3;
	string n1n2n3pcm; //<-n1 + n2 + n3 + "pcm" ;
	string tttt; //<-""+allid[n1n2n3]+"_";

}

experiment Display type: gui { //autorun: true {
//	action _init_ {
//		create simulation with: [fpath::"../includes/data/GeoSp_VTM_KhamBenh_16_20_gender_age.csv"];
//		//		create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.000", outpath::"0"];
//		//		loop i from: 0 to: 9 {
//		//			create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.00" + i, outpath::"" + i];
//		//		}
//		//
//		//		loop i from: 10 to: 20 {
//		//			create simulation with: [fpath::"../includes/GeoSp_VTM_KhamBenh_16_20_adm.0" + i, outpath::"" + i];
//		//		}
//
//	}

}