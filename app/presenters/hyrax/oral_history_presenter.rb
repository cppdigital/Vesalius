# Generated via
#  `rails generate hyrax:work OralHistory`
module Hyrax
  class OralHistoryPresenter < Hyrax::WorkShowPresenter
    delegate :creator, :contributor, :object_creation_date, :file_format, :extent, :language, :provenance, :rights_statement, :license, :abstract, :keyword, to: :solr_document
  end
end
