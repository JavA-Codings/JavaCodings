$(document).ready(function() {
	let emailPrefix = document.getElementById('email-prefix');
	let emailDomain = document.getElementById('email-domain');
	emailPrefix.addEventListener('input',
	function() {
		emailDomain.value = emailPrefix.value;
	});
	emailDomain.addEventListener('input',
	function() {
	    emailPrefix.value = '';
	    console.log(emailDomain.value);
	});
	
	let memberID = document.getElementById('member_id');
	memberID.addEventListener('focusout', function() {input_validate.member_id(memberID)});
	
	let form = document.getElementById("register");
	let inputs = form.querySelectorAll('.input');
	for(let i = 0; i < inputs.length; i++) {
		let input = inputs[i];
		let func   = input_validate[input.id];
		if (!func) func = input_validate['common'];
		
		input.addEventListener('focusout', function() {func(input)});
	}
});


function updateMemberInfo() {
	var formData = $("form[name='info']").serialize();
	
	$.ajax({
		url: '/account/updateMember',
		type: 'POST',
		data: formData,
		success: function(response) {
			console.log("성공");
		}
	});	
}

function deleteMember() {	
	$.ajax({
		url: '/account/deleteMember',
		type: 'POST',
		data: formData,
		success: function(response) {
			console.log("성공");
		}
	});	
}
