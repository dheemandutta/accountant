function validate() {
    var isValid = true;
    if ($('#txtCompanyName').val().trim()== ''){
        isValid = false;
    }
    if ($('#txtAddress').val().trim() == '') {
        isValid = false;
    }
    if ($('drpYear').val().trim() == '') {
        isValid = false;
    }

    if ($('#chkMasterCompany').checked == true) {
        if ($('drpCompany').val().trim() == '') {
            isValid = false;
        }
        else {
            isValid = true
        }
    }
    else {
         isValid = true;
        }
 
    if ($('#txtCompanyCode').val().trim() == '') {
        isValid=false
    }
    return isValid;
}

function Add() {
    var postUrl = $('#savecompanymaster').val();
    var res = validate;
    if (res == false) {
        return false
    }

    var company = {
        CompanyId: $('#CompanyId').val(),
        CompanyName: $('#txtCompanyName').val(),
        CompanyAddress: $('txtAddress').val(),
        YearId: $('drpYear').val(),
        CompanyCode: $('txtCompanyCode').val(),
        isMaster: $('chkMasterCompany').val(),
        isCopied: 1;
        ParentCompanyID: $('#drpCompanyMaster').val(),
    };
    
    $.ajax({
        url: postUrl,
        data: JSON.stringify(company),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        succes: function (result) {
            if (result > 0) {
                alert("Data saved successfully");
                $('#myModal').modal('hide');

            }
            else {
                alert("Data not saved");
            }
        },

        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function SetUpGrid() {
    var loadposturl = $('#LoadAllCompany').val();

    //do not throw error
    $.fn.dataTable.ext.errMode = 'none';
    //check if datatable is already created then destroy iy and then create it
    if ($.fn.dataTable.isDataTable('#unitTable')) {
        table = $('#unitTable').DataTable();
        table.destroy();
    }
    // alert('hh');
    var mytable = $("#compnayTable").DataTable({
        "processing": true, // for show progress bar
        "serverSide": true, // for process server side
        "filter": false, // this is for disable filter (search box)
        "orderMulti": false, // for disable multiple column at once
        "bLengthChange": false, //disable entries dropdown
        "ajax": {
            "url": loadposturl,
            "type": "POST",
            "datatype": "json"
            //"data": { searchvalue: searchval }
        },
        "columns": [
            {
                "data": "CompanyName", "name": "Company", "autoWidth": true
            },
            {
                "data": "YearId", "name": "Year Id", "autoWidth": true
            },
            {
                "data": "CompanyCode", "name": "Company Code", "authoWidth": true
            },
            {
                "data": "CompanyId", "width": "50px", "render": function (data) {
                    return '<a href="#" onclick="GetCompanyDetailsById(' + data + ')"><i class="glyphicon glyphicon-edit"></i></a>';
                }
            },
            {
                "data": "CompanyId", "width": "50px", "render": function (d) {
                    return '<a href="#" onclick="Delete(' + d + ')"><i class="glyphicon glyphicon-trash"></i></a>';
                }
            }
        ]
    });
}

function GetCompanyDetailsById(companyId) {

}