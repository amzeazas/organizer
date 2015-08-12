require('rspec')
require('CD')

describe('CD') do
  before() do
    CD.clear
  end

  describe('#title') do
    it('returns the title of the CD') do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      expect(test_CD.title()).to(eq("Turtleneck & Chain"))
    end
  end
  describe("#artist") do
    it('returns the artist of the CD') do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      expect(test_CD.artist()).to(eq("The Lonely Island"))
    end
  end
  describe(".all") do
    it('is empty at first') do
      expect(CD.all()).to(eq([]))
    end
  end
  describe("#save") do
    it('adds a CD to the array of saved CDs') do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      expect(CD.all()).to(eq([test_CD]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved CDs") do
      CD.new("Turtleneck & Chain", "The Lonely Island")
      CD.clear()
      expect(CD.all()).to(eq([]))
    end
  end
  describe(".find") do
    it("returns a CD by its id number") do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      test_CD2 = CD.new("A Night at the Opera", "Queen")
      test_CD2.save()
      expect(CD.find(test_CD.id())).to(eq(test_CD))
    end
  end
end
