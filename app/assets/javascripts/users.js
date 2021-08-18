// $(document).ready(function () {
//     $("form").submit(function (event) {
//         event.preventDefault();
//         var formData = {
//             coachee: {
//                 coachee_name: $("#user_name").val(),
//                 email: $("#email").val(),
//                 phone_number: $("#phone_number").val(),
//                 password: $("#password").val(),
//                 password_confirmation: $("#password_confirmation").val(),
//                 current_password: $("#current_password").val()
//             }
//         };
//         debugger
//         $.ajax({
//             type: "PUT",
//             url: '/users/edit',
//             data: formData,
//             dataType: 'JSON'
//         }).done(function (response) {
//             if (response.updated) {
//                 alert('Users has been updated successfully');
//             } else {
//                 alert('Oops! There has been an error');
//             }
//             console.log(response);
//         }).fail(function (error) {
//             console.log(error);
//         });
//     });
// });