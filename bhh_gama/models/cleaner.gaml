/***
* Name: Corona
* Author: hqngh
* Description: 
* Tags: Tag1, Tag2, TagN
***/
model Parameters

global {
	string l1;
	string l2;
	string l3<-"";

	action cleaning {
		if (l1 = "Hà nội II") {
			l1 <- "Hà Nội";
		}

		if (l1 contains "oà") {
			l1 <- l1 replace ("oà", "òa");
		}

		if (l1 contains "uỷ") {
			l1 <- l1 replace ("uỷ", "ủy");
		}

		if (l2 contains "Quận ") {
			l2 <- l2 replace ("Quận ", "");
		}

		if (l2 contains "Thị xã ") {
			l2 <- l2 replace ("Thị xã ", "");
		}

		if (l2 contains "Thị Xã ") {
			l2 <- l2 replace ("Thị Xã ", "");
		}

		if (l2 contains "Huyện ") {
			l2 <- l2 replace ("Huyện ", "");
		}

		if (l2 contains "Huyên ") {
			l2 <- l2 replace ("Huyên ", "");
		}

		if (l2 contains "TP. ") {
			l2 <- l2 replace ("TP. ", "");
		}

		if (l2 contains "Thành phố ") {
			l2 <- l2 replace ("Thành phố ", "");
		}

		if (l2 contains "Thành Phố ") {
			l2 <- l2 replace ("Thành Phố ", "");
		}

		if (l2 contains "oà") {
			l2 <- l2 replace ("oà", "òa");
		}

		if (l2 contains "uỷ") {
			l2 <- l2 replace ("uỷ", "ủy");
		}

		if (l2 contains "Cữu") {
			l2 <- l2 replace ("Cữu", "Cửu");
		}

		if (l2 contains "Măng Thít") {
			l2 <- l2 replace ("Măng Thít", "Mang Thít");
		}

		if (l1 + l2 = "Bà Rịa - Vũng TàuPhú Mỹ") {
			l2 <- "Tân Thành";
		}

		if (l1 + l2 = "Đắk LắkLăk") {
			l2 <- "Lắk";
		}

		if (l1 + l2 = "Hải PhòngAn Hải/An dương") {
			l2 <- "An Dương";
		}

		if (l1 + l2 = "Nam ĐịnhNghĩa Bình") {
			l2 <- "Nghĩa Hưng";
		}

		if (l1 + l2 = "Hưng YênKHóai Châu") {
			l2 <- "Khoái Châu";
		}

		if (l1 + l2 = "Đắk NôngĐăk Song") {
			l2 <- "Đắk Song";
		}

		if (l1 + l2 = "Đắk NôngĐăk R'Lấp") {
			l2 <- "Đắk R'Lấp";
		}

		if (l1 + l2 = "Đắk NôngĐăk G'Long") {
			l2 <- "Đăk Glong";
		}

		if (l1 + l2 = "Đắk NôngCư Jứt") {
			l2 <- "Cư Jút";
		}

		if (l1 + l2 = "Đắk NôngĐăck Mil") {
			l2 <- "Đắk Mil";
		}

		if (l1 + l2 = "Đắk LắkKrông Ana") {
			l2 <- "Krông A Na";
		}

		if (l1 + l2 = "Đắk LắkKrông Nô") {
			l1 <- "Đắk Nông";
		}

		if (l1 + l2 = "Đắk LắkKrông Buk") {
			l2 <- "Krông Búk";
		}

		if (l1 + l2 = "Đắk LắkCư M'Gar") {
			l2 <- "Cư M'gar";
		}

		if (l1 + l2 = "Gia LaiĐắk Pơ") {
			l2 <- "Đăk Pơ";
		}

		if (l1 + l2 = "Hải PhòngĐảo Bạch Long Vĩ") {
			l2 <- "Bạch Long Vĩ";
		}

		if (l1 + l2 = "Gia LaiKbang") {
			l2 <- "KBang";
		}

		if (l1 + l2 = "Nam ĐịnhNam Ninh") {
			l2 <- "Nam Trực";
		}

		if (l1 + l2 = "Kon TumIa H'Drai") {
			l2 <- "Ia H' Drai";
		}

		if (l1 + l2 = "An GiangBình Chánh") {
			l1 <- "TP. Hồ Chí Minh";
		}

		if (l1 + l2 = "Quảng NinhChí Linh") {
			l1 <- "Hải Dương";
		}

		if (l1 + l2 = "Quảng NgãiHội An") {
			l1 <- "Quảng Nam";
		}

		if (l1 + l2 = "Phú YênHạ Hòa") {
			l1 <- "Phú Thọ";
		}

		if (l1 + l2 = "TP. Hồ Chí MinhĐịnh Quán") {
			l1 <- "Đồng Nai";
		}

		if (l1 + l2 = "Bình ĐịnhThủ Đức") {
			l1 <- "TP. Hồ Chí Minh";
		}

		if (l1 + l2 = "Kon TumĐắk GLei") {
			l2 <- "Đắk Glei";
		}

		if (l1 + l2 = "Sóc TrăngThanh Trị") {
			l2 <- "Thạnh Trị";
		}

		if (l1 + l2 = "Tuyên QuangNa Hang") {
			l2 <- "Nà Hang";
		}

		if (l1 + l2 = "Hà NộiMê Linh - Phúc yên") {
			l2 <- "Mê Linh";
		}

		if (l1 + l2 = "Hà NộiƯng Hòa") {
			l2 <- "Ứng Hòa";
		}

		if (l1 + l2 = "Bình ThuậnPhú Quý") {
			l2 <- "Phú Quí";
		}

		if (l1 + l2 = "Sóc TrăngCu Lao Dung") {
			l2 <- "Cù Lao Dung";
		}

		if (l1 + l2 = "Ninh ThuậnPhan Rang - Tháp Chàm") {
			l2 <- "Phan Rang-Tháp Chàm";
		}
		/////l3
		if (l3 contains "Phường ") {
			l3 <- l3 replace ("Phường ", "");
		}

		if (l3 contains "phường ") {
			l3 <- l3 replace ("phường ", "");
		}

		if (l3 contains "Thị xã ") {
			l3 <- l3 replace ("Thị xã ", "");
		}

		if (l3 contains "Xã ") {
			l3 <- l3 replace ("Xã ", "");
		}

		if (l3 contains "xã ") {
			l3 <- l3 replace ("xã ", "");
		}

		if (l3 contains "TX ") {
			l3 <- l3 replace ("TX ", "");
		}

		if (l3 contains "Thị trấn ") {
			l3 <- l3 replace ("Thị trấn ", "");
		}

		if (l3 contains "T.trấn ") {
			l3 <- l3 replace ("T.trấn ", "");
		}

		if (l3 contains "Thị Trấn ") {
			l3 <- l3 replace ("Thị Trấn ", "");
		}

		if (l3 contains "thị trấn ") {
			l3 <- l3 replace ("thị trấn ", "");
		}

		if (l3 contains "TT ") {
			l3 <- l3 replace ("TT ", "");
		}

		if (l3 contains "P ") {
			l3 <- l3 replace ("P ", "");
		}

		if (l3 contains "PH") {
			l3 <- l3 replace ("PH", "Phs");
		}

		if (l3 contains "uỵ") {
			l3 <- l3 replace ("uỵ", "ụy");
		}

		if (l3 contains "oà") {
			l3 <- l3 replace ("oà", "òa");
		}

		if (l3 contains "uỷ") {
			l3 <- l3 replace ("uỷ", "ủy");
		}

		//		if (l1 contains "Hồ Chí Minh" and l2 != "" and length(l2) < 3) {
		//			l2 <- "Quận " + l2;
		//		}
		//		if (l3 != "" and length(l3) < 3) {
		//			l3 <- "" + l3;
		//		}
		if (l3 contains "Binh Hưng Hòa") {
			l3 <- l3 replace ("Binh Hưng Hòa", "Bình Hưng Hòa");
		}

		if (l3 contains "Hòa KhánhBắc") {
			l3 <- l3 replace ("Hòa KhánhBắc", "Hòa Khánh Bắc");
		}

		if (l3 contains "Quan Thánh") {
			l3 <- l3 replace ("Quan Thánh", "Quán Thánh");
		}

		if (l3 contains "ích Hậu") {
			l3 <- l3 replace ("ích Hậu", "Ích Hậu");
		}

		if (l3 contains "Phsú Thạnh") {
			l3 <- l3 replace ("Phsú Thạnh", "Phú Thạnh");
		}

		if (l3 contains "óc Eo") {
			l3 <- l3 replace ("óc Eo", "Óc Eo");
		}

		if (l1 + l2 + l3 = "Bà Rịa - Vũng TàuVũng Tàu6") {
			l3 <- "Thắng Nhì";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngVĩnh ChâuVĩnh Châu") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐăk GlongĐắk Rmăng") {
			l3 <- "Đắk R'Măng";
			return;
		}

		if (l1 + l2 + l3 = "Bắc GiangYên DũngTân Mỹ") {
			l2 <- "Bắc Giang";
			return;
		}

		if (l1 + l2 + l3 = "Bắc GiangYên ThếCanh Lậu") {
			l3 <- "Canh Nậu";
			return;
		}

		if (l1 + l2 + l3 = "Bạc LiêuGiá RaiGiá Rai") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "Bạc LiêuGiá RaiPhong Thạnh Đông A") {
			l3 <- "Phong Thạnh Đông";
			return;
		}

		if (l1 + l2 + l3 = "Bắc NinhThuận ThànhHồ") {
			l3 <- "Hồ";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreBa TriPhước Ngãi") {
			l3 <- "Phú Ngãi";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreBến TreAn Hội") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreBến TreChâu Bình") {
			l2 <- "Giồng Trôm";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreBình ĐạiTân Thạch") {
			l2 <- "Châu Thành";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreMỏ Cày NamBình Khánh") {
			l3 <- "Bình Khánh Đông";
			return;
		}

		if (l1 + l2 + l3 = "Bến TreMỏ Cày NamPhú Tân") {
			l2 <- "Bến Tre";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngBàu BàngCây Trường") {
			l3 <- "Cây Trường II";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngBến CátBàu Bàng") {
			l2 <- "An Điền";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngBến CátHưng Hòa") {
			l2 <- "Bàu Bàng";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngBến CátLai Hưng") {
			l2 <- "Bàu Bàng";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngBến CátLai Uyên") {
			l3 <- "Bàu Bàng";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngDĩ AnTam Phú") {
			l3 <- "Dĩ An";
			return;
		}

		if (l1 + l2 + l3 = "Bắc KạnBạch ThôngQuân Hà") {
			l3 <- "Quân Bình";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngPhú GiáoPhú Cường") {
			l3 <- "Phước Hòa";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênBình Mỹ") {
			l3 <- "Khánh Bình";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênHiếu Liêm") {
			l3 <- "Khánh Bình";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênLạc An") {
			l3 <- "Khánh Bình";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênTân Bình") {
			l3 <- "Tân Hiệp";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênTân Định") {
			l3 <- "Tân Hiệp";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênTân Mỹ") {
			l3 <- "Tân Vĩnh Hiệp";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênTân Thành") {
			l3 <- "Vĩnh Tân";
			return;
		}

		if (l1 + l2 + l3 = "Bình DươngTân UyênThường Tân") {
			l3 <- "Thái Hòa";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcBù ĐốpTân Tiến 2") {
			l3 <- "Tân Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcBù Gia MậpBình Phước") {
			l3 <- "Bình Thắng";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcBù Gia MậpBù Nho") {
			l3 <- "Đức Hạnh";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcBù Gia MậpĐak ơ") {
			l3 <- "Đak Ơ";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcBù Gia MậpPhú Trung") {
			l3 <- "Phú Văn";
			return;
		}

		if (l1 + l2 + l3 = "Bình PhướcĐồng PhúTiến Hưng") {
			l3 <- "Tân Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Bình ThuậnTánh LinhXuân An") {
			l3 <- "Gia An";
			return;
		}

		if (l1 + l2 + l3 = "Cà MauCái NướcHoa Mỹ") {
			l3 <- "Hòa Mỹ";
			return;
		}

		if (l1 + l2 + l3 = "Cần ThơNinh KiềuAn Lạc Thôn") {
			l3 <- "An Lạc";
			return;
		}

		if (l1 + l2 + l3 = "Cần ThơVĩnh ThạnhThạnh Quới") {
			l3 <- "Thạnh Qưới";
			return;
		}

		if (l1 + l2 + l3 = "Cao BằngBảo LâmPác Mi ầu") {
			l3 <- "Pác Miầu";
			return;
		}

		if (l1 + l2 + l3 = "Cao BằngBảo LâmTháI Sơn") {
			l3 <- "Thái Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Cao BằngPhục HòaTriệu ẩu") {
			l3 <- "Triệu Ẩu";
			return;
		}

		if (l1 + l2 + l3 = "Cao BằngTrùng KhánhĐòai Dương") {
			l3 <- "Đòai Côn";
			return;
		}

		if (l1 + l2 + l3 = "Cao BằngTrùng KhánhQuang Vinh") {
			l3 <- "Trùng Khánh";
			return;
		}

		if (l1 + l2 + l3 = "Đà NẵngHải ChâuHải Châu  I") {
			l3 <- "Hải Châu I";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkBuôn HồEa Drong") {
			l3 <- "Ea Drông";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkBuôn HồEaBlang") {
			l3 <- "Ea Blang";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkBuôn Ma ThuộtEa R'Bin") {
			l3 <- "Bàu Bàng";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkEa KarCư Elang") {
			l3 <- "Cư ELang";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkEa KarCư Jang") {
			l3 <- "Cư Yang";
			return;
		}

		if (l1 + l2 + l3 = "Đắk LắkM'ĐrắkKRông á") {
			l3 <- "Krông Á";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngCư JútĐắk Rông") {
			l3 <- "Đắk DRông";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐắk MilĐắk Ndrót") {
			l3 <- "Đắk N'Drót";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐắk MilĐắk Rla") {
			l3 <- "Đắk R'La";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐắk SongĐắk Ndrung") {
			l3 <- "Đắk N'Dung";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐắk SongĐắk Rung") {
			l3 <- "Đắk N'Dung";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngĐắk SongNâm Njang") {
			l3 <- "Nâm N'Jang";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngGia NghĩaĐắk R'Moan") {
			l3 <- "Đăk R'Moan";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngGia NghĩaQuảng Tâm") {
			l3 <- "Quảng Thành";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngGia NghĩaGia Nghĩa") {
			l3 <- "Nghĩa Tân";
			return;
		}

		if (l1 + l2 + l3 = "Đắk NôngKrông NôNâm Dir") {
			l3 <- "Nâm N'Đir";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênĐiện Biên ĐôngNoong U") {
			l3 <- "Nong U";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênMường ẢngẢng Cang") {
			l3 <- "Ẳng Cang";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênMường ẢngẢng Nưa") {
			l3 <- "Ẳng Nưa";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênMường ẢngẢng Tở") {
			l3 <- "Ẳng Tở";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênMường ChàHuổi Mì") {
			l3 <- "Huổi Mí";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênNậm PồNà Nưa") {
			l3 <- "Chà Nưa";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênTủa ChùaSín Chải") {
			l3 <- "Xín Chải";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênTủa ChùaXá Nhè") {
			l3 <- "Sáng Nhè";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênTuần GiáoNà Tòong") {
			l3 <- "Nà Tòng";
			return;
		}

		if (l1 + l2 + l3 = "Điện BiênTuần GiáoPu Xi") {
			l3 <- "Pú Xi";
			return;
		}

		if (l1 + l2 + l3 = "Đồng NaiBiên HòaAn Phú Đông") {
			l3 <- "An Hòa";
			return;
		}

		if (l1 + l2 + l3 = "Đồng NaiĐịnh QuánPhú Ninh") {
			l3 <- "Phú Vinh";
			return;
		}

		if (l1 + l2 + l3 = "Đồng ThápCao LãnhHòa An") {
			l3 <- "Hòa An";
			return;
		}

		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhHòa Thuận") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhMỹ Ngãi") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhMỹ Phú") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhMỹ Tân") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhMỹ Trà") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh1") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh11") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh2") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh3") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh4") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao Lãnh6") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhTân Thuận Đông") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhTân Thuận Tây") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Đồng ThápCao LãnhTịnh Thới") {
		//			l3 <- ""; return;
		//		}

		//		if (l1 + l2 + l3 = "Đồng ThápXã An LongAn Long") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Gia LaiChư SêAl Bá") {
			l3 <- "AL Bá";
			return;
		}

		if (l1 + l2 + l3 = "Gia LaiĐăk ĐoaĐak Krong") {
			l3 <- "Đăk Krong";
			return;
		}

		if (l1 + l2 + l3 = "Gia LaiĐăk ĐoaH' Neng") {
			l3 <- "H'Neng";
			return;
		}

		if (l1 + l2 + l3 = "Gia LaiKông ChroĐắk Cơ Ning") {
			l3 <- "Đắk Kơ Ning";
			return;
		}

		if (l1 + l2 + l3 = "Gia LaiPleikuChư á") {
			l3 <- "Chư Á";
			return;
		}

		if (l1 + l2 + l3 = "Hà GiangBắc MêBắc Mê") {
			l3 <- "Đường Âm";
			return;
		}

		//		if (l1 + l2 + l3 = "Hà GiangHà Giangxã Ngọc Đường") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Hà GiangHà Giangxã Phương Độ") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Hà GiangHà Giangxã Phương Thiện") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Hà GiangMèo VạcPảy Lủng") {
			l3 <- "Pải Lủng";
			return;
		}

		if (l1 + l2 + l3 = "Hà GiangXín MầnNà Trì") {
			l3 <- "Nà Chì";
			return;
		}

		if (l1 + l2 + l3 = "Hà GiangXín MầnNgàn Chiên") {
			l3 <- "Ngán Chiên";
			return;
		}

		//		if (l1 + l2 + l3 = "Hà NamDuy TiênThị xã Hòa Mạc") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Hà NamDuy TiênTiên Phong") {
			l3 <- "Tiền Phong";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamDuy TiênTiên Sơn") {
			l3 <- "Tiên Nội";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamKim BảngNguyễn úy") {
			l3 <- "Nguyễn Úy";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamLý NhânTrần Hưng Đạo") {
			l3 <- "Nhân Đạo";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamNghĩa BìnhTiến Thắng") {
			l2 <- "Lý Nhân";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamPhủ LýLam Hạ") {
			l3 <- "Lam Hà";
			return;
		}

		if (l1 + l2 + l3 = "Hà NamThanh LiêmTân Thanh") {
			l3 <- "Thanh Tân";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiBa ĐìnhTrung Trực") {
			l3 <- "Kim Mã";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiBắc Từ LiêmPhương Canh") {
			l3 <- "Đông Ngạc";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiBắc Từ LiêmThanh Xuân") {
			l3 <- "Xuân Đỉnh";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiĐống ĐaĐồng Tâm") {
			l3 <- "Quốc Tử Giám";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiHai Bà TrưngBích Động") {
			l3 <- "Bạch Mai";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiPhúc ThọSen Phương") {
			l3 <- "Thượng Cốc";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiSóc SơnĐường Lâm") {
			l3 <- "Đông Xuân";
			return;
		}

		if (l1 + l2 + l3 = "Hà NộiThanh TrìĐại áng") {
			l3 <- "Đại Áng";
			return;
		}

		//		if (l1 + l2 + l3 = "Hà NộiVăn YênYên Hợp") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Hà TĩnhCẩm XuyênCẩm Vịnh") {
			l3 <- "Cẩm Vĩnh";
			return;
		}

		if (l1 + l2 + l3 = "Hà TĩnhCan LộcCan Lộc") {
			l3 <- "Khánh Lộc";
			return;
		}

		if (l1 + l2 + l3 = "Hà TĩnhĐức ThọTùng ảnh") {
			l3 <- "Tùng Ảnh";
			return;
		}

		if (l1 + l2 + l3 = "Hà TĩnhNghi XuânCổ Đạm") {
			l3 <- "Cỗ Đạm";
			return;
		}

		if (l1 + l2 + l3 = "Hà TĩnhThạch HàMỹ Lộc") {
			l3 <- "Việt Xuyên";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngBình GiangVĩnh Hưng") {
			l3 <- "Vĩnh Hồng";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngCẩm GiàngĐịnh Sơn") {
			l3 <- "Cẩm Định";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngChí LinhTân Hưng") {
			l3 <- "Tân Dân";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngGia LộcHòang Hoa Thám") {
			l3 <- "Hòang Diệu";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngHải DươngGia Xuyên") {
			l2 <- "Gia Lộc";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngHải DươngLiên Hồng") {
			l3 <- "Nhị Châu";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngHải DươngNgọc Sơn") {
			l3 <- "Thanh Bình";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngHải DươngTiền Tiến") {
			l3 <- "Thạch Khôi";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKim ThànhĐồng Cầm") {
			l3 <- "Đồng Gia";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKim ThànhKim Liên") {
			l3 <- "Kim Khê";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKim ThànhPhúc Thành") {
			l3 <- "Ngũ Phúc";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKim ThànhTuấn Việt") {
			l3 <- "Tuấn Hưng";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKinh MônAn Lưu") {
			l3 <- "An Phụ";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKinh MônPhạm Thái") {
			l3 <- "Phạm Mệnh";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKinh MônQuang Thành") {
			l3 <- "Quang Trung";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngKinh MônKinh Môn") {
			l3 <- "";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngNinh Giangứng Hoè") {
			l3 <- "Ứng Hoè";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngThanh HàAn Phượng") {
			l3 <- "An Lương";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngThanh HàPhương Hòang") {
			l3 <- "Phượng Hòang";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngThanh HàThanh Quang") {
			l3 <- "Thanh An";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngThanh MiệnHồng Phong") {
			l3 <- "Hồng Quang";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngTứ KỳBình Lãng") {
			l3 <- "Bình Lăng";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngTứ KỳChí Minh") {
			l3 <- "Dân Chủ";
			return;
		}

		if (l1 + l2 + l3 = "Hải DươngTứ KỳĐại Sơn") {
			l3 <- "Kỳ Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Hải PhòngAn LãoAn Hưng") {
			l3 <- "An Thắng";
			return;
		}

		if (l1 + l2 + l3 = "Hải PhòngHải AnĐông HảI 1") {
			l3 <- "Đông Hải 1";
			return;
		}

		if (l1 + l2 + l3 = "Hải PhòngHải AnĐông HảI 2") {
			l3 <- "Đông Hải 2";
			return;
		}

		if (l1 + l2 + l3 = "Hải PhòngKiến ThụyĐối") {
			l3 <- "Đại Đồng";
			return;
		}

		if (l1 + l2 + l3 = "Hải PhòngKim ThànhLê Thiện") {
			l2 <- "An Dương";
			return;
		}

		if (l1 + l2 + l3 = "Hậu GiangChâu Thành ANhơn nghĩa A") {
			l3 <- "Nhơn Nghĩa A";
			return;
		}

		if (l1 + l2 + l3 = "Hậu GiangChâu ThànhNgã sáu") {
			l3 <- "Ngã Sáu";
			return;
		}

		if (l1 + l2 + l3 = "Hậu GiangNgã BảyLáI Hiếu") {
			l3 <- "Lái Hiếu";
			return;
		}

		if (l1 + l2 + l3 = "Hậu GiangPhụng HiệpPhương Bình") {
			l3 <- "Phương Bình";
			return;
		}

		if (l1 + l2 + l3 = "Hậu GiangPhụng HiệpPhương Phú") {
			l3 <- "Phương Phú";
			return;
		}
		//
		//		if (l1 + l2 + l3 = "Hậu GiangVị ThanhI") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Hậu GiangVị ThanhIV") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Hậu GiangVị ThanhV") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Hòa BìnhHòa BìnhĐộc Lập") {
			l3 <- "Dân Chủ";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhKim BôiHợp Tiến") {
			l3 <- "Hùng Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhKim BôiHùng Sơn") {
			l3 <- "Hợp Đồng";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhKim BôiKim Lập") {
			l3 <- "Kim Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhKim BôiBo") {
			l3 <- "Thượng Bì";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhKim BôiXuân Thủy") {
			l3 <- "Sơn Thủy";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhLạc SơnQuyết Thắng") {
			l3 <- "Quý Hòa";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhLương SơnCao Sơn") {
			l3 <- "Định Cư";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhLương SơnThanh Sơn") {
			l3 <- "Tiến Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhMai ChâuĐồng Tân") {
			l3 <- "Đồng Bảng";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhMai ChâuSăm Khòe") {
			l3 <- "Săm Khóe";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhMai ChâuTân Thành") {
			l3 <- "Tân Mai";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhMai ChâuThành Sơn") {
			l3 <- "Tân Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhTân LạcNhân Mỹ") {
			l3 <- "Ngọc Mỹ";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhTân LạcSuối Hoa") {
			l3 <- "Tử Nê";
			return;
		}

		if (l1 + l2 + l3 = "Hòa BìnhTân LạcVân Sơn") {
			l3 <- "Tuân Lộ";
			return;
		}

		if (l1 + l2 + l3 = "Hưng YênÂn ThiPhù ủng") {
			l3 <- "Phù Ủng";
			return;
		}

		if (l1 + l2 + l3 = "Hưng YênKhoái ChâuKHóai Châu") {
			l3 <- "Khoái Châu";
			return;
		}

		if (l1 + l2 + l3 = "Hưng YênTiên LữĐòan Đào") {
			l2 <- "Phù Cừ";
			return;
		}

		if (l1 + l2 + l3 = "Hưng YênTiên LữMinh Phương") {
			l3 <- "Minh Phượng";
			return;
		}

		if (l1 + l2 + l3 = "Khánh HòaDiên KhánhBình Lộc") {
			l3 <- "Diên Lộc";
			return;
		}

		if (l1 + l2 + l3 = "Khánh HòaNinh HòaNinh Hòa") {
			l3 <- "Ninh Hiệp";
			return;
		}

		if (l1 + l2 + l3 = "Khánh HòaNinh HòaNinh ích") {
			l3 <- "Ninh Ích";
			return;
		}

		if (l1 + l2 + l3 = "Kiên GiangGiồng RiềngGiồng Giềng") {
			l3 <- "Giồng Riềng";
			return;
		}

		if (l1 + l2 + l3 = "Kiên GiangGò QuaoThủy Liểu") {
			l3 <- "Thủy Liễu";
			return;
		}

		if (l1 + l2 + l3 = "Kon TumĐắk HàĐăk Ngok") {
			l3 <- "Đăk Ngọk";
			return;
		}

		if (l1 + l2 + l3 = "Kon TumĐắk TôĐăk Rơ Nga") {
			l3 <- "Đắk Rơ Nga";
			return;
		}

		if (l1 + l2 + l3 = "Kon TumĐắk TôĐăk Trăm") {
			l3 <- "Đắk Trăm";
			return;
		}

		if (l1 + l2 + l3 = "Kon TumTu Mơ RôngĐăk Rơ Ông") {
			l3 <- "Đắk Rơ Ông";
			return;
		}

		if (l1 + l2 + l3 = "Lai ChâuLai ChâuMường Tè") {
			l3 <- "Đông Phong";
			return;
		}

		if (l1 + l2 + l3 = "Lai ChâuMường TèPa ủ") {
			l3 <- "Pa Ủ";
			return;
		}

		if (l1 + l2 + l3 = "Lai ChâuMường TèPa Vệ Sủ") {
			l3 <- "Pa Vệ Sử";
			return;
		}

		if (l1 + l2 + l3 = "Lai ChâuNậm NhùnHua Bum") {
			l3 <- "Hua Bun";
			return;
		}

		if (l1 + l2 + l3 = "Lai ChâuSìn HồPa Khóa") {
			l3 <- "Pa Khoá";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngCát TiênĐồng Nai") {
			l3 <- "Đồng Nai Thượng";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngCát TiênPhước Cát") {
			l3 <- "Phước Cát 1";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngĐam RôngĐạ KNàng") {
			l3 <- "Đạ K' Nàng";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngĐam RôngĐạ M'Rong") {
			l3 <- "Đạ M' Rong";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngĐam RôngLiêng S'Roin") {
			l3 <- "Liêng Srônh";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngĐơn DươngKa Đơn (Deune)") {
			l3 <- "Ka Đơn";
			return;
		}

		if (l1 + l2 + l3 = "Lâm ĐồngLạc DươngĐa Nhim") {
			l3 <- "Đạ Nhim";
			return;
		}

		if (l1 + l2 + l3 = "Lạng SơnBắc SơnĐồng ý") {
			l3 <- "Đồng Ý";
			return;
		}

		if (l1 + l2 + l3 = "Lạng SơnĐình LậpN T Thái Bình") {
			l3 <- "NT Thái Bình";
			return;
		}

		if (l1 + l2 + l3 = "Lạng SơnLộc Bìnhái Quốc") {
			l3 <- "Ái Quốc";
			return;
		}

		if (l1 + l2 + l3 = "Lạng SơnLộc BìnhYên KHóai") {
			l3 <- "Yên Khoái";
			return;
		}

		if (l1 + l2 + l3 = "Lạng SơnTràng ĐịnhBắc ái") {
			l3 <- "Bắc Ái";
			return;
		}

		if (l1 + l2 + l3 = "Lào CaiBảo YênPhúc Khánh") {
			l3 <- "Thượng Hà";
			return;
		}

		if (l1 + l2 + l3 = "Lào CaiLào CaiCốc San") {
			l3 <- "Cốc Lếu";
			return;
		}

		if (l1 + l2 + l3 = "Lào CaiSa PaMường Bo") {
			l3 <- "San Sả Hồ";
			return;
		}

		if (l1 + l2 + l3 = "Lào CaiSa PaNgũ Chỉ Sơn") {
			l3 <- "Nậm Sài";
			return;
		}

		if (l1 + l2 + l3 = "Lào CaiSi Ma CaiBản Mê") {
			l3 <- "Bản Mế";
			return;
		}

		if (l1 + l2 + l3 = "Long AnBến LứcThạnh Lợi") {
			l3 <- "Thạnh Lợi";
			return;
		}

		if (l1 + l2 + l3 = "Long AnBến LứcThanh Phú") {
			l3 <- "Thạnh Phú";
			return;
		}

		if (l1 + l2 + l3 = "Long AnCần GiuộcPhước Vĩnh Đông") {
			l3 <- "Phước Vĩnh Đông";
			return;
		}

		if (l1 + l2 + l3 = "Long AnCần GiuộcTam Phước") {
			l3 <- "Tân Tập";
			return;
		}

		if (l1 + l2 + l3 = "Long AnMộc HóaMộc Hóa") {
			l3 <- "Bình Hòa Đông";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhNghĩa HưngBà Triệu") {
			l3 <- "Liễu Đề";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhNghĩa HưngTrực Hưng") {
			l3 <- "Nghĩa Trung";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhNghĩa HưngTrực Nội") {
			l3 <- "Nghĩa Đồng";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhNghĩa HưngTrực Thuận") {
			l3 <- "Nghĩa Tân";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhVụ BảnDi Trạch") {
			l3 <- "Đại Thắng";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhXuân TrườngHải Vân") {
			l3 <- "Xuân Ngọc";
			return;
		}

		if (l1 + l2 + l3 = "Nam ĐịnhXuân TrườngNghĩa Phong") {
			l3 <- "Xuân Phong";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnCửa LòCửa Lò") {
			l3 <- "Nghi Tân";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnHòang MaiQuỳnh Dỵ") {
			l3 <- "Quỳnh Dị";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnHưng NguyênHưng Yên Nam") {
			l3 <- "Hưng Yên";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnKỳ SơnKỳ Sơn") {
			l3 <- "Mỹ Lý";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnKỳ SơnMường ải") {
			l3 <- "Mường Ải";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnQuỳnh LưuQuỳnh Diễn") {
			l3 <- "Quỳnh Diện";
			return;
		}

		if (l1 + l2 + l3 = "Nghệ AnTương DươngLượng Minh") {
			l3 <- "Lưỡng Minh";
			return;
		}

		//		if (l1 + l2 + l3 = "Ninh BìnhGia ViễnMe") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Ninh BìnhNho QuanMe") {
			l2 <- "Gia Viễn";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọHạ Hòaấm Hạ") {
			l3 <- "Ấm Hạ";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọHạ HòaBVĐK Hạ Hòa") {
			l3 <- "Hạ Hòa";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọHạ HòaXuân áng") {
			l3 <- "Xuân Áng";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọTam NôngHưng Hóa") {
			l3 <- "Hưng Hoá";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọThanh SơnThạch KHóan") {
			l3 <- "Thạch Khoán";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọThanh ThủyBVĐK Thanh Thủy") {
			l3 <- "Thanh Thủy";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọThanh ThủyLa Phù") {
			l3 <- "Tu Vũ";
			return;
		}

		if (l1 + l2 + l3 = "Phú ThọViệt TrìAn Hòa") {
			l3 <- "Hy Cương";
			return;
		}

		if (l1 + l2 + l3 = "Phú YênSông HinhEa Bar") {
			l3 <- "EaBar";
			return;
		}

		if (l1 + l2 + l3 = "Phú YênSông HinhEa Bia") {
			l3 <- "EaBia";
			return;
		}

		if (l1 + l2 + l3 = "Quảng BìnhBố TrạchHải Phú") {
			l3 <- "Hải Trạch";
			return;
		}

		if (l1 + l2 + l3 = "Quảng BìnhBố TrạchPhong Nha") {
			l3 <- "Phúc Trạch";
			return;
		}

		//		if (l1 + l2 + l3 = "Quảng BìnhHải ChâuHòa Cường Nam") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Quảng BìnhQuảng TrạchLiên Trường") {
			l3 <- "Quảng Liên";
			return;
		}

		if (l1 + l2 + l3 = "Quảng BìnhQuảng TrạchQuảng Dương") {
			l3 <- "Quảng Đông";
			return;
		}

		if (l1 + l2 + l3 = "Quảng NamĐại Lộcái Nghĩa") {
			l3 <- "Ái Nghĩa";
			return;
		}

		//		if (l1 + l2 + l3 = "Quảng NamĐông GiangBa") {
		//			l3 <- ""; return;
		//		}
		//
		//		if (l1 + l2 + l3 = "Quảng NamĐông GiangTư") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Quảng NamĐông GiangRao") {
			l3 <- "P Rao";
			return;
		}

		if (l1 + l2 + l3 = "Quảng NamNam GiangLa êê") {
			l3 <- "Laêê";
			return;
		}

		if (l1 + l2 + l3 = "Quảng NamNam GiangTapơ") {
			l3 <- "Tà Pơơ";
			return;
		}

		if (l1 + l2 + l3 = "Quảng NgãiBình SơnChâu ổ") {
			l3 <- "Châu Ổ";
			return;
		}

		if (l1 + l2 + l3 = "Quảng NgãiNghĩa HànhHành Tín  Đông") {
			l3 <- "Hành Tín Đông";
			return;
		}

		if (l1 + l2 + l3 = "Quảng TrịĐa KrôngMò ó") {
			l3 <- "Mò Ó";
			return;
		}

		if (l1 + l2 + l3 = "Quảng TrịHải LăngHải Lệ") {
			l3 <- "Hải Tân";
			return;
		}

		//		if (l1 + l2 + l3 = "Quảng TrịHướng HóaXy") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Quảng TrịTriệu Phongái Tử") {
			l3 <- "Ái Tử";
			return;
		}

		if (l1 + l2 + l3 = "Quảng TrịTriệu PhongTriệu ái") {
			l3 <- "Triệu Ái";
			return;
		}

		if (l1 + l2 + l3 = "Quảng TrịVĩnh LinhVĩnh Quang") {
			l3 <- "Vĩnh Trung";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngLong PhúTrung Bình") {
			l3 <- "Song Phụng";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngMỹ XuyênHòa Tú II") {
			l3 <- "Hòa Tú 2";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngMỹ XuyênPhú Lộc") {
			l3 <- "Ngọc Đông";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngNgã NămLong Tân") {
			l3 <- "Tân Long";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngNgã NămNgã Năm") {
			l3 <- "Long Bình";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngNgã NămVĩnh Biên") {
			l3 <- "Vĩnh Quới";
			return;
		}

		if (l1 + l2 + l3 = "Sóc TrăngThạnh Trị5") {
			l2 <- "Sóc Trăng";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaBắc YênPắc Ngà") {
			l3 <- "Bắc Ngà";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMai SơnMương Tranh") {
			l3 <- "Mường Chanh";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMai SơnNà Bó") {
			l3 <- "Nà Pó";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMai SơnNà Ơt") {
			l3 <- "Nà Ớt";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuChiềng Khoa") {
			l3 <- "Chiềng Khừa";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuChiềng Yên") {
			l3 <- "Chiềng Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuLóng Luông") {
			l3 <- "Lóng Sập";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuMường Tè") {
			l3 <- "Mường Sang";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuQui Hướng") {
			l3 <- "Quy Hướng";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMộc ChâuSong Khủa") {
			l3 <- "Phiêng Luông";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaMường Laít Ong") {
			l3 <- "Ít Ong";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaQuỳnh NhaiNậm ét") {
			l3 <- "Nậm Giôn";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaQuỳnh NhaiPha Khinh") {
			l3 <- "Pá Ma Pha Khinh";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaThuận Châué Tòng") {
			l3 <- "É Tòng";
			return;
		}

		if (l1 + l2 + l3 = "Sơn LaThuận ChâuMường é") {
			l3 <- "Mường É";
			return;
		}

		if (l1 + l2 + l3 = "Thái BìnhHưng HàKim Trung") {
			l3 <- "Kim Chung";
			return;
		}

		if (l1 + l2 + l3 = "Thái BìnhQuỳnh PhụAn ấp") {
			l3 <- "An Ấp";
			return;
		}

		if (l1 + l2 + l3 = "Thái BìnhThái ThụyHòa Khánh") {
			l3 <- "Thái Hồng";
			return;
		}

		if (l1 + l2 + l3 = "Thái BìnhTiền HảiCông") {
			l3 <- "Đông Hải";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênĐịnh HóaĐiềm Mạc") {
			l3 <- "Điềm Mặc";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênĐịnh HóaTiến") {
			l3 <- "Phú Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênĐồng HỷChùa Hang") {
			l3 <- "Hợp Tiến";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênĐồng HỷHuống Thượng") {
			l3 <- "Hóa Thượng";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênĐồng HỷLinh Sơn") {
			l3 <- "Khe Mo";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênPhú Bìnhúc Kỳ") {
			l3 <- "Úc Kỳ";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênPhú LươngĐu") {
			l3 <- "Đu";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênPhú LươngSơn Cẩm") {
			l3 <- "Phú Đô";
			return;
		}

		if (l1 + l2 + l3 = "Thái NguyênVõ NhaiGiao") {
			l3 <- "Phương Giao";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaBá ThướcLâm Xa") {
			l3 <- "Lâm Sa";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaBá ThướcThiết ống") {
			l3 <- "Thiết Ống";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaĐông SơnĐông Hưng") {
			l3 <- "Đông Hòang";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaĐông SơnĐông Lĩnh") {
			l3 <- "Đông Khê";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaĐông SơnĐông Vinh") {
			l3 <- "Đông Văn";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaĐông SơnĐông Xuân") {
			l3 <- "Đông Yên";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaHoằng HóaHoằng Anh") {
			l3 <- "Hoằng Cát";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaHoằng HóaHoằng Đại") {
			l3 <- "Hoằng Đạt";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaHoằng HóaHoằng Lý") {
			l3 <- "Hoằng Lưu";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaHoằng HóaHoằng Quang") {
			l3 <- "Hoằng Phượng";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaHoằng HóaTào Xuyên") {
			l3 <- "Hoằng Yến";
			return;
		}

		//		if (l1 + l2 + l3 = "Thanh HóaHóc MônBà Điểm") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Thanh HóaNgọc LặcNguyệt ấn") {
			l3 <- "Nguyệt Ấn";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaNhư ThanhNghi") {
			l3 <- "Phượng Nghi";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaNông CốngMinh Thọ") {
			l3 <- "Minh Khôi";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaNông CốngTrung ý") {
			l3 <- "Trung Ý";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Đại") {
			l3 <- "Quảng Định";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Đông") {
			l3 <- "Quảng Đức";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Hùng") {
			l3 <- "Quảng Hải";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Minh") {
			l3 <- "Quảng Nham";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Tâm") {
			l3 <- "Quảng Tân";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaQuảng XươngQuảng Vinh") {
			l3 <- "Quảng Văn";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaThiệu HóaThiệu Khánh") {
			l3 <- "Thiệu Hợp";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaThiệu HóaThiệu Vân") {
			l3 <- "Thiệu Vận";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaTĩnh GiaTriệu Dương") {
			l3 <- "Triêu Dương";
			return;
		}

		if (l1 + l2 + l3 = "Thanh HóaYên ĐịnhQuý Lộc") {
			l3 <- "Quí Lộc";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí Minh10Tân Mỹ") {
			l3 <- "10";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí Minh1Cầu Kho") {
			l3 <- "Cầu kho";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí Minh9Linh Tây") {
			l3 <- "Long Bình";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhBình ChánhTân Tạo") {
			l3 <- "Tân Túc";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhBình ThạnhAn Phước") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhGò VấpMỹ Thọ") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhHóc MônXuân Thạnh") {
			l3 <- "Xuân Thới Đông";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhPhú NhuậnHưng Thạnh") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhTân BìnhThới An") {
			l3 <- "1";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhTân Phú1") {
			l3 <- "Phú Trung";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhThủ ĐứcPhước Trung") {
			l3 <- "Hiệp Bình Phước";
			return;
		}

		if (l1 + l2 + l3 = "TP. Hồ Chí MinhThủ Đức1") {
			l3 <- "Hiệp Bình Chánh";
			return;
		}

		//		if (l1 + l2 + l3 = "TP. Hồ Chí MinhTrần Văn ThờiSông Đốc") {
		//			l3 <- ""; return;
		//		}
		if (l1 + l2 + l3 = "Trà VinhCầu NgangVinh Kim") {
			l3 <- "Vĩnh Kim";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangNà HangĐội Cấn") {
			l3 <- "Đà Vị";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangSơn DươngĐông thọ") {
			l3 <- "Đông Thọ";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangSơn DươngTân trào") {
			l3 <- "Tân Trào";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangSơn DươngThiện kế") {
			l3 <- "Thiện Kế";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangSơn DươngVĩnh lợi") {
			l3 <- "Vĩnh Lợi";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangTuyên Quangỷ La") {
			l3 <- "Ỷ La";
			return;
		}

		if (l1 + l2 + l3 = "Tuyên QuangYên SơnLăng Quán") {
			l3 <- "Lang Quán";
			return;
		}

		if (l1 + l2 + l3 = "Vĩnh PhúcLập ThạchĐồng ích") {
			l3 <- "";
			return;
		}

		if (l1 + l2 + l3 = "Vĩnh PhúcLập ThạchĐông Lĩnh") {
			l3 <- "Đồng Ích";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiMù Căng ChảiDế Xu Phình") {
			l3 <- "Dế Su Phình";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiMù Căng ChảiMù Cang Chải") {
			l3 <- "Mù Căng Chải";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiTrạm TấuHát Lừu") {
			l3 <- "Hát Lìu";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiVăn ChấnNông trường Liên Sơn") {
			l3 <- "NT Liên Sơn";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiVăn ChấnNông trường Nghĩa Lộ") {
			l3 <- "NT Nghĩa Lộ";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiVăn ChấnNông trường Trần Phú") {
			l3 <- "NT Trần Phú";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiVăn YênXuân ái") {
			l3 <- "Xuân Ái";
			return;
		}

		if (l1 + l2 + l3 = "Yên BáiYên BìnhBảo ái") {
			l3 <- "Bảo Ái";
			return;
		}

		//		if (l1 + l2 + l3 = "Yên BáiYên BìnhCẩm Ân") {
		//			l3 <- "";
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