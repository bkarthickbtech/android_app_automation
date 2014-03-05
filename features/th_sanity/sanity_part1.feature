@th @part1
Feature: Registration, my account, login, existing user checkout

	@newuserregistration	
	Scenario: Registering as a new user
		And  I wait up to 30 seconds for "Thailand" to appear
		And  I touch the "Thailand" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
 		And  I ensure that no account is logged in for "vn"
 		And  I wait for 2 seconds
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "บัญชีของฉัน" to appear
		And  I touch the "บัญชีของฉัน" text
		And  I wait up to 30 seconds for "สร้างบัญชี" to appear
		And  I touch the "สร้างบัญชี" text 
		And  I wait up to 30 seconds for "ส่ง" to appear
		#END LANGUAGE CHANGE
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "test" into input field number 4
		And  I enter "test" into input field number 5
		#LANGUAGE CHANGE
		And  I touch the "หญิง" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		#LANGUAGE CHANGE
		And  I submit the date
		#LANGUAGE CHANGE
		And  I touch the "ข้อตกลงและเงื่อนไข" text
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "th_terms_and_conditions_1"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "th_terms_and_conditions_2"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "th_terms_and_conditions_3"
		And  I go back
		And  I toggle checkbox number 1
		#START LANGUAGE CHANGE
		And  I touch the "ส่ง" text
		And  I wait up to 30 seconds for "เริ่มต้นการช๊อปปิ้ง" to appear
		And  I touch the "เริ่มต้นการช๊อปปิ้ง" text
		#END LANGUAGE CHANGE

	@myaccount
	Scenario: Changing account details
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "บัญชีของฉัน" to appear
		And  I touch the "บัญชีของฉัน" text
		And  I wait up to 30 seconds for "เปลี่ยนรหัสผ่าน" to appear
		#END LANGUAGE CHANGE
		And  I enter "123456" into input field number 1
		And  I enter "123123" into input field number 2
		And  I enter "123123" into input field number 3
		And  I clear input field number 4
		And  I enter "test_automation" into input field number 4
		And  I clear input field number 5
		And  I enter "test_automation" into input field number 5
		#START LANGUAGE CHANGE
		And  I touch the "ชาย" text
		And  I touch the "ส่ง" text
		And  I wait up to 30 seconds for "บัญชีของคุณได้รับการอัพเดทข้อมูลแล้ว !" to appear
		And  I touch the "ตกลง" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "บัญชีของฉัน" to appear
		And  I touch the "บัญชีของฉัน" text
		And  I wait up to 30 seconds for "เปลี่ยนรหัสผ่าน" to appear
		#END LANGUAGE CHANGE
		And  I enter "123123" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I clear input field number 4
		And  I enter "test" into input field number 4
		And  I clear input field number 5
		And  I enter "test" into input field number 5
		#START LANGUAGE CHANGE
		And  I touch the "ส่ง" text
		And  I wait up to 30 seconds for "บัญชีของคุณได้รับการอัพเดทข้อมูลแล้ว !" to appear
		And  I touch the "ตกลง" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@Login
	Scenario: Wrong Password & Forgot Password & Login & Logout
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		#LANGUAGE CHANGE
		And  I ensure that no account is logged in for "th"
		Then I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "บัญชีของฉัน" to appear
		And  I touch the "บัญชีของฉัน" text
		And  I wait up to 30 seconds for "เข้าสู่ระบบ" to appear
		And  I touch the "เข้าสู่ระบบ" text 
		And  I wait up to 30 seconds for "เข้าสู่ระบบ" to appear
		#END LANGUAGE CHANGE
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "aklsjhdais" into input field number 2
		#START LANGUAGE CHANGE
		And  I touch the "เข้าสู่ระบบ" text
		And  I wait up to 30 seconds for "ตรวจสอบ อีเมล์ และ รหัสผ่าน\n" to appear
		And  I touch the "ตกลง" text
		And  I wait up to 30 seconds for "เข้าสู่ระบบ" to appear
		And  I touch the "ลืมรหัสผ่าน?" text
		And  I wait up to 30 seconds for "คุุณจะได้รับอีเมลเพื่อตั้งรหัสผ่านใหม่ในไม่ช้า" to appear
		And  I touch the "ปิด" text
		And  I clear input field number 2
		And  I enter "123456" into input field number 2
		And  I touch the "เข้าสู่ระบบ" text
		#END LANGUAGE CHANGE
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@existingusercheckout @checkout @test
	Scenario: Checkout with existing user
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "th"
		And  I ensure that the cart is empty for "th"
		And  I wait for 2 seconds
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
		Then I take a screenshot with name "th_order_confirmation_existing"
		#LANGUAGE CHANGE
		And  I verify the text "\n    รายการสั่งซื้อของคุณ\n" 
		And  I wait for 3 seconds
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	   	#LANGUAGE CHANGE
		When I wait up to 60 seconds for "ขอบคุณที่ใช้บริการค่ะ :)" to appear
		Then I take a screenshot with name "th_order_number_existing"
		And  I ensure that no account is logged in for "th"