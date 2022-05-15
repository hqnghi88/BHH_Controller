// Call the dataTables jQuery plugin
// $(document).ready(function () {
//   $('#dataTable').DataTable();
// });
// Simple-DataTables
// https://github.com/fiduswriter/Simple-DataTables/wiki

var myTable = null;
function showtable() {
  var tbl = `
  <table id="datatablesSimple" class="table1" style="border-collapse: collapse" border="1" width="100%">
<thead>
<tr>
		<th rowspan="2"  width="116"><b>Ngày</b></th>
		<th rowspan="2"  width="43"><b>Giờ đo</b></th><th colspan="2"  width="43"><b>X. QUAN</b></th><th colspan="2"  width="43"><b>BÁO ĐÁP</b></th><th colspan="2"  width="43"><b>KÊNH CẦU</b></th><th colspan="2"  width="43"><b>LỰC  ĐIỀN</b></th><th colspan="2"  width="43"><b>C.TRANH</b></th><th colspan="2"  width="43"><b>BÁ THUỶ</b></th><th colspan="2"  width="43"><b>C. NEO</b></th><th colspan="2"  width="43"><b>CẦU CẤT</b></th><th colspan="2"  width="43"><b>CẦU XE</b></th><th colspan="2"  width="43"><b>AN THỔ</b></th></tr><tr><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th><th ><b>TL</b></th><th ><b>HL</b></th></tr></thead><tbody><tr><td  rowspan="5">10/05/2022</td></tr><tr><td>1h</td><td>159</td><td>157</td><td>155</td><td>153</td><td>151</td><td>150</td><td>149</td><td>149</td><td>144</td><td>142</td><td>146</td><td>097</td><td>135</td><td>093</td><td>146</td><td>152</td><td>101</td><td>154</td><td>099</td><td>152</td></tr><tr><td>7h</td><td>173</td><td>172</td><td>170</td><td>169</td><td>165</td><td>164</td><td>158</td><td>157</td><td>148</td><td>145</td><td>146</td><td>109</td><td>135</td><td>106</td><td>149</td><td>099</td><td>107</td><td>059</td><td>106</td><td>058</td></tr><tr><td>13h</td><td>141</td><td>156</td><td>156</td><td>150</td><td>152</td><td>151</td><td>150</td><td>149</td><td>140</td><td>138</td><td>140</td><td>105</td><td>136</td><td>100</td><td>144</td><td>033</td><td>105</td><td>-017</td><td>102</td><td>-016</td></tr><tr><td>19h</td><td>113</td><td>139</td><td>139</td><td>146</td><td>148</td><td>148</td><td>147</td><td>146</td><td>142</td><td>139</td><td>141</td><td>099</td><td>133</td><td>096</td><td>143</td><td>058</td><td>097</td><td>067</td><td>096</td><td>065</td></tr><tr><td  rowspan="5">11/05/2022</td></tr><tr><td>1h</td><td>160</td><td>157</td><td>155</td><td>153</td><td>149</td><td>148</td><td>146</td><td>146</td><td>141</td><td>139</td><td>144</td><td>102</td><td>132</td><td>100</td><td>144</td><td>151</td><td>108</td><td>142</td><td>107</td><td>140</td></tr><tr><td>7h</td><td>191</td><td>184</td><td>182</td><td>180</td><td>168</td><td>167</td><td>158</td><td>157</td><td>147</td><td>144</td><td>144</td><td>125</td><td>137</td><td>107</td><td>147</td><td>129</td><td>088</td><td>086</td><td>098</td><td>074</td></tr><tr><td>13h</td><td>174</td><td>172</td><td>170</td><td>169</td><td>164</td><td>162</td><td>156</td><td>154</td><td>140</td><td>136</td><td>135</td><td>076</td><td>113</td><td>090</td><td>138</td><td>080</td><td>057</td><td>011</td><td>056</td><td>010</td></tr><tr><td>19h</td><td>154</td><td>159</td><td>159</td><td>145</td><td>144</td><td>144</td><td>143</td><td>143</td><td>134</td><td>131</td><td>130</td><td>57</td><td>128</td><td>025</td><td>120</td><td>064</td><td>040</td><td>040</td><td>041</td><td>038</td></tr></tbody></table>`;
  if (myTable != null) {
    myTable.destroy();
  }
  document.getElementById('thetable').innerHTML = tbl;
  // const datatablesSimple = document.getElementById('datatablesSimple');
  if (datatablesSimple) {
    myTable = new simpleDatatables.DataTable(datatablesSimple);
    // myTable.columns().sort(3, "desc");
  //   document.getElementById('tblname').textContent = "của Việt Nam: " + total;
  //   // console.log(slider_idx2);
  //   // console.log(p[slider_idx2]);
  //   // console.log(pops["VN"][slider_idx2]);

  //   document.getElementById('tblpop').textContent = "Dân số: " + pops["VN"][slider_idx2]+". Tỉ lệ: "+(total*100000/pops["VN"][slider_idx2]).toFixed(2);
  }
}

// function showtable1(selected_adm1) {
//   var tbl = `
//   <table id="datatablesSimple">
//       <thead>
//           <tr>
//               <th>Địa phương</th>
//               <th>Số ca</th> 
//               <th>Dân số</th>  
//               <th>Tỉ lệ</th>  
//           </tr>
//       </thead>
//       <tfoot>
//           <tr>
//               <th>Địa phương</th>
//               <th>Số ca</th>  
//               <th>Dân số</th>  
//               <th>Tỉ lệ</th>  
//           </tr>
//       </tfoot>
//       <tbody>`;


//   var total = 0;

  
//   var map = mapVN[selected_adm1];
//   for (var i = 0; i < map.length; i++) {
//     var item = map[i];
//     var p = pops["" + id_.get(selected_adm1+item)];
//     // console.log(selected_adm1 + item);
//     // console.log(adm2_time );
//     var tmp_tot = (adm2_time.get("" + id_.get(selected_adm1 + item))).slice(slider_idx1,slider_idx2 * 1 + 1).reduce((a, b) => a + b, 0);
//     var tmp_rate = (adm2_time.get("" + id_.get(selected_adm1 + item))).map(function (x, index) {
//       return x * 100000 / p[index];
//     }).slice(slider_idx1,slider_idx2 * 1 + 1).reduce((a, b) => a * 1 + b, 0);
//     total += tmp_tot;
//     tbl = tbl + `<tr>
//       <td><a href="javascript:void(0)" onclick="fit_zoom_to2('`+ selected_adm1 + `','` + item + `')">` + item + `</a></td> 
//       <td>`+ tmp_tot + `</td> 
//       <td>`+ p[slider_idx2]  + `</td>  
//       <td>`+ tmp_rate.toFixed(2) + `</td>  
//   </tr> `;
//   }
//   tbl = tbl + `
//       </tbody>
//   </table>`;
//   if (myTable != null) {
//     myTable.destroy();
//   }
//   document.getElementById('thetable').innerHTML = tbl;
//   const datatablesSimple = document.getElementById('datatablesSimple');
//   if (datatablesSimple) {
//     myTable = new simpleDatatables.DataTable(datatablesSimple);
//     myTable.columns().sort(3, "desc");
//     document.getElementById('tblname').innerHTML = "của " + selected_adm1 + `, <a href="javascript:void(0)" onclick="fit_zoom_to_VN()">Việt Nam</a>: ` + total;
//     // console.log(p[slider_idx2]);
//     document.getElementById('tblpop').textContent = "Dân số: " + pops["" + id_.get(selected_adm1)][slider_idx2];
//   }
// }


// function showtable2(selected_adm1, selected_adm2) {
//   var tbl = `
//   <table id="datatablesSimple">
//       <thead>
//           <tr>
//               <th>Địa phương</th>
//               <th>Số ca</th>  
//           </tr>
//       </thead>
//       <tfoot>
//           <tr>
//               <th>Địa phương</th>
//               <th>Số ca</th>   
//           </tr>
//       </tfoot>
//       <tbody>`;

//   var total = 0;
//   var p = pops["" + id_.get(selected_adm1 + selected_adm2)];
//   // var yy = current_idx_Date.getFullYear() - 2016;
//   var map = mapVN[selected_adm1 + selected_adm2];
//   // var str="";
//   for (var i = 0; i < map.length; i++) {
//     var item = map[i];
//     var tmp_tot = (adm3_time.get("" + id_.get(selected_adm1 + selected_adm2 + item))).slice(slider_idx1,slider_idx2 * 1 + 1).reduce((a, b) => a + b, 0);
//     // var tmp_rate = (adm3_time.get("" + id_.get(selected_adm1 + selected_adm2 + item))).slice(slider_idx1,slider_idx2 * 1 + 1).map(function (x, index) {
//     //   return x * 100000 / p[index];
//     // }).reduce((a, b) => a * 1 + b, 0);
//     // str+=(item+","+ adm3_time.get(""+id_.get(selected_adm1 + selected_adm2 + item)))+"\n";
//     total += tmp_tot;
//     tbl = tbl + `<tr>
//       <td><a href="javascript:void(0)" onclick="fit_zoom_to3('`+ selected_adm1 + `','` + selected_adm2 + `','` + item + `')">` + item + `</a></td> 
//       <td>`+ tmp_tot + `</td>  
//   </tr> `;
//   }
//   // console.log(str);
//   tbl = tbl + `
//       </tbody>
//   </table>`;
//   if (myTable != null) {
//     myTable.destroy();
//   }
//   document.getElementById('thetable').innerHTML = tbl;
//   const datatablesSimple = document.getElementById('datatablesSimple');
//   if (datatablesSimple) {
//     myTable = new simpleDatatables.DataTable(datatablesSimple
//       // , {      perPage: 4    }
//     );
//     myTable.columns().sort(1, "desc");
//     document.getElementById('tblname').innerHTML = `của <a href="javascript:void(0)" onclick="fit_zoom_to2('` + selected_adm1 + `','` + selected_adm2 + `')">` + selected_adm2 + `</a>, <a href="javascript:void(0)" onclick="fit_zoom_to1('` + selected_adm1 + `')">` + selected_adm1 + `</a>: ` + total;
//     // console.log(p[slider_idx2]);

//     document.getElementById('tblpop').textContent = "Dân số: " + p[slider_idx2];
//   }
// }