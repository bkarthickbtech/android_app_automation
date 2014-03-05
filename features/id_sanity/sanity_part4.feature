@id @part4
Feature: New user checkout with new address and voucher

	@newusercheckoutvoucher @checkout
	Scenario: Checkout new user with voucher
		And  I wait up to 30 seconds for "Indonesia" to appear
		And  I touch the "Indonesia" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "id"
		And  I ensure that the cart is empty for "id"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I wait up to 30 seconds for "Tas" to appear
		And  I touch the "Tas" text
		And  I wait up to 30 seconds for "Wanita - Dompet" to appear
		And  I touch the "Wanita - Dompet" text
		And  I wait up to 30 seconds for the view with id "item_regprice" to appear
		And  I press list item number 2
		And  I wait up to 30 seconds for the view with id "estimatedDelivery" to appear
		And  I touch the "Tambah ke Troli" text
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "TROLI BELANJA" to appear
		And  I touch the "BAYAR SEKARANG" text
		Then I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "BUAT AKUN" text 
		Then I wait up to 30 seconds for "KIRIM" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "Pria" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I toggle checkbox number 1
		And  I touch the "KIRIM" text 
		Then I wait for loading to be complete
		And  I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I enter billing mobile no 9874561235
		And  I enter billing cell no 9874561235
		Then I enter billing postcode 68990
		And  I enter billing address1 info "#07- Block 402 B"
		And  I enter billing address2 info "punggol field"
		Then I choose billing province as "DKI Jakarta"
		And  I choose billing city as "Jakarta Selatan"
		And  I scroll down
		And  In webview I click "button" once
		And  In webview I click "button" once
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I verify the text "Your Order"
		And  I enter voucher code "SELENIUM"
		Then I take a screenshot with name "id_order_confirmation_new_voucher"
		Then I wait for final loading to be complete
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Terima kasih untuk pesanan Anda!" to appear
	    Then I take a screenshot with name "id_order_number_new_voucher"
		And  I ensure that no account is logged in for "id"

		@newusercheckoutnewaddress @checkout
		Scenario: Checkout new user + new address
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "id"
		And  I ensure that the cart is empty for "id"
		And  I wait for 3 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I add a random product to cart for "id" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "TROLI BELANJA" to appear
		And  I touch the "BAYAR SEKARANG" text
		Then I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "BUAT AKUN" text 
		Then I wait up to 30 seconds for "KIRIM" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "Test_FN" into input field number 4
		And  I enter "Test" into input field number 5
		Then I touch the "Pria" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I toggle checkbox number 1
		And  I touch the "KIRIM" text 
		Then I wait for loading to be complete
		And  I wait for loading to be complete
		And  I wait for final loading to be complete
		And  I wait up to 60 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I enter billing mobile no 9874561235
		And  I enter billing cell no 9874561235
		Then I enter billing postcode 68990
		And  I enter billing address1 info "#07- Block 402 B"
		Then I choose billing province as "DKI Jakarta"
		And  I choose billing city as "Jakarta Selatan"
		And  I scroll down
		And  In webview I click "button" once
		And  In webview I click "button" once
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  In webview I click "button"
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		And  I verify the text "Your Order"
		Then I drag from 50:80 to 50:20 moving with 5 steps
		Then I drag from 50:80 to 50:20 moving with 5 steps
		And  I add a new address at checkout
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I touch the "Masukkan Alamat Baru" text in webview
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I enter shipping first name "new_address"
		Then I enter shipping last name "test"
		And  I enter shipping mobile no 9874561235
		And  I enter shipping cell no 9874561235
		Then I enter shipping postcode 68990
		Then I enter shipping address1 info "new address test"
		Then I enter shipping address2 info "new address"
		Then I choose shipping province as "DKI Jakarta"
		And  I choose shipping city as "Jakarta Selatan"
		And  I scroll down
		And  In webview I click "button" once
		And  In webview I click "button" once
		Then I wait for loading to be complete
		And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I take a screenshot with name "id_multiple_addresses"
		And  I select addresses
		And  In webview I click "button"
	    And  I wait up to 30 seconds for "button" to appear in webview
		Then I wait for final loading to be complete
		Then I take a screenshot with name "id_order_confirmation_new_address"
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
	    Then I wait up to 60 seconds for "Terima kasih untuk pesanan Anda!" to appear
	    Then I take a screenshot with name "id_order_number_new_address"
		And  I ensure that no account is logged in for "id"