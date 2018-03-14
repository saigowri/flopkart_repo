<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Item Display</title>
</head>
<style>
.buynow
{
	    background: #fb641b;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
    border: none;
    color: #fff;
    width:48%;
    padding: 18px 8px;
    border-radius: 2px;
}
.buynowdiv
{
	padding-top:20px;
}
.addtocart
{
	background: #ff9f00;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
    border: none;
    color: #fff;
    width:48%;
    padding: 18px 8px;
    border-radius: 2px;
	
}
</style>

<body>

    <%@include file="header.jsp" %>
    <div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
<!-- 				<li><a href="#">Home</a></li> -->
<!-- 				<li><a href="#">Clothing</a></li> -->
<!-- 				<li class='active' id="breadcrumblast">Floral Print Buttoned Top</li> -->
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row single-product'>
			<div class="col-md-12">
            <div class="detail-block">
				<div class="row  wow fadeInUp">
                
					     <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div id="gallery" class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg">
                    <img class="img-responsive" alt="" width="480px" src="./images/blank.gif" data-echo="./images/products/puma1.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide2">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p9.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide3">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p10.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p10.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide4">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p11.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p11.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide5">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p12.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p12.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide6">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p13.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p13.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide7">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p14.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p14.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide8">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p4.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p4.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide9">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p5.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p5.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

        </div><!-- /.single-product-slider -->




    </div><!-- /.single-product-gallery -->
    <div class="buynowdiv">
    <form action="underConstruct.html">
    	<button id="buynow" class="buynow">
    		Buy Now
    	</button>
    	<button class="addtocart" id="addtocart">
    		Add to cart
    	</button>
    </form>
    </div>
</div><!-- /.gallery-holder -->        			
					<div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info" id="product-info">
						</div></div>
								</div><!-- /.row -->
							</div><!-- /.quantity-container -->
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
                </div>
	
</body>

    <%@include file="footer.jsp" %>

<script>
$(document).ready(function(){

//	 	alert(test);
	<% AccessProperties ap = new AccessProperties(); %>
	var imgServerURL = "<%=ap.getImageServerURL() %>"; 
    var ctxPath = "<%=request.getContextPath()%>";
    var itemid = "<%=request.getParameter("id")%>";
	headerFunctions(ctxPath);
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings/"+itemid,
			dataType : "json", // data type of response
			success : function(result){
				var amount = result.price - (result.discount*result.price/100);
				data = "<h1 class='name' id='product_title'>"+result.listingName+"</h1>"+
				"	<div class='rating-reviews m-t-20'>"+
				"		<div class='row'>"+
				"			<div class='col-sm-3'>"+
				"				<div class='rating rateit-small'></div>"+
				"			</div>"+
				"			<div class='col-sm-8'>"+
				"				<div class='reviews'>"+
				"					<a href='#' class='lnk'></a>"+
				"				</div>"+
				"			</div>"+
				"		</div>"+
				"	</div>"+
				"	<div class='stock-container info-container m-t-10'>"+
				"		<div class='row'>"+
				"			<div class='col-sm-2'>"+
				"				<div class='stock-box'>"+
				"					<span class='label'>Availability :</span>"+
				"				</div>	"+
				"			</div>"+
				"			<div class='col-sm-9'>"+
				"				<div class='stock-box'>"+
				"					<span class='value' id='available'></span>"+
				"				</div>	"+
				"			</div>"+
				"		</div>	"+
				"	</div>"+
				"	<div class='description-container m-t-20' id='itemdescription'>"+result.description+
				"	</div>"+
				"	<div class='price-container info-container m-t-20'>"+
				"		<div class='row'>"+
				"			<div class='col-sm-6'>"+
				"				<div class='price-box'>"+
				"					<span class='price' id='discountedprice'><i class='fa fa-rupee-sign'></i>"+
									amount+
				"					</span>"+
				"					<span class='price-strike' id='price-strike'><i class='fa fa-rupee-sign'></i>"+
									result.price+
				"					</span>"+
				"				</div>"+
				"			</div>"+
				"			<div class='col-sm-6'>"+
				"				<div class='favorite-button m-t-10'>"+
				"					<a class='btn btn-primary' data-toggle='tooltip' data-placement='right' title='Wishlist' href='#'>"+
				"					    <i class='fa fa-heart'></i>"+
				"					</a>"+
				"					<a class='btn btn-primary' data-toggle='tooltip' data-placement='right' title='Add to Compare' href='#'>"+
				"					   <i class='fa fa-signal'></i>"+
				"					</a>"+
				"					<a class='btn btn-primary' data-toggle='tooltip' data-placement='right' title='E-mail' href='#'>"+
				"					    <i class='fa fa-envelope'></i>"+
				"					</a>"+
				"				</div>"+
				"			</div>"+
				"		</div>"+
				"	</div>"+
				"	<div class='quantity-container info-container'>"+
				"		<div class='row'>"+
				"			"+
				"			<div class='col-sm-2'>"+
				"				<span class='label'>Qty :</span>"+
				"			</div>"+
				"			<div class='col-sm-2'>"+
				"				<div class='cart-quantity'>"+
				"					<div class='quant-input'>"+
				"		                <div class='arrows'>"+
				"		                  <div class='arrow plus gradient'><span class='ir'><i class='icon fa fa-sort-asc'></i></span></div>"+
				"		                  <div class='arrow minus gradient'><span class='ir'><i class='icon fa fa-sort-desc'></i></span></div>"+
				"		                </div>"+
				"		                <input type='text' value='1'>"+
				"	              </div>"+
				"	            </div>"+
				"			</div>"+
				"			</div></div>";
				
			var img_data = "<div id='owl-single-product'>"+
				"    <div class='single-product-gallery-item' id='slide1'>"+
				"        <a data-lightbox='image-1' data-title='Gallery' href='./images/products/p9.jpg'>"+
				"            <img class='img-responsive' alt='' width='480px' src='./images/blank.gif' data-echo='"+imgServerURL+result.imgUrl+"' />"+
				"        </a>"+
				"    </div>"+
				"</div>";
				$("#product-info").html(data);
				$("#gallery").html(img_data);
// 				alert(JSON.stringify(result));
			},
	    	error:function() {
	        	//alert("error occurred");
	    	}
		});
});
</script>
</html>