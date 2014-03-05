@th @part3
Feature: Banners, checkout & country switch

	@banners
	Scenario: Introductory message & banner links
		When I wait up to 30 seconds for "Thailand" to appear
		And  I touch the "Thailand" text
		And  I wait for 1 seconds
		#INTRODUCTORY MESSAGE
		And  I take a screenshot with name "th_intro_message"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgTop"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgLeft" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgLeft"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgRight" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgRight"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgBottom" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgBottom"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back

	@existingusercheckoutvoucher @checkout
	Scenario: Checkout with existing user with voucher
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "th"
		And  I ensure that the cart is empty for "th"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		And  I wait up to 30 seconds for "กระเป๋า" to appear
		And  I touch the "กระเป๋า" text
		And  I wait up to 30 seconds for "Women - กระเป๋าสตางค์" to appear
		And  I touch the "Women - กระเป๋าสตางค์" text
		#END LANGUAGE CHANGE
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#LANGUAGE CHANGE
		And  I touch the "ใส่ในรถเข็น" text
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "รถเข็น" to appear
		And  I touch the "ชำระเงินทันที" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "เข้าสู่ระบบ" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "123456" into input field number 2
		Then I touch the "เข้าสู่ระบบ" text
		#END LANGUAGE CHANGE
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
		#LANGUAGE CHANGE
		And  I verify the text "\n    รายการสั่งซื้อของคุณ\n" 
		And  I enter voucher code "SELENIUM"
		Then I take a screenshot with name "th_order_confirmation_existing_voucher"
		Then I wait for final loading to be complete
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		#START LANGUAGE CHANGE
	    When I wait up to 60 seconds for "ขอบคุณที่ใช้บริการค่ะ :)" to appear
	    Then I take a screenshot with name "th_order_number_existing_voucher"
		And  I ensure that no account is logged in for "th"

	@newusercheckout @checkout
	Scenario: Checkout new user no voucher
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "th"
		And  I ensure that the cart is empty for "th"
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "th" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "รถเข็น" to appear
		And  I touch the "ชำระเงินทันที" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "สร้างบัญชี" to appear
		And  I touch the "สร้างบัญชี" text 
		Then I wait up to 30 seconds for "ส่ง" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "ชาย" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I toggle checkbox number 1
		And  I touch the "ส่ง" text
		#END LANGUAGE CHANGE
		Then I wait for loading to be complete
		Then I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		#START LANGUAGE CHANGE
		And  I enter billing mobile no 0814569835
		And  I enter billing cell no 0814569835
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  I enter billing city info "Bang na"
		Then I choose billing province as "กาญจนบุรี"
		And  I enter billing postcode 87565
		#END LANGUAGE CHANGE
		And  I scroll down
		And  In webview I click "button" once
		And  In webview I click "button" once
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		#LANGUAGE CHANGE
		And  I verify the text "\n    รายการสั่งซื้อของคุณ\n" 
		Then I take a screenshot with name "th_order_confirmation_new"
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		#LANGUAGE CHANGE
	    When I wait up to 60 seconds for "ขอบคุณที่ใช้บริการค่ะ :)" to appear
	    Then I take a screenshot with name "th_order_number_new"
		And  I ensure that no account is logged in for "th"
			
	@countryswitch
	Scenario: Checking that cart is emptied
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "th"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "th" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "sideMenuButton"
		#LANGUAGE CHANGE
		And  I touch the "เปลี่ยนประเทศ" text
		And  I wait up to 30 seconds for "Thailand" to appear
		And  I touch the "Hong Kong" text
		And  I touch the "ใช่" text

	@countryswitch
	Scenario: Country switch part 2
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I check the quantity in the cart to be 0