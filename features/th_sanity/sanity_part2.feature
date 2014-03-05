@th @part2
Feature: Catalogs, PDV and cart

	@Catalogs
	Scenario: Catalogs
		And  I wait up to 30 seconds for "Thailand" to appear
		And  I touch the "Thailand" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		Then I wait up to 30 seconds for the view with id "search_component" to appear

		#START LANGUAGE CHANGE
		And  I touch the "ค้นหา" text
		And  I enter "Flats" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "Flats bow" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "!" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text
		
		And  I touch the "ค้นหา" text
		And  I enter "£" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text	

		And  I touch the "ค้นหา" text
		And  I enter "$" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "%" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text


		And  I touch the "ค้นหา" text
		And  I enter "^" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "&" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "*" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter "(" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I touch the "ค้นหา" text
		And  I enter ")" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "ยกเลิก" text

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		Then I browse through the catagories

		And  I touch the "ผู้หญิง" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back
		And  I touch the "ผู้ชาย" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I go back
		#END LANGUAGE CHANGE

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "ยี่ห้อ" to appear
		And  I touch the "ยี่ห้อ" text
		And  I wait up to 30 seconds for the view with id "image" to appear
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back
		And  I scroll down
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "THB" currency
		And  I go back

	@PDV
	Scenario: PDV
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		And  I wait up to 30 seconds for "รองเท้า" to appear
		And  I touch the "รองเท้า" text
		And  I wait up to 30 seconds for "Women - รองเท้ามีส้น" to appear
		And  I touch the "Women - รองเท้ามีส้น" text
		#END LANGUAGE CHANGE
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "THB"
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#SCREEN OVERLAY
		And  I take a screenshot with name "th_product_page"
		And  I press view with id "fullScreenBtn"
		#FULL SCREEN VIEW
		And  I take a screenshot with name "th_fullscreen_view"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#START LANGUAGE CHANGE
		And  I touch the "ใส่ในรถเข็น" text
		Then I wait for "โปรดคลิกเลือกไซส์ เพื่อดูรายละเอียดการจัดส่งสินค้า" to appear
		#END LANGUAGE CHANGE
		And  I test the size selector
		And  I wait up to 30 seconds for the view with id "product_rating" to appear
		And  I press view with id "product_rating"
		#LANGUAGE CHANGE
		And  I wait up to 30 seconds for "ส่ง" to appear
		#REVIEWS AND RATINGS PAGE
		And  I take a screenshot with name "th_reviews_and_ratings"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I scroll down
		And  I scroll down
		#DESCRIPTION
		And  I take a screenshot with name "th_product_description"
		And  I scroll up
		And  I scroll up
		#LANGUAGE CHANGE
		And  I touch the "ใส่ในรถเข็น" text
		And  I check the quantity in the cart to be 1

	@cart
	Scenario: Add to Cart & Remove from cart & Empty cart view
		And  I check for country select "Thailand"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "th"
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "หมวดสินค้า" to appear
		And  I touch the "หมวดสินค้า" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "th"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#LANGUAGE CHANGE
		And  I wait up to 30 seconds for "รถเข็น" to appear
		#ITEM LIST
		And  I take a screenshot with name "th_product_list"
		#START LANGUAGE CHANGE
		And  I touch the "ลบ" text
		And  I wait up to 30 seconds for "ลบสินค้า" to appear
		And  I touch the "ใช่" text
		Then I wait up to 30 seconds for "โอ้ ! ไม่นะ !" to appear
		#END LANGUAGE CHANGE