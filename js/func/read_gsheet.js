var data_core = new Map();
var data_info_general;
var data_info_vung = new Map();
var data_f0 = new Map();
var images_tinh = new Map();

function readSheet(data) {
    var results = [];
    var entries = data.feed.entry;
    var previousRow = 0;
    for (var i = 0; i < entries.length; i++) {
        var latestRow = results[results.length - 1];
        var cell = entries[i];
        var text = cell.content.$t;
        var row = cell.gs$cell.row;
        if (row > previousRow) {
            var newRow = [];
            newRow.push(text);
            results.push(newRow);
            previousRow++;
        } else {
            latestRow.push(text);
        }

    }
    return results;
}

var dataChartCaNhiemToanQuoc = {};
var dataThongkeNguycoTinh = {};
function doDataTinh(data) {
    var results = readSheet(data);
    dataChartCaNhiemToanQuoc = {
        'tinh': [],
        'F0': [],
        // 'core': [],        
    }
    for (var i = 1; i < results.length; i++) {
        const ten_tinh = results[i][1];
        // data_core.set(ten_tinh, results[i][2]); // bỏ
        // data_f0.set(ten_tinh, results[i][3]); // bỏ
        const image_link = results[i][5];
        // dataChartCaNhiemToanQuoc['tinh'].push(ten_tinh); // bỏ
        // dataChartCaNhiemToanQuoc['F0'].push(results[i][3]); // bỏ
        dataThongkeNguycoTinh[ten_tinh] = [
            `<tr>
                <td>Quận/Huyện</td>
                <td>Nguy cơ rất cao</td>
                <td>` + results[i][6] + `</td>
                <td>` + results[i][13] + `</td>
            </tr>`, `<tr>
                <td>Quận/Huyện</td>
                <td>Nguy cơ cao</td>
                <td>` + results[i][7] + `</td>
                <td>` + results[i][14] + `</td>
            </tr>`,
            `<tr>
                <td>Quận/Huyện</td>
                <td>Nguy cơ</td>
                <td>` + results[i][8] + `</td>
                <td>` + results[i][15] + `</td>
            </tr>`,
            `<tr>
                <td>Xã/Phường</td>
                <td>Nguy cơ rất cao</td>
                <td>` + results[i][9] + `</td>
                <td></td>
            </tr>`,
            `<tr>
                <td>Xã/Phường</td>
                <td>Nguy cơ cao</td>
                <td>` + results[i][10] + `</td>
                <td></td>
            </tr>`,
            `<tr>
                <td>Xã/Phường</td>
                <td>Nguy cơ</td>
                <td>` + results[i][11] + `</td>
                <td></td>
            </tr>`];
        // console.log(results[i]);
        if (image_link == undefined || image_link == null || image_link == '') {
            images_tinh.set(results[i][1], '');
        } else {
            const image_row = '<tr><td colspan="3"><a href="#" id="pop"> \
			<img id="imageresource" width="700" src="' + image_link + '"></a></td></tr>';

            images_tinh.set(results[i][1], image_row);
        }
    }
    console.log('data from gg-sheet doDataTinh loaded');    
}
 
