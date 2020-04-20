require 'report_builder'
require 'date'

Before do
    window = Capybara.current_session.current_window
    window.maximize
  end

  After do |scn|
    screenshot = HooksConfig.take_screenshot(scn)
    embed(screenshot, "image/png;base64")
  end

  at_exit do
    @infos = {
    "Browser" => Capybara.default_driver.to_s.capitalize,
    # "Environment" => ENV["ENV_PREFIX"],
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "report/report.json"
    config.report_path = "report/report_test"
    config.report_types = [:html]
    config.report_title = "Teste-Automation"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
