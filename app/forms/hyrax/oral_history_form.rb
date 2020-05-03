# Generated via
#  `rails generate hyrax:work OralHistory`
module Hyrax
  # Generated form for OralHistory
  class OralHistoryForm < Hyrax::Forms::WorkForm
    self.model_class = ::OralHistory
    self.terms += [:resource_type, :creator, :contributor, :object_creation_date, :file_format, :extent, :language, :provenance, :rights_statement, :license, :abstract, :keyword]
    self.required_fields += [:creator, :contributor, :object_creation_date, :file_format, :extent, :language, :provenance, :rights_statement, :license, :abstract, :keyword]
  end
end
