class Home < SitePrism::Page
  set_url 'http://192.168.31.110/'

  section :top_menu, TopSection, '#top-menu'
    #element :sign_in_link, :xpath, '//*[@id="account"]/ul/li[1]/a'
end