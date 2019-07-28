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

    if ($('#chkMasterCompany').checked == true)
    {
        if ($('drpCompany').val().trim() == '') {
            isValid = false;
        }
        else {
            isValid = true
        }
    }
    else
        {
            isValid = true;
        }
    }
  
    }
    if ($('#txtCompanyCode').val().trim() == '') {
        isValid=false
    }
    return isValid;


//        
//
//    


}