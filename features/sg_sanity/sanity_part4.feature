@sg @part4
Feature: New user checkout with new address and voucher

	@newusercheckoutvoucher @checkout
	Scenario: Checkout new user with voucher
		And  I wait up to 30 seconds for "Singapore" to appear
		And  I touch the "Singapore" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "en"
		And  I ensure that the cart is empty for "en"
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I wait up to 30 seconds for "Bags" to appear
		And  I touch the "Bags" text
		And  I wait up to 30 seconds for "Women - Wallets & Purses" to appear
		And  I touch the "Women - Wallets & Purses" text
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I touch the "Add to Cart" text
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
		And  I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I enter billing cell no 65498765
		And  I enter billing mobile no 9874561235
		Then I enter billing postcode 123456
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  In webview I click "button" once
		And  In webview I click "button" once
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for loading to be complete
		And  I verify the text "Your Order"
		And  I enter voucher code "SELENIUM"
		Then I take a screenshot with name "sg_order_confirmation_new_voucher"
		Then I wait for loading to be complete
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Thank you for your order!" to appear
	    Then I take a screenshot with name "sg_order_number_new_voucher"
		And  I ensure that no account is logged in for "en"

		@newusercheckoutnewaddress @checkout
		Scenario: Checkout new user + new address
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
		And  I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I enter billing cell no 65498765
		And  I enter billing mobile no 9874561235
		Then I enter billing postcode 123456
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  In webview I click "button" once
		And  In webview I click "button" once
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I verify the text "Your Order"
		Then I drag from 50:80 to 50:20 moving with 5 steps
		Then I drag from 50:80 to 50:20 moving with 5 steps
		And  I add a new address at checkout
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I touch the "Add new Address" text in webview
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I enter shipping first name "new_address"
		Then I enter shipping last name "test"
		Then I enter shipping cell no 65498765
		And  I enter shipping mobile no 9874561235
		Then I enter shipping postcode 123456
		Then I enter shipping address1 info "new address test"
		Then I enter shipping address2 info "new address"
		And  In webview I click "button" once
		And  In webview I click "button" once
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I take a screenshot with name "sg_multiple_addresses"
		And  I select addresses
		And  In webview I click "button"
	    And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for loading to be complete
		Then I take a screenshot with name "sg_order_confirmation_new_address"
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Thank you for your order!" to appear
	    Then I take a screenshot with name "sg_order_number_new_address"
		And  I ensure that no account is logged in for "en"