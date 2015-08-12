class Organizer
  @@organizers = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@organizers.length().+(1)
    @discs = []
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:discs) do
    @discs
  end

  define_singleton_method(:all) do
    @@organizers
  end

  define_method(:save) do
    @@organizers.push(self)
  end

  define_singleton_method(:clear) do
    @@organizers = []
  end

  define_singleton_method(:find) do |id|
    found_organizer = nil
    @@organizers.each do |organizer|
      if organizer.id().eql?(id)
        found_organizer = organizer
      end
    end
    found_organizer
  end

  define_method(:add_CD) do |album|
    @discs.push(album)
  end  
end
