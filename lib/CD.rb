class CD
  @@CDs = []

  define_method(:initialize) do |title, artist|
    @title = title
    @artist = artist
    @id = @@CDs.length().+(1)
  end

  define_method(:title) do
    @title
  end

  define_method(:artist) do
    @artist
  end

  define_method(:id) do
    @id
  end
end
