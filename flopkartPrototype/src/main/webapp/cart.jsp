<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart | Flopkart.com </title>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
<style>
.dotted { border-bottom: 1px dashed #DCDCDC; }
.lined { border-bottom: 1px solid #DCDCDC; }
</style>
</head>
<body>
 <header class="header-style-1">
 <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
						<li><a href="myProfile.jsp"><i class="fa fa-user"></i> My Account</a></li>
						<li><a href="underConstruct.html"><i class="fa fa-heart"></i> Wishlist</a></li>
					</ul>
		 </div>
        <!-- /.cnt-account -->
        
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  <!-- ============================================== TOP MENU : END ============================================== -->
  
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-2 logo-holder"> 
          <!-- ============================================================= LOGO ============================================================= -->
          <div class="logo"> <a href="index.jsp"> <img  height="50px" src="./images/flopkartLogo.jpg" alt=""> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> 
          </div>
        <!-- /.logo-holder -->

		<div class="col-xs-12 col-sm-12 col-md-8 top-search-holder"> 
          <!-- /.contact-row --> 
          <!-- ============================================================= SEARCH AREA ============================================================= -->
          <div class="search-area">
            <form>
              <div class="control-group">
              	<div class="row">
              	<div class="col-md-10">
                	<input class="search-field" placeholder="Search here..." />
                </div>
              	<div class="col-md-2">
                <a class="search-button" href="underConstruct.html" ></a> 
                </div>
              </div>
              </div>
            </form>
          </div>
          <!-- /.search-area --> 
          <!-- ============================================================= SEARCH AREA : END ============================================================= --> 
          </div>
        <!-- /.top-search-holder -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->

 </header>
 <!-- ============================================== HEADER : END ============================================== -->

<div class="body-content outer-top-xs">
		<div class="row">
			<div style="margin-left: 50px" class="col-md-8 col-sm-12 shopping-cart">
				<div class="shopping-cart-table">
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th class="cart-quantity item" colspan="7" style="text-align: left; font-size: 16px">MY CART (1)</th>
				</tr>
			</thead><!-- /thead -->
			<tbody>
				<tr>
					<td class="cart-image">
						<a class="entry-thumbnail" href="item.jsp">
						    <img src="./images/products/p2.jpg" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="detail.html">Men's Leather Strap Watch</a></h4>
						<div class="row">
							<div class="col-sm-4">
								<div class="rating rateit-small"></div>
							</div>
							<div class="col-sm-8">
								<div class="reviews">
									(06 Reviews)
								</div>
							</div>
						</div><!-- /.row -->
						<div class="cart-product-info">
											<span class="product-color">COLOR:<span>Blue</span></span>
						</div>
					</td>
					<td class="cart-product-quantity">
						<div class="quant-input">
				                <div class="arrows">
				                  <div id="quant-up" class="arrow plus gradient"><span ><i class="icon fa fa-sort-asc"></i></span></div>
				                  <div id="quant-down" class="arrow minus gradient"><span ><i class="icon fa fa-sort-desc"></i></span></div>
				                </div>
				                <input type="number" id="quantity" min="1">
			              </div>
		            </td>
					<td class="cart-product-grand-total"><input type="number" id="oneCost" hidden="hidden" value="300"><input type="number" id="oneActualCost" hidden="hidden" value="450">
					<span><i class="fa fa-rupee-sign"></i> <span id="price">300 </span>  </span><span><del>  <i class="fa fa-rupee-sign"></i> <span id="originalPrice">450</span></del></span></td>
				</tr>
			</tbody><!-- /tbody -->
			<tfoot>
				<tr>
					<td colspan="7">
						<div class="shopping-cart-btn">
							<span class="">
								<button type="button" id="continueShopping_btn"
									class="btn btn-primary"
									style="text-align: center; margin-left: 180px; background-color: #fff; box-shadow: 2px 2px 2px 2px rgba(0, 0, 0, .1); color: #212121; font-size: 15px; font-weight: 800; height: 50px; width: 300px;">
									<i class="fa fa-chevron-left"></i> CONTINUE SHOPPING
								</button>
								<button type="button" id="placeOrder_btn"
									class="btn btn-primary pull-right outer-right-xs btn-block"
									style="text-align: center; font-size: 15px; font-weight: 800; height: 50px; width: 300px; background-color: #F26419">PLACE
									ORDER</button>
							</span>
						</div>
						<!-- /.shopping-cart-btn -->
					</td>
				</tr>
			</tfoot>
		</table><!-- /table -->
		</div>
	</div><!-- /.shopping-cart-table -->
 </div><!-- /.shopping-cart -->
 <div style="margin-left : 30px;" class="col-md-3 col-sm-12">
 <div class="shopping-cart-pricing">
	<table class="table">
		<thead>
			<tr>
				<th class="cart-quantity item" style="text-align: left; font-size: 16px">PRICE DETAILS</th>
			</tr>
			<tr class="dotted">
				<td>
					<div class="price" style="text-align: left; font-size: 14px">Price <span style="padding-left:154px"><i class="fa fa-rupee-sign"></i><span style="font-weight: normal" id="totalPrice" ></span></span></div>
					<div class="delivery-charges" style="text-align: left; font-size: 14px">Delivery Charges<span class="inner-left"><i class="fa fa-rupee-sign"></i><span id="deliveryCharges"></span></span></div>
				</td>
			</tr>
			<tr class="lined">
				<td>
					<div class="amount-payable" style="text-align: left;font-size: 14px">Amount Payable <span class="inner-left-md"><i class="fa fa-rupee-sign"></i><span id="amount-payable"></span></span></div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="savings">Your Total Savings on this order <span><i class="fa fa-rupee-sign"></i> <span id="savings"></span></span></div>
				</td>
			</tr>
			</thead>
		</table><!-- /table -->
	</div><!-- cart-shopping -->
	<div style="margin: 34px 24px 10px 10px; display: inline-block">
		<img src="./images/safePayment_Cart.png"
			style="width: 29px; height: 36px; margin-right: 20px; float: left;"> <span
			style="font-size: 12px; font-weight: 500; line-height: 1.29; color: #878787;">
			Safe and Secure Payments. Easy returns. <br/>100% Authentic products.</span>
	</div>
	</div><!-- /.col-md-3 -->	
	
			</div> <!-- /.row -->
	</div> <!-- body-content outer-top-xs -->
 
 
 
 
 <!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-hover-dropdown.min.js"></script> 
<script src="./bootstrapFiles/js/owl.carousel.min.js"></script> 
<script src="./bootstrapFiles/js/echo.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.easing-1.3.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-slider.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.rateit.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-select.min.js"></script> 
<script src="./bootstrapFiles/js/wow.min.js"></script> 
<script src="./bootstrapFiles/js/scripts.js"></script>
<script src="./bootstrapFiles/js/cookies.js"></script>
<script>
$(document).ready(function(){
	$("#quantity").val(1);
	$("#totalPrice").text(parseInt($("#price").text()));
	var value = $("#totalPrice").text();
    if(parseInt(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseInt(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
	$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
	$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()))
});

$("#quant-up").click(function(){
	var value = $("#quantity").val();
	var onecost = $("#oneCost").val();
	var oneactual = $("#oneActualCost").val();
	value++;
	$("#quantity").val(value);
	onecost *= value;
	oneactual *= value;
	$("#price").text(onecost);
	$("#originalPrice").text(oneactual);
	var pricevalue = $("#price").text();
	var origvalue = $("#originalPrice").text();
	$("#originalPrice").text(origvalue);
	$("#totalPrice").text(pricevalue);
	textChange();
	$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
	$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()));
});

$("#quant-down").click(function(){
	var value = $("#quantity").val();
	var onecost = $("#oneCost").val();
	var oneactual = $("#oneActualCost").val();
	if(value>1){
		value--;
		$("#quantity").val(value);
		onecost *= value;
		oneactual *= value;
		$("#price").text(onecost);
		$("#originalPrice").text(oneactual);
		var pricevalue = $("#price").text();
		var origvalue = $("#originalPrice").text();
		$("#originalPrice").text(origvalue);
		$("#totalPrice").text(pricevalue);
		textChange();
		$("#amount-payable").text(parseInt($("#totalPrice").text())+parseInt($("#deliveryCharges").text()));
		$("#savings").text(parseInt($("#originalPrice").text())-parseInt($("#price").text()));
	}
});

//if total cart amount is more than 1000, delivery charge becomes 0
function textChange(){
    var value = $("#totalPrice").text();
    if(parseInt(value)>=1000) {
    	$("#deliveryCharges").text("0");
    }
    else if(parseInt(value)<1000) {
    	$("#deliveryCharges").text("50");
    }
}

</script>
</body>
</html>