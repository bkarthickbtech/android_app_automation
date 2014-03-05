@hk @part3
Feature: Banners, checkout & country switch

	@banners
	Scenario: Introductory message & banner links
		When I wait up to 30 seconds for "Hong Kong" to appear
		And  I touch the "Hong Kong" text
		And  I wait for 1 seconds
		#INTRODUCTORY MESSAGE
		And  I take a screenshot with name "hk_intro_message"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgTop"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgLeft" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgLeft"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgRight" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgRight"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgBottom" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgBottom"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back

	@existingusercheckoutvoucher @checkout
	Scenario: Checkout with existing user with voucher
		And  I check for country select "Hong Kong"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "en"
		And  I ensure that the cart is empty for "en"
		And  I wait for 2 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I wait up to 30 seconds for "Bags" to appear
		And  I touch the "Bags" text
		And  I wait up to 30 seconds for "Women - Wallets & Purses" to appear
		And  I touch the "Women - Wallets & Purses" text
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I press list item number 1
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I touch the "Add to Cart" text
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
		And  I check on "cod"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I verify the text "Your Order" 
		And  I enter voucher code "SELENIUM"
		Then I take a screenshot with name "hk_order_confirmation_existing_voucher"
		Then I wait for final loading to be complete
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Thank you for your order!" to appear
	    Then I take a screenshot with name "hk_order_number_existing_voucher"
		And  I ensure that no account is logged in for "en"

	@newusercheckout @checkout
	Scenario: Checkout new user no voucher
		And  I check for country select "Hong Kong"
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
		And  I toggle checkbox number 1
		And  I touch the "SUBMIT" text 
		Then I wait for loading to be complete
		Then I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I enter billing mobile no 9874561235
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  In webview I click "button" once
		And  In webview I click "button" once
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I check on "cod"		
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I verify the text "Your Order"
		Then I take a screenshot with name "hk_order_confirmation_new"
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Thank you for your order!" to appear
	    Then I take a screenshot with name "hk_order_number_new"
		And  I ensure that no account is logged in for "en"
			
	@countryswitch
	Scenario: Checking that cart is emptied
		And  I check for country select "Hong Kong"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "en"
		And  I wait for 2 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I add a random product to cart for "en"
		And  I check the quantity in the cart to be 1
		And  I press view with id "sideMenuButton"
		And  I touch the "Change Country" text
		And  I wait up to 30 seconds for "Singapore" to appear
		And  I touch the "Singapore" text
		And  I touch the "Yes" text

	@countryswitch
	Scenario: Country switch part 2
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I check the quantity in the cart to be 0