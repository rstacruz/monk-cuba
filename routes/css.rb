Main.route do
  on path('css'), segment do |file|
    base = File.basename(file, '.*')
    res.write stylesheet("css/#{base}.scss")
  end
end
