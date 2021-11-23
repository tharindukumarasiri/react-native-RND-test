Feature: android test

Background: App Preset
  * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

Scenario: android mobile app UI tests
  Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    And driver.input('#com.bs.droidaction:id/$(~LOGIN_PG_USER_NAME_INPUT)', "Demo6")
    And driver.input('#com.bs.droidaction:id/$('~LOGIN_PG_PASSWORD_INPUT)', "ust123")
    And driver.click('#com.bs.droidaction:id/$('~LOGIN_PG_LOGIN_BTN')')
    And retry(10, 1000).waitForAny("#com.bs.droidaction:id/$('~NAVIGATOR_USER_FUNDS')", "//android.widget.TextView[@text='KarateDSL']")
#   And driver.clear('#com.bs.droidaction:id/showTextOnDelay').input("10000")
#   And driver.input('#com.bs.droidaction:id/editTextBox', "KarateDSL")
#   And driver.click('#com.bs.droidaction:id/showTextCheckBox')
#   And retry(10, 1000).waitForAny("#com.bs.droidaction:id/nameTextView", "//android.widget.TextView[@text='KarateDSL']")
#   Then match driver.text('#com.bs.droidaction:id/nameTextView') == 'KarateDSL'
#   And driver.click('#com.bs.droidaction:id/showTextCheckBox')
#   And assert (optional('#com.bs.droidaction:id/nameTextView').present != true)