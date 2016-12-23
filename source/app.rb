# encoding: utf-8
# author:anion
# date: 2016/12/21
require_relative 'wda_client/lib/wda_client'

module App

  def launch_app(server='',bundle_id='',app_path=nil)
    opt={
        desiredCapabilities:{
          bundleId: bundle_id,
          app: app_path}
    }
    WdaClient::Driver.new(server).start_device(opt)
  end

  def click_by_elmts(arg)
    $driver.find_element(arg).click_element
  end

  def input_text_by_elmts(arg,value)
    $driver.find_element(arg).set_value(value)
  end

  def get_text_by_elmts(arg)
    $driver.handle_get_text(arg)
  end

  def clear_cookie_by_elmts(arg)
    $driver.handle_clear(arg)

  end

  def wait_element_by_elmts(arg,time=2)
    $driver.wait_element(arg,time)
  end
end