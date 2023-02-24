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

    <style>
        :root{
    --bk: #181826;
    --border: 2px solid var(--bd);
    --col2: #212134;
    --bd: #474766;
    --cp: #acacca;
    --cp2: white;
    --button: #4945FF;
}

@media (prefers-color-scheme: light)
{ 
:root{
    --bk: white;
    --border: 2px solid var(--bd);
    --col2: #e7e7f0;
    --bd: white;
    --cp: #161616;
    --cp2: #181826;
    --button: #0051bb;
}


}

* {
    color: var(--cp2);
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.5rem;
    text-decoration: none;
}

html {

    background-color: var(--bk);
    margin-left: 16rem;
    padding-bottom: 20%;
    margin-right: 2rem;
}

.menu {
    position: fixed;
    left: 0;
    top: -1rem;
    padding: 0;
    width: 210px;
    background-color: var(--col2);
    height: 100vh;
    list-style: none;
    border-right: var(--border);
    border-width: 0;
}

p {

    line-height: 28.1333px;
    vertical-align: baseline;
    letter-spacing: 0.5px;
    word-spacing: 0px;
    margin: 0px;
    padding: 0px;
    font-size: 18px;
    font-family: Outfit, sans-serif;
    text-align: justify;
    color: var(--cp);
}

.text {
    margin: 0 .7rem;
}

button {
    background-color: var(--button);
    padding: .5rem 1rem;
    font-size: 1.1rem;
    font-weight: 700;
    border-radius: 4px;
    border: 0;
    cursor: pointer;
    color: white;
}

a {
    color: #54519e;
    font-weight: 700;
    font-style: lighter;
}

button:hover {
    opacity: .7;
    transition: .3s all ease-out;
}

hr {
    border: 2px solid var(--bd);
}

h1 {
    margin-left: 10px;
    display: inline-block;
}

.b {
    padding: 0 15px;
    margin-top: 40px;
    position: absolute;
}

.i {
    padding: 0 15px;
}

.menu li {
    padding: .7rem 0;
    font-size: 1.3rem;
}

.menu li * {
    color: var(--cp);
    font-size: 1rem;
}

.menu li:hover {
    cursor: pointer;
    opacity: .5;
    background-color: var(--bd);
    outline: .5rem solid var(--bd);
}

.item i {
    margin-right: 16px;
}

fieldset.info {
    margin-top: 1rem;
    border: var(--border);
    border-width: 0;
    background-color: var(--col2);
    padding: 2rem;
    border-radius: 5px;
    padding-left: 8rem;
    position: relative;
    font-size: 2rem;
    max-width: 100%;
    margin: 1rem;
}

fieldset.info p {
    position: relative;
    left: -5rem;
    top: 1rem;
    width: calc(100% + 5rem);

}

fieldset.info table {
    position: relative;
    left: -1rem;
    top: 1rem;
    width: 100%;
}

fieldset.info td {
    min-width: 100%;
    background-color: var(--bk);
    padding: .7rem;
    border-radius: 5px;
    font-size: 1.2rem;
    text-align: center;
}

fieldset.info tr {
    padding-top: .5rem;
}

fieldset .logo {
    position: absolute;
    left: 2.5rem;
    top: 1rem;
    padding: 1rem;
    white-space: nowrap;
    background-color: var(--bk);
    border-radius: 5px;

}

.coordonate {
    position: relative;

    border: var(--border);
    border-width: 0;
    background-color: var(--col2);
    padding: 1rem;


    width: 350px;
    border-radius: 5px;
    margin: 1rem;

}

.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: left;
    align-items: stretch;
}

.container>* {

    flex: auto;
}

@media screen and (max-width: 900px) and (min-width: 600px) {
    html {
        margin-left: 1rem;
    }

    .menu {
        display: block;
        all: unset;
        margin: 0 30px;
        overflow: auto;
    } 
  
  .menu li{
      list-style: none;
      display: inline-block;
      margin: 5px;
      padding: .5rem 1rem;
      background: var(--bd);
      border-radius: 30px;
  } 
  
  .menu li:hover {
    outline: 2px solid white;
    outline-offset: 2px;
  } 
  
  .h {
    position: absolute;
    top: 2rem;
    right: 50px;
  }


} 

@media (max-width: 599px) {
    html {
        margin-left: 0rem;
    }

    .menu {
        display: block;
        all: unset;
        margin: 0 0px;
        overflow: auto;
    } 
  
  .menu li{
      display: none;
  } 
  
  .menu hr {
    display: none;
  }
  
  .menu::after {
    font-family: "Font Awesome 5 Free";
    content: "\f0c9";
    font-weight: 900;
    margin-left: 20px;
    cursor:pointer;
  }
  
  ul.menu:hover li{
    display: block;
    margin-left: 30px;
  }


  
  .menu li:hover {
    outline: 2px solid white;
    outline-offset: 2px;
  } 
  
  .h {
    font-size: 2rem;
    line-height: 3rem;
  }
  
  fieldset.info {
    min-width: calc(100% - 120px);
    position: relative;
    line-height: 2rem;
    padding-left: 6rem;
  }
  
  fieldset.info .logo{
    left: .5rem;
    top: .5rem;
  }



}
    </style>

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

            Update Drugs
            <br>
            <p>
              
                <button style="margin-top: 1rem;">Add new Drugs</button>

            </p>

            <div class="logo">
                <i class="fas fa-shield-alt"></i>
            </div>
        </fieldset>
<!--        
--------------------------------------------------------------------------------------------------------------->
<form action="" method="POST">
    <tbody>
        <tr>
            <td>Select Drug Name</td>
            <td><input type="text" name="select drug name" value=""/></td>
        </tr>
         <tr>
            <td>Supplier</td>
            <td><input type="text" name="supplier" value=""/></td>
        </tr>
        <tr>
            <td>Select Expiration Date</td>
            <td><input type="text" name="date" value=""/></td>
        </tr>
        <tr>
            <td>Manufacture</td>
            <td><input type="text" name="manu" value=""/></td>
        </tr>
        <tr>
            <td>National ID</td>
            <td><input type="text" name="ndc" value=""/></td>
        </tr>
        <tr>
            <td>Quantity on hand</td>
            <td><input type="text" name="hand" value=""/></td>
        </tr>
        <tr>
            <td>Unit Price</td>
            <td><input type="text" name="price" value=""/></td>
        </tr>
        <tr>
            <td><input type="Add Drug" value="ADD DRUG"/></td>
        </tr>
    </tbody>
</form>

        
        



        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        
 
        

    </div>
</body>

</html>