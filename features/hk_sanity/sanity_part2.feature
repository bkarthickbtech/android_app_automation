@hk @part2
Feature: Catalogs, PDV and cart

	@Catalogs
	Scenario: Catalogs
		And  I wait up to 30 seconds for "Hong Kong" to appear
		And  I touch the "Hong Kong" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Search" to appear

		And  I touch the "Search" text
		And  I enter "Flats " into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "Flats bow" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "!" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text
		
		And  I touch the "Search" text
		And  I enter "£" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text	

		And  I touch the "Search" text
		And  I enter "$" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "%" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "^" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "&" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "*" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter "(" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I touch the "Search" text
		And  I enter ")" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Cancel" text

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		Then I browse through the catagories

		And  I touch the "Women" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back
		And  I touch the "Men" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I go back

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Brands" to appear
		And  I touch the "Brands" text
		And  I wait up to 30 seconds for the view with id "image" to appear
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back
		And  I scroll down
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "HKD" currency
		And  I go back

	@PDV
	Scenario: PDV
		And  I check for country select "Hong Kong"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I wait up to 30 seconds for "Shoes" to appear
		And  I touch the "Shoes" text
		And  I wait up to 30 seconds for "Women - Flats" to appear
		And  I touch the "Women - Flats" text
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "HKD"
		And  I press list item number 3
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#SCREEN OVERLAY
		And  I take a screenshot with name "hk_product_page"
		And  I press view with id "fullScreenBtn"
		#FULL SCREEN VIEW
		And  I take a screenshot with name "hk_fullscreen_view"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I touch the "Add to Cart" text
		Then I wait for "Please select a size to see shipping details" to appear
		And  I test the size selector
		And  I wait up to 30 seconds for the view with id "product_rating" to appear
		And  I press view with id "product_rating"
		And  I wait up to 30 seconds for "Comment" to appear
		#REVIEWS AND RATINGS PAGE
		And  I take a screenshot with name "hk_reviews_and_ratings"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I scroll down
		And  I scroll down
		#DESCRIPTION
		And  I take a screenshot with name "hk_product_description"
		And  I scroll up
		And  I scroll up
		And  I touch the "Add to Cart" text
		And  I check the quantity in the cart to be 1

	@cart
	Scenario: Add to Cart & Remove from cart & Empty cart view
		And  I check for country select "Hong Kong"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "en"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Categories" to appear
		And  I touch the "Categories" text
		And  I add a random product to cart for "en"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "SHOPPING CART" to appear
		#ITEM LIST
		And  I take a screenshot with name "hk_product_list"
		And  I touch the "Delete" text
		And  I wait up to 30 seconds for "Remove Item" to appear
		And  I touch the "Yes" text
		Then I wait up to 30 seconds for "YOUR SHOPPING CART IS EMPTY" to appear