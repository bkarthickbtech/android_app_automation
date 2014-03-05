@id @part1
Feature: Registration, my account, login, existing user checkout

	@newuserregistration	
	Scenario: Registering as a new user
		And  I wait up to 30 seconds for "Indonesia" to appear
		And  I touch the "Indonesia" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
 		And  I ensure that no account is logged in for "id"
 		And  I wait for 2 seconds
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Akun Saya" to appear
		And  I touch the "Akun Saya" text
		And  I wait up to 30 seconds for "BUAT AKUN" to appear
		And  I touch the "BUAT AKUN" text 
		And  I wait up to 30 seconds for "KIRIM" to appear
		And  I enter email "qa+mobile" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I enter "test" into input field number 4
		And  I enter "test" into input field number 5
		And  I touch the "Pria" text
		Then I touch the "YYYY / MM / DD" text
		Then I touch the "YYYY / MM / DD" text
		And  I submit the date
		And  I touch the "Syarat dan Ketentuan" text
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "id_terms_and_conditions_1"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "id_terms_and_conditions_2"
		And  I scroll down
		#TERMS AND CONDITIONS
		And  I take a screenshot with name "id_terms_and_conditions_3"
		And  I go back
		And  I toggle checkbox number 1
		And  I touch the "KIRIM" text
		And  I wait up to 30 seconds for "MULAI BELANJA" to appear
		And  I touch the "MULAI BELANJA" text

	@myaccount
	Scenario: Changing account details
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Akun Saya" to appear
		And  I touch the "Akun Saya" text
		And  I wait up to 30 seconds for "Ganti Password" to appear
		And  I enter "123456" into input field number 1
		And  I enter "123123" into input field number 2
		And  I enter "123123" into input field number 3
		And  I clear input field number 4
		And  I enter "test_automation" into input field number 4
		And  I clear input field number 5
		And  I enter "test_automation" into input field number 5
		And  I touch the "Wanita" text
		And  I touch the "KIRIM" text
		And  I wait up to 30 seconds for "Akun Anda telah diperbarui dengan informasi terbaru!" to appear
		And  I touch the "OK" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Akun Saya" to appear
		And  I touch the "Akun Saya" text
		And  I wait up to 30 seconds for "Ganti Password" to appear
		And  I enter "123123" into input field number 1
		And  I enter "123456" into input field number 2
		And  I enter "123456" into input field number 3
		And  I clear input field number 4
		And  I enter "test" into input field number 4
		And  I clear input field number 5
		And  I enter "test" into input field number 5
		And  I touch the "KIRIM" text
		And  I wait up to 30 seconds for "Akun Anda telah diperbarui dengan informasi terbaru!" to appear
		And  I touch the "OK" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@Login
	Scenario: Wrong Password & Forgot Password & Login & Logout
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "id"
		Then I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Daftar" to appear
		Then I touch the "Daftar" text
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "LOGIN" text 
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "aklsjhdais" into input field number 2
		And  I touch the "LOGIN" text
		And  I wait up to 30 seconds for "Silahkan periksa kembali username dan password Anda" to appear
		And  I touch the "OK" text
		And  I wait up to 30 seconds for "LOGIN" to appear
		And  I touch the "Lupa Kata Sandi?" text
		And  I wait up to 30 seconds for "Email untuk mengganti password akan segera Anda terima" to appear
		And  I touch the "Tutup" text
		And  I clear input field number 2
		And  I enter "123456" into input field number 2
		And  I touch the "LOGIN" text
		Then I wait up to 30 seconds for the view with id "imgTop" to appear

	@existingusercheckout @checkout @test
	Scenario: Checkout with existing user
		And  I check for country select "Indonesia"
		Then I wait up to 30 seconds for the view with id "imgTop" to appear
		And  I ensure that no account is logged in for "id"
		And  I ensure that the cart is empty for "id"
		And  I wait for 2 seconds
		And  I press view with id "sideMenuButton"
		And  I wait up to 30 seconds for "Kategori" to appear
		And  I touch the "Kategori" text
		And  I add a random product to cart for "id" 
		And  I check the quantity in the cart to be 1
		And  I press view with id "rightContainer"
		And  I wait up to 30 seconds for "TROLI BELANJA" to appear
		And  I touch the "BAYAR SEKARANG" text
		And  I wait for loading to be complete
		Then I wait up to 30 seconds for "LOGIN" to appear
		And  I enter "qa+mobile@zalora.com" into input field number 1
		And  I enter "123456" into input field number 2
		Then I touch the "LOGIN" text
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
		Then I take a screenshot with name "id_order_confirmation_existing"
		And  I verify the text "Your Order" 
		And  I wait for 3 seconds
		And  In webview I click "div.txtCenter.pbl button.btn.cta.js_checkoutBtn"
		When I wait up to 60 seconds for "Terima kasih untuk pesanan Anda!" to appear
		Then I take a screenshot with name "id_order_number_existing"
		And  I ensure that no account is logged in for "id"