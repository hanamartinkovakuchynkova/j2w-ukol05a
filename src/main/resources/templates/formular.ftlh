[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
    <main>
        <form class="" action="" method="post">
            <h1>Registration for children's summer camp</h1>
            <p>
            <label for="firstName" class="radek">Child's First Name</label>
            [@spring.formInput path="form.firstName" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <label for="lastName" class="radek">Child's Last Name</label>
            [@spring.formInput path="form.lastName" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <label for="dateBirth" class="radek">Child's Date of Birth (yyyy-mm-dd)</label>
            [@spring.formInput path="form.birthDate" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <div class="radek">Child's Gender:</div>
            <div class="skupina">
                <div>
                    <input id="gender1" type="radio" name="gender" value="female"/>
                    <label for="gender1">female</label>
                </div>
                <div>
                    <input id="gender2" type="radio" name="gender" value="male"/>
                    <label for="gender2">male</label>
                </div>
            </div>
            [@spring.bind "form.gender"/]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <label for="stay" class="radek">Choose Stay:</label>
            [@spring.formSingleSelect path="form.stay" options={
            "": "",
            "1. stay (5th - 11th July)": "5th to 11th July",
            "2. stay (12th - 18th July)": "12th to 18th July",
            "3. stay (19th - 25th July)": "19th to 25th July"
            } /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <label for="email" class="radek">Parent's Email</label>
            [@spring.formInput path="form.email" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <label for="phone" class="radek">Parent's Telephone</label>
            [@spring.formInput path="form.phone" /]
            <div class="error">[@spring.showErrors "<br>"/]</div>

            <p>
            <div class="radek controls">
                <button type="submit">Register</button>
            </div>
        </form>
    </main>
</body>
</html>
