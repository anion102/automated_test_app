# encoding:utf-8
# author:anion
require_relative '../source/app'
class Login
  include App

  def initialize
    @login={
        'me' => {:label=>'我'},
        'login_enter' => {:label=>'登录'},
        'login_btn' => {:label=>'登 录'},
        'phone' => {:xpath=>'//XCUIElementTypeTextField[1]'},
        # 'pwd' => {:xpath=>'//XCUIElementTypeSecureTextField[1]'},
        'pwd'=>{:value=>'请输入密码'},
        'clear'=>{:name=>'清除文本'},
    }
  end

  def user_login(phone,pwd)
    clear_cookie_by_elmts(@login['phone'])
    click_by_elmts(@login['phone'])
    # sleep 1
    # click_by_elmts(@login['clear'])
    # input have clear operation
    input_text_by_elmts(@login['phone'],phone)
    input_text_by_elmts(@login['pwd'],pwd)
    click_by_elmts(@login['login_btn'])
    wait_element_by_elmts(@login['me'])

  end

  def enter_login
    wait_element_by_elmts(@login['me'])
    click_by_elmts(@login['me'])
    wait_element_by_elmts(@login['login_enter'])
    click_by_elmts(@login['login_enter'])
    wait_element_by_elmts(@login['phone'])

  end
end