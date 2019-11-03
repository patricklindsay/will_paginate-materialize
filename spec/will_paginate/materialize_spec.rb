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

    it 'should allow correct direction value' do
      test_directions = [:ltr, :rtl]

      test_directions.each do |direction|
        expect {
          WillPaginate::Materialize.configure do |config|
            config.direction = direction
          end
        }.not_to raise_error(Exception, /Direction not valid/)

        expect(WillPaginate::Materialize.configuration.direction).to eq direction
      end
    end

    it 'should not allow incorrect direction value' do
      expect {
        WillPaginate::Materialize.configure do |config|
          config.direction = :fatcow_directions
        end
      }.to raise_error(Exception, /Direction not valid/)

      expect(WillPaginate::Materialize.configuration.direction).to eq :ltr
    end
  end
end
