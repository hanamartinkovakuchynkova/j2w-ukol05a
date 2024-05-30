[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration Recap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="container">
    <div class="">
        <h1>Registration Recap</h1>
        <div>Your child <strong>${form.firstName} ${form.lastName}</strong> has been registered to our summer camp.
            <br>
            [#if form.email?? && (form.email?length > 0)]
                Confirmation email has been sent to your email address ${form.email}.
            [/#if]
            <h2>Recapitulation of data entered</h2>
            <label>Child's First Name:</label>
            <span>${form.firstName}</span>
            <br>
            <label>Child's Last Name:</label>
            <span>${form.lastName}</span>
            <br>
            <label>Child's Date of Birth:</label>
            <span>${form.birthDate?string("dd.MM.yyyy")}</span>
            <br>
            <label>Child's Gender:</label>
            <span>${form.gender}</span>
            <br>
            <label>Selected Stay:</label>
            <span>${form.stay}</span>
            <br>
            <label>Parent's Email:</label>
            <span>${form.email}</span>
            <br>
            <label>Parent's Telephone:</label>
            <span>${form.phone}</span>
        </div>
    </div>
</div>
</body>
</html>