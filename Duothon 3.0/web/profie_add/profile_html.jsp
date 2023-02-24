<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Update form</title>
    <link rel="stylesheet" href="style.css">
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<style>
    body{
    
    background-size: cover;
    background-color: #e1eae8;
}


#form{
    background-color: rgb(0, 0, 0);
    height:500px;
    width:700px;
    margin:auto;
    padding:20px;
    opacity: 0.7;
}

#form h3{
    border-bottom: 2px solid #3399ff;
    width:210px;
    padding: 5px;
}
::placeholder{
    color:#fff
}
#input #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input2 #input-group{
    width:195px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input3 #input-group{
    margin-left: 50px;
}
#input4 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input4 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input5 h3{
    border-bottom: 2px solid #3399ff;
    width:220px;
    padding: 5px;
}
#input6 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input6 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
</style>
<body>
 <div class="wrapper">  
    <div class="container"><!--container-->
        <form class="form-group"><!--form-->
            <h1 class="text-center">Pharmacy Information</h1>

            <div id="form"><!--form-->
                <h3 class="text-white"> Details</h3>

            <div id="input">
                <input type="text" id="input-group" placeholder="Pharmacy's name">
                <input type="text" id="input-group" placeholder="Address">
                <input type="text" id="input-group" placeholder="Phone Number">
                <input type="text" id="input-group" placeholder="Email">
                <input type="text" id="input-group" placeholder="Website">
                <input type="text" id="input-group" placeholder="Operating Hours">
                <input type="text" id="input-group" placeholder="Pharmacy License">
               
                </div><!--input-->

                <div id="input5"><!--input5-->
                    <h3 class="text-white">Owner Information</h3>
                </div><!--input5-->

                <div id="input6"><!--input6-->
                    <input type="text" id="input-group" placeholder="Name">
                    <input type="number" id="input-group" placeholder="Address">
                    <input type="email" id="input-group1" placeholder="Owner Phone Number">
                        <input type="email" id="input-group1" placeholder="Owner Email">
                            <input type="email" id="input-group1" placeholder="Owner NIC">
                </div><!--input6-->
                <button type="submit" class="btn btn-warning text-white">Save</button>
              
            </div><!--form-->

        </form><!--form-->

    </div><!--container-->
 </div>
</body>
</html>