require "bundler/setup"
require "capybara/cuprite"

Capybara.register_driver :cuprite do |app|
  options = {
    logger: File.open("cuprite.log", "w"),
  }
  Capybara::Cuprite::Driver.new(app, options)
end

capybara = Capybara::Session.new(:cuprite)

capybara.visit "https://www.allianz.fr/mon-espace-client/"
capybara.click_on "#popin_tc_privacy_button"

iframe = capybara.find("iframe[name^='iframe-']")
capybara.within_frame(iframe) do
  capybara.fill_in "email-or-id", with: "inexistant@example.com"
  capybara.fill_in "password", with: "password"
  capybara.click_on "JE ME CONNECTE"
end

capybara.body
puts "ok"
