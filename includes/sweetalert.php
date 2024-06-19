<?php
$success_message = "";
$error_message = "";

if(isset($_SESSION['success_message'])) {
    $success_message = $_SESSION['success_message'];
    unset($_SESSION['success_message']);
}

if(isset($_SESSION['error_message'])) {
    $error_message = $_SESSION['error_message'];
    unset($_SESSION['error_message']);
}

if(isset($success_message) || isset($error_message)) {
    $js_code = "
        var success_message = '$success_message';
        var error_message = '$error_message';

        if (success_message !== '') {
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: success_message,
                showConfirmButton: false,
                timer: 1500
            });
        }

        if (error_message !== '') {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: error_message,
                showConfirmButton: false,
                timer: 1500
            });
        }
    ";

    $encoded_js = base64_encode($js_code);

    echo "<script>eval(atob('$encoded_js'));</script>";
}
?>