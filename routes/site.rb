Main.route do
  on path('') do
    res.write haml('home')
  end
end
