@sg @part1
Feature: Registration, my account, login, existing user checkout

	@newuserregistration	
	Scenario: Registering as a new user
		And  I wait up to 30 seconds for "Singapore" to appear
		And  I touch the "Singapore" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
 		And  I ensure that no account is logged in for "en"
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "My Account" to appear
		And  I touch the "My Account" text
		And  I wait up to 30 seconds for "REGISTRATION" to appear
		And  I touch the "REGISTRATION" text 
		And  I wait up to 30 seconds for "SUBMIT" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "test" into input field number 4
		And  I enter "test" into input field number 5
		And  I touch the "Female" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I touch the "Terms & Conditions" text
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "sg_terms_and_conditions_1"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "sg_terms_and_conditions_2"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "sg_terms_and_conditions_3"
		And  I go back
		And  I toggle checkbox number 1
		And  I touch the "SUBMIT" text
		And  I wait up to 30 seconds for "START SHOPPING" to appear
		And  I touch the "START SHOPPING" text

	@myaccount
	Scenario: Changing account details
		And  I check for country select "Singapore"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "My Account" to appear
		And  I touch the "My Account" text
		And  I wait up to 30 seconds for "Change Password" to appear
		And  I enter "123456" into input field number 1
		And  I enter "123123" into input field number 2
		And  I enter "123123" into input field number 3
		And  I clear input field number 4
		And  I enter "test_automation" into input field number 4
		And  I clear input field number 5
		And  I enter "test_automation" into input field number 5
		And  I touch the "Male" text
		And  I touch the "SUBMIT" text
		And  I wait up to 30 seconds for "Your account has been updated with the new information" to appear
		And  I touch the "OK" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "My Account" to appear
		And  I touch the "My Account" text
		And  I wait up to 30 seconds for "Change Password" to appear
		And  I enter "123123" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I clear input field number 4
		And  I enter "test" into input field number 4
		And  I clear input field number 5
		And  I enter "test" into input field number 5
		And  I touch the "SUBMIT" text
		And  I wait up to 30 seconds for "Your account has been updated with the new information" to appear
		And  I touch the "OK" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@Login
	Scenario: Wrong Password & Forgot Password & Login & Logout
		And  I check for country select "Singapore"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "en"
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Login" to appear
		Then I touch the "Login" text
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "LOGIN" text 
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "aklsjhdais" into input field number 2
		And  I touch the "LOGIN" text
		And  I wait up to 30 seconds for "Incorrect email or password" to appear
		And  I touch the "OK" text
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "Forgot Password?" text
	#	And  I wait up to 30 seconds for "You'll receive a mail to create a new password shortly" to appear
		And  I wait up to 30 seconds for "You'll reveice a mail to create a new password shortly" to appear
		And  I touch the "Close" text
		And  I clear input field number 2
		And  I enter "123456" into input field number 2
		And  I touch the "LOGIN" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@existingusercheckout @checkout @test
	Scenario: Checkout with existing user
		And  I check for country select "Singapore"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "en"
		And  I ensure that the cart is empty for "en"
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I add a random product to cart for "en"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "SHOPPING CART" to appear
		And  I touch the "PAY NOW" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "LOGIN" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "123456" into input field number 2
		Then I touch the "LOGIN" text
		Then I wait for loading to be complete
		And  I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I take a screenshot with name "sg_order_confirmation_existing"
		And  I verify the text "Your Order" 
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		When I wait up to 60 seconds for "Thank you for your order!" to appear
		Then I take a screenshot with name "sg_order_number_existing"
		And  I ensure that no account is logged in for "en"