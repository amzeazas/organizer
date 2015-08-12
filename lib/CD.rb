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

  define_singleton_method(:all) do
    @@CDs
  end

  define_method(:save) do
    @@CDs.push(self)
  end

  define_singleton_method(:clear) do
    @@CDs = []
  end

  define_singleton_method(:find) do |identification|
    found_cd = nil
    @@CDs.each do |cd|
      if cd.id().eql?(identification.to_i())
        found_cd = cd
      end
    end
    found_cd
  end
end
