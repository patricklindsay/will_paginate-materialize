require 'spec_helper'

describe WillPaginate::Materialize do
  context 'when evaluating the gem specs' do
    it 'should have a version number' do
      expect(MaterializePagination::VERSION).not_to be nil
    end
  end

  context 'when configuring gem' do
    before(:each) do
      WillPaginate::Materialize.reset
    end

    it 'should allow correct iconset value' do
      test_iconsets = [:material_design, :font_awesome]

      test_iconsets.each do |iconset|
        expect {
          WillPaginate::Materialize.configure do |config|
            config.iconset = iconset
          end
        }.not_to raise_error(Exception, /Iconset not valid/)
  
        expect(WillPaginate::Materialize.configuration.iconset).to eq iconset
      end
    end

    it 'should not allow incorrect iconset value' do

      expect {
        WillPaginate::Materialize.configure do |config|
          config.iconset = :fatcow_icons
        end
      }.to raise_error(Exception, /Iconset not valid/)

      expect(WillPaginate::Materialize.configuration.iconset).to eq :material_design
    end
  end
end
