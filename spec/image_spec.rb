require 'spec_helper'

describe Stem::Image do

  context "tagged" do
    use_vcr_cassette

    it { should respond_to :tagged }

    it "should return an empty array when no images exist with the specified tags" do
      Stem::Image.tagged(:faketag => 'does_not_exist')
    end

  end
end

# tags
# :family => "postgresql",
# :release => "production",
# :created_at => "10/10/10 10:10",
