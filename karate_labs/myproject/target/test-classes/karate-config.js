function fn() {
  var config = {}
  var android = {}
  android["desiredConfig"] = {
   "app" : "C:/Users/Tharindu/Desktop/test proj/ustocktrade_gen2.apk",
   "newCommandTimeout" : 300,
   "platformVersion" : "9.0",
   "platformName" : "Android",
   "connectHardwareKeyboard" : true,
   "deviceName" : "Galaxy_Nexus_API_28",
   "avd" : "Galaxy_Nexus_API_28",
   "automationName" : "UiAutomator2",
  }
  config["android"] = android
  return config;
}