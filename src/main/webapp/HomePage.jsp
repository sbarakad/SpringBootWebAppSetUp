<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Say No to Hunger</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- StyleSheet below needed to add icons to the Log In and Sign Up links -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="../CSS/HomePage.css">
		<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- makes the application be mobile app-->
	</head>
	<body>
		<!-- Navigation bar source: https://getbootstrap.com/docs/3.3/components/#navbar
			 Modifications to the original Navigation bar: 
			 1. drop-down lists and search field are removed because not are not needed.
			 2. id="slogan" is added to the anchor tag below. New style is applied to this html item in the HomePahe.css. This style put the slogan text in the centre of the space on the left from the collpse button (when navigation bar is collapsed)-->
		<nav class="navbar navbar-default">
		  <div class="container"> <!-- *-fluid was removed to make the navigation bar be with margins-->
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#items-to-collapse" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span> <!-- sr-only makes this text visible for screan readers only-->
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a id="slogan" class="navbar-brand" href="#">Say No to Hunger!</a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="items-to-collapse">

		      <ul class="nav navbar-nav">
		      	<!-- Idea how to change the order of the navbar items when collapsed source: https://stackoverflow.com/questions/23875090/changing-menu-order-on-collapsed-navbar-in-bootstrap-3 -->
		      	<li class="log-in-button navbar-right visible-xs">
		      		<button class="btn btn-primary navbar-btn">Log In 
		      			<i class="fas fa-user"></i>
		      			<span class="sr-only">Log In</span>
		      		</button>
		      	</li>
		        <li>
		        	<a href="#">About<span class="sr-only">About</span>
			        </a>
			    </li>
		        <li>
		        	<a href="#">Our Members<span class="sr-only">Our Members</span>
		        	</a>
		        </li>
		        <li>
		        	<a href="#">Statistics<span class="sr-only">Statistics</span>
		        	</a>
		        </li>
		        <li>
		        	<a href="#">Testimonials<span class="sr-only">Testimonials</span>
		        	</a>
		        </li>

		      	<li id="signUpLinkWhenCollapsed" class="navbar-right visible-xs">
		      		<a href="http://www.google.com">Sign Up <i class="fas fa-user-plus"></i>
						<span class="sr-only">Sign Up</span>
		      		</a>
		      	</li>
		      </ul>


		      <ul class="nav navbar-nav navbar-right hidden-xs">
		      	<li>
		      		<a href="http://www.google.com">Sign Up <i class="fas fa-user-plus"></i> 
		      			<span class="sr-only">Sign Up</span>
		      		</a>
		      	</li>
		        <li class="log-in-button">
		        	<button class="btn btn-primary navbar-btn">Log In 
			        		<i class="fas fa-user"></i>
			        		<span class="sr-only">Log In</span>
		        	</button>
		        </li>
		      </ul>

		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>

		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-7 col-sm-7">
					<div class="jumbotron">
			      		<h1>Welcome!</h1>
			      		<h4>Check out our members in your area:</h4> 
			    	</div>					
					<div id="googleMap" class="thumbnail">
        			</div>
				</div>
				<div class="col-lg-4 col-md-5 col-sm-5" >
					<div class="jumbotron">
			      		<p>Latest news:</p> 
			    	</div>	
			        <div class="thumbnail box">
						<div class="marquee">
							<p><a href="https://www.cnn.com/2019/02/04/health/bernie-sanders-firdapse-catalyst-bn/index.html">Sanders wants answers on why low-cost drug is suddenly priced at $375,000</a></p>
			          		<p><a target="_blank" href="https://www.cnn.com/2019/02/04/us/seattle-snow-wxc/index.html">Seattle slips and slides through unusually heavy snowfall</a></p>
			          		<p><a target="_blank" href="https://www.cnn.com/2019/02/04/opinions/donald-trump-ghost-story-state-of-the-union-joseph-ellis/index.html">Opinion: A ghost story for Donald Trump - and all of us</a></p>
			          		<p><a target="_blank" href="https://www.cnn.com/2019/01/17/europe/germany-arms-sales-saudi-arabia-scli-ger-intl/index.html">Germany cuts Saudi arms exports by quarter in wake of Khashoggi scandal</a></p>
			          		<p><a target="_blank" href="https://www.cnn.com/2019/02/04/tech/rcom-ambani-bankruptcy-court/index.html">Sibling fight sends billionaire into bankruptcy</a></p>
						</div>

			        </div>
				</div>
			</div>
		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	    crossorigin="anonymous">
	    </script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<!-- GoogleSource -->

	<script src="../JS/HomePage.js"></script>
	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFXZua16m5Lbh933RJDohtMeVmHtXkfGY&callback=initMap">
    </script>

	</body>
</html>