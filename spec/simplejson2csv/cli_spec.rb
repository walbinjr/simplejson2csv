RSpec.describe Simplejson2csv::CLI do
  describe '.convert' do
    before { allow(Simplejson2csv::Converter).to receive(:convert) }

    subject { described_class.new.convert }

    it 'delegates to a Converter' do
      subject
      expect(Simplejson2csv::Converter).to have_received(:convert)
    end
  end
end
