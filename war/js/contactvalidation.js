$(document)
		.ready(
				function() {

					$('#contactForm')
							.formValidation(
									{
										framework : 'bootstrap',
										icon : {
											validating : 'glyphicon glyphicon-refresh'
										},
										fields : {
											userName : {
												validators : {
													notEmpty : {
														message : 'The first name is required'
													},
													stringLength : {
														min : 4,
														message : 'The first name must be greater than 4 characters'
													}
												}
											},
											email : {
												validators : {
													notEmpty : {
														message : 'The email address is required'
													},
													emailAddress : {
														message : 'The input is not a valid email address'
													}
												}
											},
											phone : {
												validators : {
													notEmpty : {
														message : 'The phone number is required'
													},
													regexp : {
														message : 'The phone number can only contain the digits, spaces, -, (, ), + and .',
														regexp : /^[0-9\s\-()+\.]+$/
													}
												}
											},
											message : {
												validators : {
													notEmpty : {
														message : 'The message is required'
													},
													stringLength : {
														max : 700,
														message : 'The message must be less than 700 characters long'
													}
												}
											},

										}

									});
				});