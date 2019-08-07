﻿
function validate() {

    var myform = $('#companyForm');
    if (myform.parsley().validate()) {
        //alert('valid');
        return true;
    }
    else {
        //alert('invalid');
        return false;
        }

}

function clearTextBox() {

    $('#CompanyId').val("");
    $('#txtCompanyName').val("");
    $('#txtAddress').val("");
    $('#txtCompanyCode').val("");

    $('#drpYear').val("");
    //var DrpYear = $('#drpYear');
    //DrpYear.empty();

    $('#drpCompanyMaster').val("");
    //var DrpCompanyMaster = $('#drpCompanyMaster');
    //DrpCompanyMaster.empty();

    $('input:checkbox').removeAttr('checked');
    //$('#btnUpdate').hide();
    //$('#btnAdd').show();
}

function Add() {
    var postUrl = $('#savecompanymaster').val();
    var postUrl1 = $('#getAllParentCompanyData').val();

    var res = validate();
    if (res === false) {
        return false;
    }

    var chkstatus = $('#chkMasterCompany').is(":checked");
    //alert($('#drpCompanyMaster').val());

    var company = {
        CompanyId: $('#CompanyId').val(),
        CompanyName: $('#txtCompanyName').val(),
        CompanyAddress: $('#txtAddress').val(),
        YearId: $('#drpYear').val(),
        CompanyCode: $('#txtCompanyCode').val(),
        isMaster: chkstatus,
        //isCopied:1,
        ParentCompanyID: $('#drpCompanyMaster').val()
    };

    $.post(postUrl,
        { company },
        function (data, status, jqXHR) {
            //alert('Data Saved Successfully');
            SetUpGrid();
            clearTextBox();
            $('#drpCompanyMaster').empty();

            $.getJSON(postUrl1, function (data) {
                    $.each(data, function (key, entry) {
                        //alert(entry.CompanyName);
                        console.log(entry);
                        $('#drpCompanyMaster').append($('<option></option>').attr('value', entry.CompanyId).text(entry.CompanyName));
                    });
                });

        }).done(function () {
            swal("Good job!", "Data Saved Successfully", "success");
        }).fail(function () {
            swal("Sorry!", "Data Not Saved", "error");
        });
    
    //$.ajax({
    //    url: postUrl,
    //    data: JSON.stringify(company),
    //    type: "POST",
    //    contentType: "application/json;charset=utf-8",
    //    dataType: "json",
    //    succes: function (result) {
    //        //if (result > 0) {
    //            alert("Data saved successfully");
    //        //$('#myModal').modal('hide');
    //        alert(hi);
    //        loadData();
    //        clearTextBox();
    //            //$('#drpCompanyMaster').empty();
    //            //$.getJSON(postUrl1, function (data) {
    //            //    $.each(data, function (key, entry) {
    //            //        //alert(entry.CompanyName);
    //            //        console.log(entry);
    //            //    });
    //            //});
    //        //}
    //        //else {
    //          //  alert("Data not saved");
    //       // }
    //    },

    //    error: function (errormessage) {
    //        alert(errormessage.responseText);
    //    }
    //});


}



function GetCompanyDetailsById(companyId) {

}





function loadData() {
    var loadposturl = $('#loaddata').val();
    $.ajax({
        url: loadposturl,
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            SetUpGrid();

        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function SetUpGrid() {
    var loadposturl = $('#loaddata').val();

    //do not throw error
    $.fn.dataTable.ext.errMode = 'none';
    //check if datatable is already created then destroy iy and then create it
    if ($.fn.dataTable.isDataTable('#compnayTable')) {
        table = $('#compnayTable').DataTable();
        table.destroy();
    }
    
    $("#compnayTable").DataTable({
        "processing": true, // for show progress bar
        "serverSide": true, // for process server side
        "filter": false, // this is for disable filter (search box)
        "orderMulti": false, // for disable multiple column at once
        "bLengthChange": false, //disable entries dropdown
        "ajax": {
            "url": loadposturl,
            "type": "POST",
            "datatype": "json"
        },
        "columns": [
            {
                "data": "CompanyName", "name": "CompanyName", "autoWidth": true
            },
            {
                "data": "YearId", "name": "YearId", "autoWidth": true
            },
            {
                "data": "CompanyCode", "name": "CompanyCode", "authoWidth": true
            }
            //,
            //{
            //    "data": "CompanyId", "width": "50px", "render": function (data) {
            //        return '<a href="#" onclick="GetCompanyDetailsById(' + data + ')"><i class="glyphicon glyphicon-edit"></i></a>';
            //    }
            //},
            //{
            //    "data": "CompanyId", "width": "50px", "render": function (d) {
            //        return '<a href="#" onclick="Delete(' + d + ')"><i class="glyphicon glyphicon-trash"></i></a>';
            //    }
            //}

        ]
        //"rowId": "ID"//,
        // "dom": "Bfrtip"
    });
}