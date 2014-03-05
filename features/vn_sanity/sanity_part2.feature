@vn @part2
Feature: Catalogs, PDV and cart

	@Catalogs
	Scenario: Catalogs
		And  I wait up to 30 seconds for "Vietnam" to appear
		And  I touch the "Vietnam" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		Then I wait up to 30 seconds for the view with id "search_component" to appear

		#START LANGUAGE CHANGE
		And  I touch the "Tìm kiếm" text		
		And  I enter "Nam" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "Nam Thun" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "!" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text
		
		And  I touch the "Tìm kiếm" text
		And  I enter "£" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text	

		And  I touch the "Tìm kiếm" text
		And  I enter "$" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "%" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text


		And  I touch the "Tìm kiếm" text
		And  I enter "^" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "&" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "*" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter "(" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I touch the "Tìm kiếm" text
		And  I enter ")" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Hủy" text

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		Then I browse through the catagories

		And  I touch the "Nữ" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back
		And  I touch the "Nam" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I go back
		#END LANGUAGE CHANGE

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Thương hiệu" to appear
		And  I touch the "Thương hiệu" text
		And  I wait up to 30 seconds for the view with id "image" to appear
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back
		And  I scroll down
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "VND" currency
		And  I go back

	@PDV
	Scenario: PDV
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		And  I wait up to 30 seconds for "Giày" to appear
		And  I touch the "Giày" text
		And  I wait up to 30 seconds for "Nữ - Giày Cao Gót" to appear
		And  I touch the "Nữ - Giày Cao Gót" text
		#END LANGUAGE CHANGE
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "VND"
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#SCREEN OVERLAY
		And  I take a screenshot with name "vn_product_page"
		And  I press view with id "fullScreenBtn"
		#FULL SCREEN VIEW
		And  I take a screenshot with name "vn_fullscreen_view"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#START LANGUAGE CHANGE
		And  I touch the "Thêm vào giỏ hàng" text
		Then I wait for "Xin lựa chọn size để xem thông tin vận chuyển" to appear
		#END LANGUAGE CHANGE
		And  I test the size selector
		And  I wait up to 30 seconds for the view with id "product_rating" to appear
		And  I press view with id "product_rating"
		#LANGUAGE CHANGE
		And  I wait up to 30 seconds for "GỬI" to appear
		#REVIEWS AND RATINGS PAGE
		And  I take a screenshot with name "vn_reviews_and_ratings"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I scroll down
		And  I scroll down
		#DESCRIPTION
		And  I take a screenshot with name "vn_product_description"
		And  I scroll up
		And  I scroll up
		#LANGUAGE CHANGE
		And  I touch the "Thêm vào giỏ hàng" text
		And  I check the quantity in the cart to be 1

	@cart
	Scenario: Add to Cart & Remove from cart & Empty cart view
		And  I check for country select "Vietnam"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "vn"
		And  I press view with id "sideMenuButton"
		#START LANGUAGE CHANGE
		And  I wait up to 30 seconds for "Danh mục" to appear
		And  I touch the "Danh mục" text
		#END LANGUAGE CHANGE
		And  I add a random product to cart for "vn"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		#LANGUAGE CHANGE
		And  I wait up to 30 seconds for "GIỎ HÀNG" to appear
		#ITEM LIST
		And  I take a screenshot with name "vn_product_list"
		#START LANGUAGE CHANGE
		And  I touch the "Xóa" text
		And  I wait up to 30 seconds for "Bỏ sản phẩm" to appear
		And  I touch the "Có" text
		Then I wait up to 30 seconds for "RẤT TIẾC!" to appear
		#END LANGUAGE CHANGE