module UbahWarna
  def kuning
    @warna = "kuning"
    puts "Warna berubah menjadi warna #{@warna}"
  end
end

class Katana
  attr_reader :warna

  def initialize(tahun, model, warna)
    @tahun = tahun
    @model = model
    @warna = warna
    @kecepatan_sekarang = 0
  end

  include UbahWarna

  def tambah_kecepatan(nomor)
    @kecepatan_sekarang += nomor
    puts "Kamu menggas jadi #{nomor} mph."
  end

  def rem(nomor)
    @kecepatan_sekarang -= nomor
    puts "Kamu injek rem, sehingga kecepatan menurun #{nomor} mph."
  end

  def kecepatan_sekarang
    puts "Kamu lg di kecepatan #{@kecepatan_sekarang} mph."
  end

  def setop_mang
    @kecepatan_sekarang = 0
    puts "Setop dlu mang, ada jablay !"
  end
end

lumina = Katana.new(1997, 'katana lumina', 'putih')
lumina.tambah_kecepatan(20)
lumina.kecepatan_sekarang
lumina.tambah_kecepatan(20)
lumina.kecepatan_sekarang
lumina.rem(20)
lumina.kecepatan_sekarang
lumina.rem(20)
lumina.kecepatan_sekarang
lumina.setop_mang
lumina.kecepatan_sekarang
lumina.warna
lumina.kuning
