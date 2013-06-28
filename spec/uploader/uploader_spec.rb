require 'spec_helper'
require 'support/fog_helper'
require 'carrierwave/test/matchers'

describe ImageUploader do
	include CarrierWave::Test::Matchers

	before do
		ImageUploader.enable_processing = true
		@uploader = ImageUploader.new(@restaurant, :image)
		@uploader.store!(File.open(path_to_file))
	end

	after do
		ImageUploader.enable_processing = false
		@uploader.remove!
	end

	context 'the thumb version' do
		it "should scale down an image to be exactly 300 x 250 pixels" do
			@uploader.thumb.should have_dimensions(300, 250)
		end
	end

	context 'the masthead version' do
		it "should scale the image to be exactly 600 x 500 pixels" do
			@uploader.masthead.should have_dimensions(600, 500)
		end
	end
	
end