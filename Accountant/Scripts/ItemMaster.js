function validate() {
    var isValid = true;

    if ($('#ItemName').val().length === 0) {
        $('#ItemName').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ItemName').css('border-color', 'lightgrey');
    }

    if ($('#UnitID').val().length === 0) {
        $('#UnitID').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#UnitID').css('border-color', 'lightgrey');
    }

    return isValid;
}

function clearTextBox() {

    $('#ID').val("");
    $('#ItemName').val("");
    $('#UnitID').val("");

    $('#btnUpdate').hide();
    $('#btnAdd').show();
}

function Add() {
    var posturl = $('#ItemMasteradd').val();
    var res = validate();
    if (res === false) {
        return false;
    }
    var ItemMasterDetails = {
        ID: $('#ID').val(),
        ItemName: $('#ItemName').val(),

        UnitID: $('#UnitID').val()
    };

    $.ajax({
        url: posturl,
        data: JSON.stringify(ItemMasterDetails),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            loadData();
            $('#myModal').modal('hide');
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
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
    if ($.fn.dataTable.isDataTable('#certtable')) {
        table = $('#certtable').DataTable();
        table.destroy();
    }
    // alert('hh');
    $("#certtable").DataTable({
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
                "data": "ItemName", "name": "ItemName", "autoWidth": true
            },
           
            {
                "data": "UnitName", "name": "UnitName", "autoWidth": true
            },
           
            {
                "data": "ID", "width": "50px", "render": function (data) {
                    return '<a href="#"  onclick="GetItemMasterDetailsByID(' + data + ')"><i class="glyphicon glyphicon-edit"></i></a>';
                }
            },
            {
                "data": "ID", "width": "50px", "render": function (d) {
                    return '<a href="#" onclick="Delete(' + d + ')"><i class="glyphicon glyphicon-trash"></i></a>';
                }
            }

        ]
        //"rowId": "ID"//,
        // "dom": "Bfrtip"
    });
}

function GetItemMasterDetailsByID(ID) {
    $('#ItemName').css('border-color', 'lightgrey');
    var x = $("#myUrl").val();
    //alert(x);
    //debugger;
    $.ajax({
        url: x,
        data:
        {
            ID: ID
        },
        type: "GET",
        contentType: "application/json;charset=UTF-8",
        async: "false",
        dataType: "json",
        success: function (result) {
            //debugger;
            $('#ID').val(result.ID);
            $('#ItemName').val(result.ItemName);

            $('#UnitID').val(result.UnitID);

            $('#myModal').modal('show');
            $('#btnUpdate').show();
            $('#btnAdd').hide();
        },
        error: function (errormessage) {
            //debugger;
            alert(errormessage.responseText);
        }
    });
    return false;
}

function Delete(ID) {
    var e = $('#deletedata').val();
    var ans = confirm("Are you sure you want to delete this Record?");
    if (ans) {
        // debugger;
        $.ajax({
            url: e,
            data: JSON.stringify({ ID: ID }),
            type: "POST",
            contentType: "application/json;charset=UTF-8",
            dataType: "json",
            success: function (result) {
                // debugger;

                if (result === -1) {
                    alert("Department cannot be deleted as this is already used.");
                }
                else if (result === 0) {
                    alert("Department cannot be deleted as this is already used.");
                }
                else {
                    loadData();
                }
            },
            error: function () {
                alert("Department cannot be deleted as this is already used in Crew");
            }
        });
    }
}