<?php
ob_start(); // Start output buffering

require_once('connect.php');

// Gather form content
$name = $_POST['name'];
$email = $_POST['email'];
$mobile = $_POST['mobile'];
$form_message = $_POST['message'];

$errors = [];

// Validate fields
if(empty($name)) {
    $errors['name'] = 'Name can\'t be empty';
}

if(empty($form_message)) {
    $errors['message'] = 'Message can\'t be empty';
}

if(empty($email)) {
    $errors['email'] = 'You must provide an email';
} elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['legit_email'] = 'You must provide a REAL email';
}

if(empty($mobile)) {
    $errors['mobile'] = 'You must provide a mobile number';
}

// If no errors, insert into DB
if(empty($errors)) {
    $query = "INSERT INTO contact (name, email, mobile, message) 
              VALUES (:name, :email, :mobile, :message)";

    try {
        $stmt = $connect->prepare($query);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':mobile', $mobile);
        $stmt->bindParam(':message', $form_message);

        if ($stmt->execute()) {
            // Email notification
            $to = '#';
            $email_subject = 'Message from your Brothers in Arms site!';
            $email_body = "You have received a new contact form submission:\n\n";
            $email_body .= "Name: $name\n";
            $email_body .= "Email: $email\n";
            $email_body .= "Mobile: $mobile\n";
            $email_body .= "Message: $form_message\n";

            mail($to, $email_subject, $email_body);

            ob_end_clean();
            header('Location: /brothers-in-arms-web/contact.php?success=1#contact');

            exit;
        } else {
            ob_end_clean();
            echo "Database execution failed: " . implode(" - ", $stmt->errorInfo());
        }
    } catch (PDOException $e) {
        ob_end_clean();
        echo "Database error: " . $e->getMessage();
    }
} else {
    ob_end_clean();
    foreach ($errors as $error) {
        echo $error . '<br>';
    }
}
?>
