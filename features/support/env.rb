require 'capybara/cucumber'
require "cpf_cnpj"
require 'selenium-webdriver'
require 'site_prism'
require 'report_builder'
require 'faker'
require 'pry'
require 'cpf_faker'
require_relative './helpers/page_helper.rb'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/environments/#{AMBIENTE}.yml")

World(Pages)
World(Helper)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 15
end
