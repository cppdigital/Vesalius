# Generated via
#  `rails generate hyrax:work Fond`
module Hyrax
  class FondPresenter < Hyrax::WorkShowPresenter
    delegate :object_creation_date, :creator, :extent, :language, :rights_statement, :abstract, :source, :keyword, to: :solr_document
  end
end
