Feature: android test

Background: App Preset
  * configure driver = { type: 'android', webDriverPath : "/wd/hub", start: false, httpConfig : { readTimeout: 120000 }}

Scenario: android mobile app UI tests
  Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
    And driver.input(LOGIN_PG_USER_NAME_INPUT, "Demo6")
    