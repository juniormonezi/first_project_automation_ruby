# frozen_string_literal: true

class SearchProduct < SitePrism::Page
  set_url 'pt/Casa-e-Construção/c/root_cec_category'
  element :search, '#js-site-search-input'
  element :btncSearch, '.btn.btn-link.js_search_button.color-secondary'
  element :product, 'img[alt="TELA P/LAREIRA ARTMILL PRETA 70X50CM"]'
  element :product2, 'img[alt="CAD CR FA 810X420X400 AS E ENC PP VD F20"]'
  element :itemCategory, 'element1'
  element :itemProducty, 'a[title="Listelo Retificado Buriti HD 15x87,7cm Peça"]'
  element :pesquisaProd,'#js-site-search-input'

  def search_product
    search.set "'1111111111111"
  end

  def click_button_search
    btncSearch.click
  end

  def select_product
    #product.click
    product2.click
  end

  def category_product
    itemCategory.click
  end

  def product_item
    itemProducty.click
  end
end
