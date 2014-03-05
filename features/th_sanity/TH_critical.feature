@th
Feature: New Registration

@newuserregistration	

	Scenario: New registration checkout 

		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgBottom" to appear
		And  I press view with id "imgBottom"
                And  I add an item to the cart for "th"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "รถเข็น" to appear
		And  I touch the "ชำระเงินทันที" text
		Then I wait up to 30 seconds for "เข้าสู่ระบบ" to appear
		And  I touch the "สร้างบัญชี" text 
		Then I wait up to 30 seconds for "ส่ง" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "หญิง" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
                And  I touch the "ข้อตกลงและเงื่อนไข" text
                And  I scroll down
                And  I scroll down
                And  I go back
		And  I toggle checkbox number 1
		And  I touch the "ส่ง" text 
		And  I wait up to 60 seconds for "button" to appear in webview
		And  I enter billing mobile no 0814569835
		And  I enter billing cell no 0814569835
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		And  I enter billing city info "Bang na"
		And I choose billing province as "กาญจนบุรี"
		And  I enter billing postcode 87565
		And  In webview I click Continue
		Then I wait for final loading to be complete
                And  I wait up to 30 seconds for "button" to appear in webview    
		And  In webview I click Continue	
                Then I wait for final loading to be complete	
		And  I wait up to 30 seconds for "button" to appear in webview
                And  I verify the text "\n    รายการสั่งซื้อของคุณ\n" 
                And I scroll down
                And  In webview I click Order Now
                Then I wait for final loading to be complete
                And  I touch the "เลือกสินค้าเพิ่มเติม" text
                Then I wait up to 30 seconds for the view with id "imgTop" to appear
		
