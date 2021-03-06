<nav id="Navbar" class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container">
	
	    <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        		<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
	           	<span class="icon-bar"></span>
			</button>
	
			<a class="navbar-brand" href="${createLink(uri: '/')}">
				<img class="logo" src="${resource(plugin: 'kickstart', dir:'images', file:'unb.gif')}" alt="${meta(name:'app.name')}" width="50px" height="25px"/> 
				Anato HUB
			</a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse" role="navigation">

		<!--<ul class="nav navbar-nav">
			<g:render template="/_menu/controller"/>
		</ul> -->

    	<ul class="nav navbar-nav navbar-right">		
			<sec:ifNotLoggedIn>
				<a class="navbar-brand" href="login/index">
					<button type="button" class="btn btn-sm btn-success">Login</button></a>
				<a class="navbar-brand" href="user/create">
					<button type="button" class="btn btn-sm btn-primary">Register</button>
				</a>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>
				<a class="navbar-brand" href="logout/index">
					<button type="button" class="btn btn-sm btn-danger">Logout</button>
				</a>
			</sec:ifLoggedIn>		
	    </ul>			

		</div>
	</div>
</nav>
