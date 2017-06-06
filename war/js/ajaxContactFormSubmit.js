$(document).ready(function() {

   $('#sendMessage').click(function(){
	   $('#contactForm').formValidation('destroy');
	   $('#contactForm').formValidation(
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
							},
							stringLength : {
								min : 10,
								message : 'It\'s not a mobile number!'
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

			}).on('success.form.fv', function(e) {
				// Stops the submit request
				e.preventDefault();

		        var $form = $(e.target);
          
            // get the form data and then serialize that
            dataString = $("#contactForm").serialize();
           
                       
            // make the AJAX request, dataType is set to json
            // meaning we are expecting JSON data in response from the server
            
            $.ajax({
                type: "POST",
                url: "ContactFormServlet",
                data: dataString,
                dataType: "json",
                // if received a response from the server
                success: function( data, textStatus, jqXHR) {
                	if(data.success){
                         $("#here").html("");
                         $("#here").removeClass();
                         $("#here").addClass("alert");
                         $("#here").addClass("here");
                         $("#here").addClass("alert-success");
                         $("#here").append("<strong>Successfull..!</strong> Your message has been sent!</div>");
                     } 
                     else {
                    	 $("#here").html("");
                    	 $("#here").removeClass();
                    	 $("#here").addClass("here");
                    	 $("#here").addClass("alert");
                         $("#here").addClass("alert-danger");
                         $("#here").append("<strong>Oops..!!</strong> Sorry Something Went Wrong!</div>");
                     }
                     
                },
               
                // If there was no resonse from the server
                error: function(jqXHR, textStatus, errorThrown){
                     console.log("Something really bad happened " + textStatus);
                      $("#here").html("<strong>Oops..!!</strong> Something really bad happened!</div>");
                },
               
                // capture the request before it was sent to server
                beforeSend: function(jqXHR, settings){
                    // adding some Dummy data to the request
                    settings.data += "&dummyData=whatever";
                    // disable the button until we get the response
                    $("#here").show();
                    $("#here").html("");
                    $("#here").removeClass();
                    $("#here").addClass("here");
                    $("#here").addClass("alert");
                    $("#here").addClass("alert-info");
                    $("#here").append("<i class='fa fa-spinner fa-spin fa-2x' style='width: 50px;' aria-hidden='true'></i><strong>Thanks a lot! Please Wait !! </strong> </div>");
                    $('#sendMessage').attr("disabled", true);
                    $('#faclass').addClass("fa-spinner");
                    $('#faclass').addClass("fa-2x");
                    $("#dytext ").text("Sending..");
                },
               
                // this is called after the response or error functions are
				// finsihed
                // so that we can take some action
                complete: function(jqXHR, textStatus){
                    // enable the button
                	$("#contactForm")[0].reset();
                    $('#sendMessage').removeClass("disabled");
                    setTimeout(function() { $(".alert").fadeOut(1500); }, 11000);
                    $('#sendMessage').attr("disabled", false);
                    $("#dytext ").text("Send Message");
                    $('#faclass').removeClass("fa-spinner");
                    $('#faclass').removeClass("fa-2x");
                }
     
            });        
  
   });
   });

});