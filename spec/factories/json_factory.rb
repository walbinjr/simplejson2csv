FactoryBot.define do

  factory :missing_required_options, class: Hash do
    json File.join('spec', 'fixtures', 'sample-multiple.json')
    csv File.join(ARUBA_HOME, 'sample-output.csv')

    initialize_with { attributes }

    factory :full_options, class: Hash do
      fields 'foo bar @timestamp'
      separator '|'
    end

    factory :missing_separator_options, class: Hash do
      fields 'foo bar @timestamp'
    end

    factory :wrong_json_options, class: Hash do
      json File.join('spec', 'fixtures', 'sample-wrong.json')
      fields 'foo bar @timestamp'
      separator '|'
    end
  end

end
