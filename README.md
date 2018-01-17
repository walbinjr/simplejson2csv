# Simplejson2csv

This command-line-tool was designed to EASILY convert JSON to CSV.
You can set which fields (keys) you want to output!
You can choose which separator you want!

Purpose:
I did a grep in a bunch of log files with different JSON's formats. So I needed to parse then and choose just a few fields that were relevant.
I wrote a simple ruby file to do this job and I thought:
"Hmm, why would I publish this on RubyGems?...
A: Why not?"

## Installation

Just install it:

    $ gem install simplejson2csv

## Usage

Help:

    $ simplejson2csv help convert

Convert:

    $ simplejson2csv convert --json=tmp/sample.json --csv=tmp/sample-output.csv
    --fields="foo bar" --separator="|"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

[Bug reports](https://github.com/walbinjr/simplejson2csv/issues) and [pull requests](https://github.com/walbinjr/simplejson2csv/pulls) are welcome on GitHub at https://github.com/walbinjr/simplejson2csv.
