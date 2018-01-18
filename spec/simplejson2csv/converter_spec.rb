RSpec.describe Simplejson2csv::Converter do
  describe '.convert' do
    context 'when it has full options' do
      let(:options) { build(:full_options) }

      subject { described_class.convert(options) }

      it 'save csv file' do
        subject
        cd '../../'
        expect(options[:csv]).to be_an_existing_file
      end
    end

    context 'when it has a bad json' do
      let(:options) { build(:wrong_json_options) }

      subject { described_class.convert(options) }

      it 'raises a JSON::ParserError' do
        expect { subject }.to raise_error JSON::ParserError
      end
    end
  end
end
