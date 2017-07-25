# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información.

File.open('words').each do |file|
  file.each_line do |word|
    Word.create(name: word.chomp)
  end
end