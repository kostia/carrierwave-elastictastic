require 'carrierwave'
require 'carrierwave/validations/active_model'

module CarrierWave
  module Elastictastic
    include CarrierWave::Mount

    def mount_uploader(column, uploader=nil, options={}, &block)
      field options[:mount_on] || column

      super

      alias_method :read_uploader, :read_attribute
      alias_method :write_uploader, :write_attribute

      public :read_uploader
      public :write_uploader

      include CarrierWave::Validations::ActiveModel

      validates_integrity_of  column if uploader_option column.to_sym, :validate_integrity
      validates_processing_of column if uploader_option column.to_sym, :validate_processing

      after_save :"store_#{column}!"
      before_save :"write_#{column}_identifier"
      after_destroy :"remove_#{column}!"
    end
  end
end
