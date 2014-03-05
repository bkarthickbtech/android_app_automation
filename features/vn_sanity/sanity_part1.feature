@vn @part1
Feature: Registration, my account, login, existing user checkout

	@newuserregistration	
	Scenario: Registering as a new user
		And  I wait up to 30 seconds for "Vietnam" to appear
		And  I touch the "Vietnam" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
 		And  I ensure that no account is logged in for "vn"
 		And  I wait for 2 seconds
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Thông tin cá nhân" to appear
		And  I touch the "Thông tin cá nhân" text
		And  I wait up to 30 seconds for "ĐĂNG KÝ" to appear
		And  I touch the "ĐĂNG KÝ" text 
		And  I wait up to 30 seconds for "GỬI" to appear
		#END LANGUAGE CHANGE
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "test" into input field number 4
		And  I enter "test" into input field number 5
		#LANGUAGE CHANGE
		And  I touch the "Nữ" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		#LANGUAGE CHANGE
		And  I submit the date
		#LANGUAGE CHANGE
		And  I touch the "Terms and Conditions" text
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "vn_terms_and_conditions_1"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "vn_terms_and_conditions_2"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "vn_terms_and_conditions_3"
		And  I go back
		And  I toggle checkbox number 1
		#START LANGUAGE CHANGE
		And  I touch the "GỬI" text
		And  I wait up to 30 seconds for "BẮT ĐẦU MUA HÀNG" to appear
		And  I touch the "BẮT ĐẦU MUA HÀNG" text
		#END LANGUAGE CHANGE

	@myaccount
	Scenario: Changing account details
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Thông tin cá nhân" to appear
		And  I touch the "Thông tin cá nhân" text
		And  I wait up to 30 seconds for "Thay đổi mật khẩu" to appear
		#END LANGUAGE CHANGE
		And  I enter "123456" into input field number 1
		And  I enter "123123" into input field number 2
		And  I enter "123123" into input field number 3
		And  I clear input field number 4
		And  I enter "test_automation" into input field number 4
		And  I clear input field number 5
		And  I enter "test_automation" into input field number 5
		#START LANGUAGE CHANGE
		And  I touch the "Nam" text
		And  I touch the "GỬI" text
		And  I wait up to 30 seconds for "Thông tin tài khoản đã được cập nhật" to appear
		And  I touch the "OK" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Thông tin cá nhân" to appear
		And  I touch the "Thông tin cá nhân" text
		And  I wait up to 30 seconds for "Thay đổi mật khẩu" to appear
		#END LANGUAGE CHANGE
		And  I enter "123123" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I clear input field number 4
		And  I enter "test" into input field number 4
		And  I clear input field number 5
		And  I enter "test" into input field number 5
		#START LANGUAGE CHANGE
		And  I touch the "GỬI" text
		And  I wait up to 30 seconds for "Thông tin tài khoản đã được cập nhật" to appear
		And  I touch the "OK" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@Login
	Scenario: Wrong Password & Forgot Password & Login & Logout
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		#LANGUAGE CHANGE
		And  I ensure that no account is logged in for "vn"
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Đăng nhập" to appear
		Then I touch the "Đăng nhập" text
		And  I wait up to 30 seconds for "ĐĂNG NHẬP" to appear
		And  I touch the "ĐĂNG NHẬP" text 
		And  I wait up to 30 seconds for "ĐĂNG NHẬP" to appear
		#END LANGUAGE CHANGE
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "aklsjhdais" into input field number 2
		#START LANGUAGE CHANGE
		And  I touch the "ĐĂNG NHẬP" text
		And  I wait up to 30 seconds for "Hãy kiểm tra email và mật khẩ\n" to appear
		And  I touch the "OK" text
		And  I wait up to 30 seconds for "ĐĂNG NHẬP" to appear
		And  I touch the "Quên mật khẩu" text
		And  I wait up to 30 seconds for "Bạn sẽ sớm nhận được email hướng dẫn tạo mật khẩu" to appear
		And  I touch the "Đóng" text
		And  I clear input field number 2
		And  I enter "123456" into input field number 2
		And  I touch the "ĐĂNG NHẬP" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@existingusercheckout @checkout @test
	Scenario: Checkout with existing user
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "vn"
		And  I ensure that the cart is empty for "vn"
		And  I wait for 2 seconds
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
		Then I take a screenshot with name "vn_order_confirmation_existing"
		#LANGUAGE CHANGE
		And  I verify the text "\n    GIỎ HÀNG CỦA BẠN\n" 
		And  I wait for 3 seconds
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	   	#LANGUAGE CHANGE
		When I wait up to 60 seconds for "Cảm ơn bạn đã đặt hàng" to appear
		Then I take a screenshot with name "vn_order_number_existing"
		And  I ensure that no account is logged in for "vn"