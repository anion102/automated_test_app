# encoding:utf-8

# author:anion

require 'test/unit'
require 'test/unit/autorunner'
require_relative '../source/login'

class LoginTest < Test::Unit::TestCase

  def setup
     @phone='18765950001'
     @pwd='aaa'
     @bundle='app'
     @app_path=''
     @url='http://127.0.0.1:8100'
   end

  def test_01
    login=Login.new
    login.launch_app(@url,@bundle,@app_path)
    result =login.enter_login
    login_res=login.user_login(@phone,@pwd)
    assert_equal(true,result,'enter login page failed!')
    assert_equal(true,login_res,'app login failed!')
  end
end
