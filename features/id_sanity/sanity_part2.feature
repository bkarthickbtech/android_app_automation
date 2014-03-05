@id @part2
Feature: Catalogs, PDV and cart

	@Catalogs
	Scenario: Catalogs
		And  I wait up to 30 seconds for "Indonesia" to appear
		And  I touch the "Indonesia" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Cari" to appear

		And  I touch the "Cari" text
		And  I enter "Flats " into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "Flats bow" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "!" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text
		
		And  I touch the "Cari" text
		And  I enter "£" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text	

		And  I touch the "Cari" text
		And  I enter "$" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "%" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text


		And  I touch the "Cari" text
		And  I enter "^" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "&" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "*" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter "(" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I touch the "Cari" text
		And  I enter ")" into input field number 1
		And  I press the enter button
		And  I wait up to 30 seconds for the view with id "prodlist_container" to appear
		And  I touch the "Batal" text

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		Then I browse through the catagories

		And  I touch the "Wanita" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "RP"
		And  I go back
		And  I touch the "Pria" text
		And  I wait up to 30 seconds for the view with id "header" to appear
		And  I press view with id "header"
		And  I wait up to 30 seconds for the view with id "name" to appear
		And  I press view with id "name"
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "RP"
		And  I go back

		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Merek" to appear
		And  I touch the "Merek" text
		And  I wait up to 30 seconds for the view with id "image" to appear
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back
		And  I scroll down
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back
		And  I scroll down 
		And  I click on a brand and check that the products are valid with "RP" currency
		And  I go back

	@PDV
	Scenario: PDV
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I wait up to 30 seconds for "Sepatu" to appear
		And  I touch the "Sepatu" text
		And  I wait up to 30 seconds for "Wanita - Flats" to appear
		And  I touch the "Wanita - Flats" text
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I check that the currency of the products are "RP"
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		#SCREEN OVERLAY
		And  I take a screenshot with name "id_product_page"
		And  I press view with id "fullScreenBtn"
		#FULL SCREEN VIEW
		And  I take a screenshot with name "id_fullscreen_view"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I touch the "Tambah ke Troli" text
		Then I wait for "Pilih ukuran dan lanjut ke transaksi" to appear
		And  I test the size selector
		And  I wait up to 30 seconds for the view with id "product_rating" to appear
		And  I press view with id "product_rating"
		And  I wait up to 30 seconds for "Komentar" to appear
		#REVIEWS AND RATINGS PAGE
		And  I take a screenshot with name "id_reviews_and_ratings"
		And  I go back
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I scroll down
		And  I scroll down
		#DESCRIPTION
		And  I take a screenshot with name "id_product_description"
		And  I scroll up
		And  I scroll up
		And  I touch the "Tambah ke Troli" text
		And  I check the quantity in the cart to be 1

	@cart
	Scenario: Add to Cart & Remove from cart & Empty cart view
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that the cart is empty for "id"
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I add a random product to cart for "id"
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "TROLI BELANJA" to appear
		#ITEM LIST
		And  I take a screenshot with name "id_product_list"
		And  I touch the "Hapus" text
		And  I wait up to 30 seconds for "Hapus Barang" to appear
		And  I touch the "Ya" text
		Then I wait up to 30 seconds for "TIDAK ADA BARANG DI TROLI" to appear