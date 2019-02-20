jQuery('body').bind('click', function(e) {
	// alert(e.target);
	// Source: https://stackoverflow.com/questions/23764863/how-to-close-an-open-collapsed-navbar-when-clicking-outside-of-the-navbar-elemen
    if(jQuery(e.target).closest('.navbar').length == 0) {
        // click happened outside of .navbar, so hide
        var opened = jQuery('.navbar-collapse').hasClass('collapse in');
        if ( opened === true ) {
            jQuery('.navbar-collapse').collapse('hide');
        }
    }
});

var userProfileDetailsMap = new Map();
var formFieldsArr = ["userName", "inputEmail", "inputPassword", "streetAddr", 
					  "cityName", "postalCode", "provinceName", "countryName"];

function makeProfileEditable() {

	//disable the "Edit Profile" button:
	document.getElementById("editProfileBtn").disabled = true;

	var arrayLength = formFieldsArr.length;
	for (var i = 0; i < arrayLength; i++) {
		var element = document.getElementById(formFieldsArr[i]);
		userProfileDetailsMap.set(formFieldsArr[i], element.value);
		element.disabled = false;
	}
	document.getElementById("cancelBtn").disabled = false
	document.getElementById("saveBtn").disabled = false

	// TO-DO:  save user profile image to local storage:

	document.getElementById("editImgBtn").style.display = "block";
}

function cancelEditAction() {
	//Source: http://1000hz.github.io/bootstrap-validator/#validator
	$('#userDetailsForm').validator('destroy') // Detach validator and clean validator messages

	var arrayLength = formFieldsArr.length;
	for (var i = 0; i < arrayLength; i++) {
		var element = document.getElementById(formFieldsArr[i]);
		element.value = userProfileDetailsMap.get(formFieldsArr[i]);
		element.disabled = true;
	}
	document.getElementById("editImgBtn").style.display = "none";
	document.getElementById("cancelBtn").disabled = true
	document.getElementById("saveBtn").disabled = true
	document.getElementById("editProfileBtn").disabled = false;

	$('#userDetailsForm').validator() // Attach validator
}