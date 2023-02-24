<%-- 
    Document   : inventory
    Created on : Feb 24, 2023, 12:46:37 PM
    Author     : moksh
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Page</title>
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

 
   

</head>

<body>
    <ul class="menu">

        <h1><img src="https://www.shareicon.net/data/256x256/2016/04/14/492851_admin_256x256.png"
                alt="" width="40" style="border-radius: 10px;margin-left: 8px;margin-top: 1rem;"> </h1>
        <b class="b">ADMIN</b>
        <i class="i">Space</i>
        <hr>
        <div class="text">
            <li class="item"><a ><i class="fas fa-home"></i>Inventory</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Profile</a></li>
            <li class="item"><a><i class="fas fa-bell"></i>Logout</a></li>
            
        </div>
    </ul>

    <br>

    <h1 style="text-transform: uppercase;" class="h">Welcome-Admin</h1>

    <br>

    <div class="container">



        <fieldset class="info">

                <div style="align-items: flex-start">
                    Inventory
                </div>
<!--            <div style="">
                        <button>Add new Drug</button>
                    </div>-->
            
        </fieldset>

        

        



       

        <fieldset class="info">

            Booking Details
            <br>
            <p>
                <br>
                Dernière connexion il y a 3 heures à Paris.
                <br>
                <button style="margin-top: 1rem;">Booking Data</button>

            </p>

            <div class="logo">
                <i class="fas fa-shield-alt"></i>
            </div>
        </fieldset>


        <div class="coordonate">
            <div class="container"></div>





            <div class="coordonate"></div>
            
      <table border="1" id="datatable">
        <tbody>
          <tr>
            <th>ID</th>
            <th>Drug name</th>
            <th>Manufacturer</th>
            <th>Supplier</th>
            <th>NDC</th>
            <th>Expiration date</th>
            <th>Quantity</th>
            <th>Unit Price</th>
            <th>Actions</th>
           
          </tr>
        
       
            
      </table>
            
        </div>

    </div>
            
        </div>

    </div>
</body>

</html>