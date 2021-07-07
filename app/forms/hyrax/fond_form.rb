# Generated via
#  `rails generate hyrax:work Fond`
module Hyrax
  # Generated form for Fond
  class FondForm < Hyrax::Forms::WorkForm
    self.model_class = ::Fond
    self.terms += [:resource_type, :object_creation_date, :creator, :extent, :language, :rights_statement, :abstract, :source, :keyword]
    self.required_fields += [:object_creation_date, :creator, :extent, :language, :rights_statement, :abstract, :source, :keyword]
  end
end
