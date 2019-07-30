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