function onOpen(event) {
    var files = DriveApp.searchFiles('mimeType = "' + MimeType.GOOGLE_SHEETS + '"');
    var links = [];
    var sub1 = "2016-ate";
    var sub2 = "2016_ate";

    while (files.hasNext()) {
            var spreadsheet = SpreadsheetApp.open(files.next());
            var filename = spreadsheet.getName();
    
            if (filename.indexOf(sub1) == -1 && filename.indexOf(sub2) == -1 || ) {
                        continue;
                    }
    
            var all_sheets = []
            all_sheets =  spreadsheet.getSheets();
            for(var i = 0; i < all_sheets.length; i++) {
                        var sheet = all_sheets[i];
                        var l = "";
                        l = l + sheet.getParent().getUrl();
                        l = l + "#gid=" + sheet.getSheetId();
                        l = l + " ; " + sheet.getParent().getName() + " ; " + sheet.getSheetName();
                        links.push(l)
                    }
        }
    Logger.log(links);
}

