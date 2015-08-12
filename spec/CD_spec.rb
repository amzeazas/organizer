require('rspec')
require('CD')

describe('CD') do
  # before() do
  #   CD.clear
  # end

  describe('#title') do
    it('returns the title of the CD') do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      expect(test_CD.title()).to(eq("Turtleneck & Chain"))
    end
  end
  describe("#artist")
    it('returns the artist of the CD') do
      test_CD = CD.new("Turtleneck & Chain", "The Lonely Island")
      test_CD.save()
      expect(test_CD.artist()).to(eq("The Lonely Island"))
    end
  end
end
