@vn
Feature: New Registration

@newuserregistration	

	Scenario: New registration checkout 

		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "imgBottom"
                And  I add an item to the cart for "vn"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "GIỎ HÀNG" to appear
		And  I touch the "THANH TOÁN NGAY" text
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
		And  I wait up to 60 seconds for "button" to appear in webview
                And  I enter billing mobile no 0914569835
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		Then I choose billing province as "Hồ Chí Minh"
		And  I choose billing city as "Huyện Bình Chánh"
		And  I choose billing ward as "Thị trấn Tân Túc"
		And  In webview I click Continue
		Then I wait for final loading to be complete
                And  I wait up to 30 seconds for "button" to appear in webview    
		And  In webview I click Continue		
		Then I wait for final loading to be complete
                And  I wait up to 30 seconds for "button" to appear in webview    
		And  I verify the text "\n    GIỎ HÀNG CỦA BẠN\n" 
                And  I scroll down
                And  In webview I click Order Now
                Then I wait for final loading to be complete
                And  I touch the "Tiếp tục mua hàng" text
                Then I wait up to 30 seconds for the view with id "imgTop" to appear
		
