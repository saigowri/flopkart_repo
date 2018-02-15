<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell online on Flopkart!</title>
    <link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
    <link rel="stylesheet" href="./bootstrapFiles/css/styles.css">
    <link rel="stylesheet" href="./bootstrapFiles/css/Pretty-Registration-Form.css">
</head>

<body>
    <header><img src="./images/sellerHub/seller-hub-logo.png" id="flipkartsellerhub" class="flipkartsellerhub">
        <form class="form-inline bootstrap-form-with-validation">
            <div class="form-group">
                <label class="control-label sr-only" for="email-input">Email </label>
                <input class="form-control" type="email" placeholder="Email" id="email-input">
            </div>
            <div class="form-group">
                <label class="control-label sr-only" for="password-input">Password </label>
                <input class="form-control" type="password" placeholder="Password" id="password-input">
            </div>
            <div class="checkbox hidden">
                <label>
                    <input type="checkbox"> Remember me</label>
            </div>
            <button class="btn btn-default" type="submit"> <strong>Login</strong></button>
        </form>
        
    <div class="container-fluid">
        
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="active" role="presentation"><a href="sellerHub.jsp">HOME</a></li>
                <li role="presentation"><a href="#">SELL SMART</a></li>
                <li role="presentation"><a href="#">PRICING</a></li>
                <li role="presentation"><a href="#">FAQ</a></li>
                <li role="presentation"><a href="#">BENEFITS</a></li>
                <li role="presentation"><a href="index.jsp">Flopkart.com</a></li>
            </ul>
        </div>
    </div>

    </header>
    <div class="jumbotron">
        <div class="form-login animated bounceIn">
 <div id="registertoday">
    <h2><b>Register Today</b></h2>
    <form class="form-horizontal" action="sellerRegistration.jsp">
        <div id="emailid">
        <input type="email" placeholder="Email Id">
            </div>
        <div id="phoneno" style="padding-top:15px">
        <input type="text" placeholder="Phone No" >
            </div>
        <div style="padding-top:15px">
            <button id="edit-submit-2" value="Start Selling" type="submit" class="btn btn-default form-submit" style="width:170px">Start Selling</button>
        </div>
        </form>
     </div>
</div>
    </div>
    <div class="splitlayout container">
    <h1>Grow your business with the leader in Indian e-commerce</h1></div>
    <div class="row">
        <div class="col-md-4">
            
<img src="./images/sellerHub/search.PNG" id="search" class="search" style="width:150px"/>
        </div>
        <div class="col-md-4">
            <img src="./images/sellerHub/handshake.PNG" id="handshake" class="handshake" style="width:150px,border-style:solid,border-radius:100px,margin-left:100px"/>
        </div>
        <div class="col-md-4">
            <img src="./images/sellerHub/money.PNG" id="money" class="money" style="width:150px,border-style:solid,border-radius:100px"/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h3 class="text-uppercase text-center searchheading" id="searchheading">10 CRORE</h3>
            <p class="text-lowercase text-center">Customers looking to buy your products</p>
        </div>
        <div class="col-md-4">
            <h4>1,00,000+ </h4>
            <p class="text-lowercase text-center">business growing rapidly with us </p>
        </div>
        <div class="col-md-4">
            <h5 class="text-uppercase text-center">7-15 days</h5>
            <p class="text-lowercase text-center">to process your payments</p>
        </div>
    </div>
    <script src="./bootstrapFiles/js/jquery.min.js"></script>
    <script src="./bootstrapFiles/js/bootstrap.min.js"></script>
</body>

</html>