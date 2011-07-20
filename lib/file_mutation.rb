require 'sugar-high/blank'
require 'sugar-high/arguments'
require 'sugar-high/path'
require 'sugar-high/regexp'
require 'sugar-high/string'
require 'sugar-high/file'
require 'sugar-high/array'
require 'sugar-high/class_ext'

require 'active_support/inflector'

module FileMutate
  autoload_modules :Mutate, :Delete, :AppendContent, :InsertContent,  :OverwriteContent, :RemoveContent, :ReplaceContent   
end


class File
  def self.mutate_ext name
    if name == :all
      add_mutate_exts mutate_apis
      return
    end
    raise ArgumentError, "Unknown FileMutate API: #{name}, must be one of: #{mutate_apis}" if !mutate_apis.include? name
    add_mutate_exts [:mutate, name]
  end

  protected

  def self.mutate_apis
    [:delete, :mutate, :append_content, :insert_content, :overwrite_content, :remove_content, :replace_content]
  end

  def self.add_mutate_exts *names
    names.flat_uniq.each do |api|
      ns = "FileMutate::#{api.to_s.camelize}"
      begin
        self.send :include, ns.constantize
        self.extend "#{ns}::ClassMethods".constantize
      end
    end
  end
end
