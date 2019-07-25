function validate() {
   //debugger;
    var isValid = true;

    if ($('#OwnerID').val().length === 0) {
        $('#OwnerID').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#OwnerID').css('border-color', 'lightgrey');
    }

    if ($('#Name').val().length === 0) {
        $('#Name').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Name').css('border-color', 'lightgrey');
    }

    if ($('#ValidFrom').val().length === 0) {
        $('#ValidFrom').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ValidFrom').css('border-color', 'lightgrey');
    }

    if ($('#ValidTo').val().length === 0) {
        $('#ValidTo').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ValidTo').css('border-color', 'lightgrey');
    }

    if ($('#Cost').val().length === 0) {
        $('#Cost').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#Cost').css('border-color', 'lightgrey');
    }

    if ($('#ActiveFrom').val().length === 0) {
        $('#ActiveFrom').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ActiveFrom').css('border-color', 'lightgrey');
    }

    if ($('#ActiveTo').val().length === 0) {
        $('#ActiveTo').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ActiveTo').css('border-color', 'lightgrey');
    }

    //if ($('#Discount').val().length === 0) {
    //    $('#Discount').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#Discount').css('border-color', 'lightgrey');
    //}

    //if ($('#DiscountStartDate').val().length === 0) {
    //    $('#DiscountStartDate').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#DiscountStartDate').css('border-color', 'lightgrey');
    //}

    //if ($('#DiscountEndDate').val().length === 0) {
    //    $('#DiscountEndDate').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#DiscountEndDate').css('border-color', 'lightgrey');
    //}

    if ($('#ddlAllMaster').val().length === 0) {
        $('#ddlAllMaster').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ddlAllMaster').css('border-color', 'lightgrey');
    }

    if ($('#ddlAllChannel').val().length === 0) {
        $('#ddlAllChannel').css('border-color', 'Red');
        isValid = false;
    }
    else {
        $('#ddlAllChannel').css('border-color', 'lightgrey');
    }

  

    
    //if ($('#IsActive').val().length === 0) {
    //    $('#IsActive').css('border-color', 'Red');
    //    isValid = false;
    //}
    //else {
    //    $('#IsActive').css('border-color', 'lightgrey');
    //}




        var e = document.getElementById("#ChannelID");
        var optionSelIndex = e.options[e.selectedIndex].value;
        var optionSelectedText = e.options[e.selectedIndex].text;
        if (optionSelIndex == 0) {
            alert("Please select a Course");
        }
        else {
            alert("Success !! You have selected Course : " + optionSelectedText);;
        }





    return isValid;
}

function clearTextBox() {

    $('#ID').val("");
    $('#OwnerID').val("");
    $('#Name').val("");
    $('#ValidFrom').val("");
    $('#ValidTo').val("");
    $('#Cost').val("");
    $('#Discount').val("");
    $('#DiscountStartDate').val("");
    $('#DiscountEndDate').val("");
    $('#ddlAllMaster').val("");
    $('#ddlAllChannel').val("");
    $('#ActiveFrom').val("");
    $('#ActiveTo').val("");

    $('#btnUpdate').hide();
    $('#btnAdd').show();
}

function CreateCommaSeperatedValues() {
    return $.Deferred().resolve($('#ddlAllChannel').val().join(','));
}

function CreateParameter() {
    return CreateCommaSeperatedValues().then(function(commaseperatedIDs) {
        //debugger;
        var PackPackChannelDetails = {
            ID: $('#ID').val(),
            OwnerID: $('#OwnerID').val(),
            Name: $('#Name').val(),
            ValidFrom: $('#ValidFrom').val(),
            ValidTo: $('#ValidTo').val(),
            Cost: $('#Cost').val(),
            Discount: $('#Discount').val(),
            DiscountStartDate: $('#DiscountStartDate').val(),
            DiscountEndDate: $('#DiscountEndDate').val(),
            DistributorMasterID: $('#DistributorMasterID').val(),
            ChanellIds: commaseperatedIDs,  // $('#ChannelID').val(),
            ActiveFrom: $('#ActiveFrom').val(),
            ActiveTo: $('#ActiveTo').val()
        };

        //Console.log("Package", PackPackChannelDetails);
        console.log("Selected Channels", commaseperatedIDs);
        return PackPackChannelDetails;
    });
}

function Add() {
    var posturl = $('#PackPackChanneladd').val();
    //var PackageJsonObject = { WF: [] };
    //debugger;
    var res = validate();
    if (res === false) {
        return false;
    }

    var selectedChannels = '';
    //var selectBoxoptions = $("#bootstrap-duallistbox-selected-list_drpChannels option");

    selectedChannels = $('#bootstrap-duallistbox-selected-list_drpChannels option').map(function (i, opt) {
        return $(opt).val();
    }).toArray().join(', ');

    var PackPackChannelDetails = {

        ID: $('#ID').val(),
        OwnerID: $('#OwnerID').val(),
        Name: $('#Name').val(),
        ValidFrom: $('#ValidFrom').val(),
        ValidTo: $('#ValidTo').val(),
        Cost: $('#Cost').val(),
        Discount: $('#Discount').val(),
        DiscountStartDate: $('#DiscountStartDate').val(),
        DiscountEndDate: $('#DiscountEndDate').val(),
        DistributorID: $('#DistributorID').val(),
        ChanellIds: selectedChannels,
        ActiveFrom: $('#ActiveFrom').val(),
        ActiveTo: $('#ActiveTo').val()
    };
// CreateParameter().done(function(PackPackChannelDetails) {
        //debugger;
        $.ajax({
            url: posturl,
            data: JSON.stringify(PackPackChannelDetails),
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
                "data": "ProprietorName", "name": "ProprietorName", "autoWidth": true
            },
            {
                "data": "Name", "name": "Name", "autoWidth": true
            },
            {
                "data": "ValidFrom", "name": "ValidFrom", "autoWidth": true
            },
            {
                "data": "ValidTo", "name": "ValidTo", "autoWidth": true
            },
            {
                "data": "Cost", "name": "Cost", "autoWidth": true
            },
            {
                "data": "Discount", "name": "Discount", "autoWidth": true
            },
            //{
            //    "data": "DiscountStartDate", "name": "DiscountStartDate", "autoWidth": true
            //},
            //{
            //    "data": "DiscountEndDate", "name": "DiscountEndDate", "autoWidth": true
            //},
            {
                "data": "DistributorMasterName", "name": "DistributorMasterName", "autoWidth": true
            },
            {
                "data": "ChannelName", "name": "ChannelName", "autoWidth": true
            },
            //{
            //    "data": "ActiveFrom", "name": "ActiveFrom", "autoWidth": true
            //},
            //{
            //    "data": "ActiveTo", "name": "ActiveTo", "autoWidth": true
            //},
            {
                "data": "ID", "width": "50px", "render": function (data) {
                    return '<a href="#" onclick="GetPackPackChannelDetailsByID(' + data + ')"><i class="glyphicon glyphicon-edit"></i></a>';
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

function GetPackPackChannelDetailsByID(ID) {
    $('#Name').css('border-color', 'lightgrey');
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
            $('#OwnerID').val(result.OwnerID);
            $('#Name').val(result.Name);
            $('#ValidFrom').val(result.ValidFrom);
            $('#ValidTo').val(result.ValidTo);
            $('#Cost').val(result.Cost);
            $('#Discount').val(result.Discount);
            $('#DiscountStartDate').val(result.DiscountStartDate);
            $('#DiscountEndDate').val(result.DiscountEndDate);
            $('#DistributorMasterID').val(result.DistributorMasterID);
            $('#ChannelID').val(result.ChannelID);
            $('#ActiveFrom').val(result.ActiveFrom);
            $('#ActiveTo').val(result.ActiveTo);

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

function GetAllChannelByDistributorIDForDrp(distributorID) {
    var x = $("#myUrlid").val();


    $.ajax({
        url: x,
        type: "POST",
        data: JSON.stringify({ 'distributorID': distributorID }),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            //debugger;
            //var drpChannelName = $('#ddlAllChannel');

            //drpChannelName.find('option').remove();

            //$.each(result, function () {
            //    drpChannelName.append('<option value=' + this.ChannelID + '>' + this.ChannelName + '</option>');
            //});

            //if($('#ddlAllChannel option').length > 0)
            //    $('#ddlAllChannel').multiselect('removeAllOptions');


            $('#ddlAllChannel').empty();
            $('#ddlAllChannel').multiselect('destroy');

            $.each(result, function () {
                $("#ddlAllChannel").append('<option value="' + this.ChannelID + '">' + this.ChannelName + '</option>');
            });

            //recreating multiselect
            var orderCount = 0;
            $('#ddlAllChannel').multiselect({
                maxHeight: 250,
                includeSelectAllOption: true,
                enableCaseInsensitiveFiltering: true,
                enableFiltering: true,
                onChange: function (option, checked) {
                    if (checked) {
                        orderCount++;
                        $(option).data('order', orderCount);
                    }
                    else {
                        $(option).data('order', '');
                    }
                },
                buttonText: function (options) {
                    if (options.length === 0) {
                        return 'None selected';
                    }
                    else {
                        var selected = [];
                        options.each(function () {
                            selected.push([$(this).text(), $(this).data('order')]);
                        });

                        selected.sort(function (a, b) {
                            return a[1] - b[1];
                        });

                        var text = '';
                        for (var i = 0; i < selected.length; i++) {
                            text += selected[i][0] + ', ';
                        }

                        //return text.substr(0, text.length - 2);
                        text = selected.length + "items selected";
                        return text;
                    }
                },
                'removeAllOptions': function () {
                    this.destroy();
                    this.$element.find('option').remove();
                    this.$element.multiSelect({});
                }
            });
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function GetAllChannelForDrp() {
    var x = $("#myUrlid1").val();

    $.ajax({
        url: x,
        type: "POST",
        data: JSON.stringify({}),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            //debugger;
            var drpChannel = $('#drpChannelID');
            drpChannel.find('option').remove();

            $.each(result, function () {
                drpChannel.append('<option value=' + this.ChannelID + '>' + this.ChannelName + '</option>');
            });
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}