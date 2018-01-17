require 'thor'

module Simplejson2csv
  class CLI < Thor
    desc "convert", "Convert JSON to CSV filtering <fields> with <separator>."
    long_desc <<-LONGDESC
    Convert JSON to CSV filtering <fields> with <separator>.
    \x5
    \x5  --csv, <csv_file> location output.
    \x5  --json, <json_file> location.
    \x5  --fields, <fields> a space separated string (i.e.: "foo bar dump")
    \x5  > IF using a custom separator, use the SAME separator.
    \x5  --separator, <separator> (OPTIONAL) should be a custom separator
    (i.e.: "|"").
    \x5
    \x5> EXAMPLE:
    \x5> simplejson2csv convert --json=tmp/sample.json --csv=tmp/sample-output.csv
    --fields="foo bar" --separator="|"
    LONGDESC
    option :json, :required => true, :type => :string, :banner => "<json_file>"
    option :csv, :required => true, :type => :string, :banner => "<csv_file>"
    option :fields, :required => true, :type => :string, :banner => "<fields>"
    option :separator, :type => :string
    def convert
      Simplejson2csv::Converter.convert(options)
    end
  end
end
