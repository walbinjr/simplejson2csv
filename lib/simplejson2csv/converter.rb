require 'csv'
require 'json'

module Simplejson2csv
  class Converter
    class << self
      attr_accessor :opts

      def convert(opts={})
        @opts = opts
        save_to_csv
      end

      def generate_csv_from_json
        json = JSON.parse(File.open(opts[:json]).read)
        json.map do |item|
          fields.map do |field|
            item[field]
          end
        end
      rescue => e
        e.inspect
      end

      def save_to_csv
        CSV.open(opts[:csv], 'w', col_sep: separator) do |csv|
          csv << fields
          generate_csv_from_json.each do |row|
            csv << row
          end
        end
      end

      def separator
        opts[:separator] || ','
      end

      def fields
        @fields ||= opts[:fields].split
      end
    end
  end
end
