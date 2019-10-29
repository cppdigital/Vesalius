# Generated via
#  `rails generate hyrax:work Record`
module Hyrax
  # Generated form for Record
  class RecordForm < Hyrax::Forms::WorkForm
    self.model_class = ::Record
    self.terms += [:resource_type]
  end
end
