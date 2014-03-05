@hk
Feature: New Registration


@newuserregistration	

	Scenario: New registration checkout 


                And  I check for country select "Hong Kong"
		Then I wait up to 30 seconds for the view with id "imgBottom" to appear
		And  I press view with id "imgBottom"
                And  I add an item to the cart for "en"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "SHOPPING CART" to appear
		And  I touch the "PAY NOW" text
		Then I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "REGISTRATION" text 
		Then I wait up to 30 seconds for "SUBMIT" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "Male" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
                And  I touch the "Terms & Conditions" text
                And  I scroll down
                And  I scroll down
                And  I go back
		And  I toggle checkbox number 1
		And  I touch the "SUBMIT" text 
		And  I wait up to 60 seconds for "button" to appear in webview
		And  I enter billing mobile no 9874561235
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  In webview I click Continue		
		Then I wait for final loading to be complete
                And  I wait up to 30 seconds for "button" to appear in webview            
		And  I check on "cod"				
		Then I wait for final loading to be complete
                And  I wait up to 30 seconds for "button" to appear in webview
		And  I verify the text "Your Order"
                And  I scroll down
                And  In webview I click Order Now
                Then I wait for final loading to be complete
                And  I touch the "Continue Shopping" text
                Then I wait up to 30 seconds for the view with id "imgTop" to appear
