require('rspec')
require('organizer')
require('CD')

describe(Organizer) do
  before() do
    Organizer.clear()
  end
  describe('#name') do
    it("it returns the name of the collection") do
      test_organizer = Organizer.new("Alexa's tunes")
      expect(test_organizer.name()).to(eq("Alexa's tunes"))
    end
  end
  describe('#id') do
    it("returns the id of the organizer") do
      test_organizer = Organizer.new("Alexa's tunes")
      expect(test_organizer.id()).to(eq(1))
    end
  end
  describe('#discs') do
    it("initially returns an empty array of CDs for the organizer") do
      test_organizer = Organizer.new("Alexa's tunes")
      expect(test_organizer.discs()).to(eq([]))
    end
  end
  describe('.all') do
    it("is empty at first") do
      expect(Organizer.all()).to(eq([]))
    end
  end
  describe('#save') do
    it("adds a organizer to the array of saved organizers") do
      test_organizer = Organizer.new("Alexa's tunes")
      test_organizer.save()
      expect(Organizer.all()).to(eq([test_organizer]))
    end
  end
  describe('#clear') do
    it('empties out all of the saved organizers') do
      Organizer.new("Alexa's tunes").save()
      Organizer.clear()
      expect(Organizer.all()).to(eq([]))
    end
  end
  describe('.find') do
    it("returns an organizer by its id number") do
      test_organizer = Organizer.new("Alexa's tunes")
      test_organizer.save()
      test_organizer2 = Organizer.new("Trav's jams")
      test_organizer2.save()
      expect(Organizer.find(test_organizer.id())).to(eq(test_organizer))
    end
  end
  describe('#add_CD') do
    it("adds a new CD to an organizer") do
      test_organizer = Organizer.new("Alexa's tunes")
      test_CD = CD.new("A Night at the Opera", "Queen")
      test_dealership.add_CD(test_CD)
      expect(test_organizer.discs()).to(eq([test_CD]))
    end
  end
end
