require "allure-cucumber"
require "appium_lib"
require "cucumber"
require "rufo"
require "rspec"

require_relative "../pages/login_page.rb"

World(Actions)

FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object                                                                