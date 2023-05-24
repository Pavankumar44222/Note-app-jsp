<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
<section class="vh-100" style="background-color: #eee;">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-lg-12 col-xl-11">
          <div class="card text-black" style="border-radius: 25px;">
            <div class="card-body p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
  
                  <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                  
                  <form class="mx-1 mx-md-4" action="registervalid.jsp" method="post" name="registration">
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example1c">Your Name</label>
                        <input type="text" id="form3Example1c" class="form-control" name="firstName" required/>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example3c">Your Email</label>
                        <input type="email" id="form3Example3c" class="form-control"  name="email" required/>
                        <p id="email"></p>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4c">Mobile</label>
                        <input type="number" id="form3Example4c" class="form-control" name="mobile" id="mobile" required/>
                        <p id="mobile" color="red"></p>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                        <label class="form-label" for="form3Example4cd">password</label>
                        <input type="password" id="form3Example4cd" class="form-control" name="password" required/>
                        <p id="pass"></p>
                      </div>
                    </div>
  
                    <div class="form-check d-flex justify-content-center mb-5">
                      <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" /><br>
                      <label class="form-check-label" for="form2Example3"><br>
                        I agree all statements in <a href="#!">Terms of service</a>
                      </label>
                    </div>
  
                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <input type="submit" class="btn btn-primary btn-lg" value="register"></button>
                                          </div>
  
                  </form>
  
                </div>
                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
  
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                    class="img-fluid" alt="Sample image">
  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     </section>
  <script>
    function validateform()
    {
        var name1=document.registration.firstName.value;
        var pass=document.registration.password.value;
        var pno=document.registration.mobile.value;
        var em=document.registration.email.value;
        console.log(name1);
        console.log(pass);
        console.log(pno);
        console.log(name1);
        var letters = /^[a-z.A-Z\s]+$/;
        var numbers = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        var checkSpecial = /[*@!#%&]+/.test(pass);
        var checkUpper = /[A-Z]+/.test(pass);
        var checkLower = /[a-z]+/.test(pass);
        var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        var flag=0;
        if(!name1.match(letters))
        {
            alert("please enter alphabets only");
            //document.registration.firstname.focus();

            return false;
        }
        if(!numbers.test(pno))
        {
          //  alert("phone number should contain ten digits");
            //document.registration.num.focus();
            document.getElementById("mobile").innerHTML="Enter Valid Mobile Number";
            return false;
        }
        if(!validRegex.test(em))
        {
            alert("Enter a valid email id");
            document.getElementById("email").innerHTML="Enter Valid Email Number";
          //  document.registration.Email.focus();
            return false;
        }
        if(checkSpecial && checkUpper && checkLower)
        {
            flag=1;
        }
        if(flag==0)
        {
          document.getElementById("pass").innerHTML="password should contain atleast one lower case letter,one upper case letter & one special symbol($,&,#)";
          //  alert("password should contain atleast one lower case letter,one upper case letter & one special symbol($,&,#)");
            //document.registration.pwd.focus();
            return false;
        }
        alert("welcome to sunrise resorts");
        return true;
    }
</script>
</body>
</html>