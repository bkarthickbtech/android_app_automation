@vn @part3
Feature: Banners, checkout & country switch

	@banners
	Scenario: Introductory message & banner links
		When I wait up to 30 seconds for "Vietnam" to appear
		And  I touch the "Vietnam" text
		And  I wait for 1 seconds
		#INTRODUCTORY MESSAGE
		And  I take a screenshot with name "vn_vn_intro_message"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgTop"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgLeft" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgLeft"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgRight" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgRight"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back
		Then I wait up to 30 seconds for the view with id "imgBottom" to appear
		And  I wait for 3 seconds
		And  I press view with id "imgBottom"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back

	@existingusercheckoutvoucher @checkout
	Scenario: Checkout with existing user with voucher
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "vn"
		And  I ensure that the cart is empty for "vn"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		And  I wait up to 30 seconds for "Túi Xách" to appear
		And  I touch the "Túi Xách" text
		And  I wait up to 30 seconds for "Nữ - Túi Đeo Chéo" to appear
		And  I touch the "Nữ - Túi Đeo Chéo" text
		#END LANGUAGE CHANGE
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#LANGUAGE CHANGE
		And  I touch the "Thêm vào giỏ hàng" text
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "GIỎ HÀNG" to appear
		And  I touch the "THANH TOÁN NGAY" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "ĐĂNG NHẬP" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "123456" into input field number 2
		Then I touch the "ĐĂNG NHẬP" text
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
		And  I verify the text "\n    GIỎ HÀNG CỦA BẠN\n" 
		And  I enter voucher code "SELENIUM"
		Then I take a screenshot with name "vn_order_confirmation_existing_voucher"
		Then I wait for final loading to be complete
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		#START LANGUAGE CHANGE
	    When I wait up to 60 seconds for "Cảm ơn bạn đã đặt hàng" to appear
	    Then I take a screenshot with name "vn_order_number_existing_voucher"
		And  I ensure that no account is logged in for "vn"

	@newusercheckout @checkout
	Scenario: Checkout new user no voucher
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "vn"
		And  I ensure that the cart is empty for "vn"
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "vn" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "GIỎ HÀNG" to appear
		And  I touch the "THANH TOÁN NGAY" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "ĐĂNG KÝ" to appear
		And  I touch the "ĐĂNG KÝ" text 
		Then I wait up to 30 seconds for "GỬI" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "Nam" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I toggle checkbox number 1
		And  I touch the "GỬI" text
		#END LANGUAGE CHANGE
		Then I wait for loading to be complete
		Then I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		#START LANGUAGE CHANGE
		And  I enter billing mobile no 0914569835
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		Then I choose billing province as "Hồ Chí Minh"
		And  I choose billing city as "Huyện Bình Chánh"
		And  I choose billing ward as "Thị trấn Tân Túc"
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
		And  I verify the text "\n    GIỎ HÀNG CỦA BẠN\n" 
		Then I take a screenshot with name "vn_order_confirmation_new"
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		#LANGUAGE CHANGE
	    When I wait up to 60 seconds for "Cảm ơn bạn đã đặt hàng" to appear
	    Then I take a screenshot with name "vn_order_number_new"
		And  I ensure that no account is logged in for "vn"
			
	@countryswitch
	Scenario: Checking that cart is emptied
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "vn"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "vn" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "sideMenuButton"
		#LANGUAGE CHANGE
		And  I touch the "Thay đổi quốc gia" text
		And  I wait up to 30 seconds for "Vietnam" to appear
		And  I touch the "Hong Kong" text
		And  I touch the "Có" text

	@countryswitch
	Scenario: Country switch part 2
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I check the quantity in the cart to be 0