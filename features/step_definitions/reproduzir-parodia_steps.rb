Dado("Login com {string} e {string}") do |email, password|
  goto_login
  login_with(email, password)
end

Dado("que eu gosto muito de {string}") do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click
end

Quando("toco a seguinte canção:") do |table|
  @parodi = table.rows_hash

  find("a", text: @parodi[:banda]).click

  song = find(".song-item", text: @parodi[:parodia])
  song.find(".fa-play-circle").click
end

Então("essa paródia fica em modo de reprodução") do
  song_play = find(".playing")
  expect(song_play).to have_text @parodi[:parodia]
end
