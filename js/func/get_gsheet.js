
        google.charts.load("current", {
            packages: ['corechart']
        });
        // google.charts.setOnLoadCallback(drawChart);

        google.charts.setOnLoadCallback(init_gsheet);
		var lstPr = ['Responses'];
        // var lstPr = ['BìnhThủy'];

        function init_gsheet() {
            lstPr.forEach(getData);

        }

		
        function getData(item) {
            var url = 'https://docs.google.com/spreadsheets/d/1OnDypRo76R203gA9kDU552QmjBiP0NzecAO3fK0DP3w/gviz/tq?sheet=' + item;
            // console.log(item);

            var query = new google.visualization.Query(url);
            query.setQuery('select *');
            query.send(processSheetsData);
        }

		
        function processSheetsData(response) {
            var dd = response.getDataTable();
			// console.log(dd);
            var columns = dd.getNumberOfColumns();
            var rows = dd.getNumberOfRows(); 
			var row = [];
            for (var r = 0; r < rows; r++) {
                for (var c = 0; c < columns; c++) {
                    row.push(dd.getFormattedValue(r, c));
                }
                // if (row[0] != "") {
                //     // array.push([row[0], Number(row[1]), Number(row[1]) == 0 ? "" : ("" + row[1]), Number(row[2]), Number(row[2]) == 0 ? "" : ("" + row[2]), Number(row[3]), Number(row[3]) == 0 ? "" : ("" + row[3]), Number(row[4]), Number(row[4]) == 0 ? "" : ("" + row[4])]);
                // }
            } 
			expert_data=JSON.parse(JSON.stringify(row));
			// document.getElementById("expertChart").innerHTML=""+row;
			// console.log(row);
        }
