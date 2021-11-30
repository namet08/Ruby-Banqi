module Actions
  def access_app
    sleep 10
    find_element(xpath: "//android.widget.TextView[contains(@text,'ACESSE AGORA')]").click
  end

  def set_name(cpf, password)
    find_element(xpath: '//android.widget.EditText[@content-desc="login-cpf-input"]').send_keys(cpf)
    find_element(xpath: '//android.widget.EditText[@content-desc="login-password-input"]').send_keys(password)
    find_element(accessibility_id: "login-confirm-button").click
  end

  def if_esle
    driver.manage.timeouts.implicit_wait = 10
    result = false 
    begin
      result = driver.find_element(xpath: '(//android.widget.EditText[@content-desc="phone-otp-code-input"])[1]').displayed?
    rescue => exception
      puts "O elemento não foi enconrtado."
    end
    
    if result
      find_element(xpath: '(//android.widget.EditText[@content-desc="phone-otp-code-input"])[1]').send_keys "0"
      find_element(xpath: '(//android.widget.EditText[@content-desc="phone-otp-code-input"])[2]').send_keys "0"
      find_element(xpath: '(//android.widget.EditText[@content-desc="phone-otp-code-input"])[3]').send_keys "0"
      find_element(xpath: '(//android.widget.EditText[@content-desc="phone-otp-code-input"])[4]').send_keys "0"
      sleep 10
      @driver.press_keycode(8)
      @driver.press_keycode(9)
      @driver.press_keycode(10)
      @driver.press_keycode(10)
    else
      @driver.press_keycode(8)
      @driver.press_keycode(9)
      @driver.press_keycode(10)
      @driver.press_keycode(10)
    end
end

  def home_login
    sleep 10
    find_element(xpath: "//android.widget.TextView[contains(@text,'Próximo')]").click
    find_element(xpath: "//android.widget.TextView[contains(@text,'Próximo')]").click
    find_element(xpath: "//android.widget.TextView[contains(@text,'Confira as mudanças!')]").click
    find_element(xpath: "//*[@text='Saldo banQi:']")
  end
end