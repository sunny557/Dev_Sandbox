<aura:application >
    <link href='resource/bootstrap' rel="stylesheet" />
    <div class="nav-menu back-to-top" role="navigation"/>
    <div class="container">
    	<div class="section-title">
        	<a href="#" class="hero"> Lightning Contacts</a>
        </div>
    </div>
    <div>
    	<div class="container">
        	<div class="row">
            	<div class="section-title">
                    <c:searchBarComp />
                    <c:contactList/>
              	</div>
                <div class="col-sm-8">
                    <c:contactDetails />
                </div>
            </div>
        </div>
    </div>
</aura:application>