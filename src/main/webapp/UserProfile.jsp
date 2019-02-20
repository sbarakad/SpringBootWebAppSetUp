<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Say No to Hunger</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		
		<!-- StyleSheet below needed to add icons to the Log In and Sign Up links -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="../CSS/UserProfile.css">
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
		      		<button class="btn btn-primary navbar-btn">Log Out 
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
		      </ul>


		      <ul class="nav navbar-nav navbar-right hidden-xs">
		      	<li>
		        	<button class="btn btn-primary navbar-btn">Log Out 
			        		<i class="fas fa-user"></i>
			        		<span class="sr-only">Log Out</span>
		        	</button>
		        </li>
		      </ul>

		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>

		<div class="container">
				<div class="centered-in-container">
				    <button id="editProfileBtn" class="btn btn-primary" onclick="makeProfileEditable();">Edit Profile
				    	<span class="sr-only">edit profile</span>
		        	</button>	
		        </div>	
		        <hr>
		        <div class="container">
		        	<div class="row">
		        		<div id="userImage" class="col-lg-3 col-md-3 col-sm-3 col-es-12">
		        			<div class="thumbnail">
		        				<img src="../Images/user.jpg" alt="User Profile Image">
		        				<button class="editImageBtn" id="editImgBtn"><i class="far fa-edit"></i></button>
		        			</div>
		        		</div>
		        		<div class="col-lg-8 col-lg-offset-1 col-md-8 col-md-offset-1 col-sm-8 col-sm-offset-1 col-xs-12 col-xs-12-centre">
		        			<!-- Source: http://1000hz.github.io/bootstrap-validator/#validator -->
							<form data-toggle="validator" id="userDetailsForm">
								<div class="form-group row">
								    <label for="userName" class="control-label col-sm-2 col-form-label">Name</label>
								    <div class="col-sm-10">
								    	<input id="userName" disabled type="text" data-error="Name can contain letters only and has to be at least 1 character long." required pattern="[A-Za-z ]{1,}" class="form-control" placeholder="John Doe">
								    	<div class="help-block with-errors"></div>
								    </div>
								</div>									
								<div class="form-group row">
								    <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
								    <div class="col-sm-10">
								        <input id="inputEmail" disabled type="email" class="form-control" required data-error="Email address has to be of format 'token'@'token'" placeholder="john.doe@yourmail.com">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>									
							    <div class="form-group row">
							        <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
							        <div class="col-sm-10">
							            <input id="inputPassword" disabled type="password" pattern="[A-Za-z0-9!@#%^&]{8,12}" class="form-control" required data-error="Password should contain characters A-Z a-z 0-9 ! @ # % ^ & and be eight to twelve characters long.">
							            <div class="help-block with-errors"></div>
							        </div>
							    </div>
								<div class="form-group row">
								    <label for="streetAddr" class="col-sm-2 col-form-label">Street Addr.</label>
								    <div class="col-sm-10">
								        <input id="streetAddr" disabled type="text" class="form-control" placeholder="1615 Oxford St." required data-error="Please enter valid address.">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="cityName" class="col-sm-2 col-form-label">City</label>
								    <div class="col-sm-10">
								        <input id="cityName" disabled type="text" class="form-control" placeholder="Halifax" required data-error="Please enter valid city name.">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="postalCode" class="col-sm-2 col-form-label">Postal Code</label>
								    <div class="col-sm-10">
								        <input id="postalCode" disabled type="text" pattern="[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d" class="form-control" placeholder="B3H 1W5" required data-error="Postal code has to be of the format 'A5B 3D9'.">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="provinceName" class="col-sm-2 col-form-label">Province</label>
								    <div class="col-sm-10">
								        <input id="provinceName" disabled type="text" class="form-control" placeholder="Nova Scotia" required data-error="Please enter valid province name.">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>
								<div class="form-group row">
								    <label for="countryName" class="col-sm-2 col-form-label">Country</label>
								    <div class="col-sm-10">
								        <input id="countryName" disabled type="text" class="form-control" placeholder="Canada" required data-error="Please enter valid country name.">
								        <div class="help-block with-errors"></div>
								    </div>
								</div>
 								<div class="col-sm-10" id="saveCancelBtns">
									<button id="saveBtn" disabled class="btn btn-success" onclick="">Save
								    	<span class="sr-only">save profile changes</span>
						        	</button>	
						        	<button id="cancelBtn" disabled class="btn btn-danger" onclick="cancelEditAction();">cancel
								    	<span class="sr-only">cancel profile changes</span>
						        	</button>	
								</div>										
		        			</form>
		        		</div>
		        	</div>
				</div>
		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	    crossorigin="anonymous">
	    </script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script src="../JS/UserProfile.js"></script>
	</body>
</html>