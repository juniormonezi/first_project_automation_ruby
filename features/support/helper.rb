module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "screenshots/#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
  page.save_screenshot(foto)
    embed(foto,'imagem/png', 'Clique Aqui')
  end
end
