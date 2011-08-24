require 'sugar-high/blank'
require 'sugar-high/arguments'
require 'sugar-high/path'
require 'sugar-high/regexp'
require 'sugar-high/string'
require 'sugar-high/file'
require 'sugar-high/array'
require 'sweetloader'

require 'active_support/inflector'

class Module
  def file_mutate name
    if name == :all
      FileMutate.add_all self
      return
    end
    FileMutate.add_mutate_exts self, [:mutate, name]
  end
end

module FileMutate
  autoload_modules :Mutate, :Delete, :AppendContent, :InsertContent
  autoload_modules :OverwriteContent, :RemoveContent, :ReplaceContent

  def self.mutate_apis
    [:delete, :mutate, :append_content, :insert_content, :overwrite_content, :remove_content, :replace_content]
  end

  def self.add_all clazz
    add_mutate_exts clazz, mutate_apis
  end

  def self.add_mutate_exts clazz, *names
    names.flat_uniq!
    unknowns = (names - mutate_apis)
    raise ArgumentError, "Unknown FileMutate APIs: #{unknowns}, must be one of: #{mutate_apis}" if !unknowns.empty?
    names.each do |api|
      ns = "FileMutate::#{api.to_s.camelize}"
      begin
        clazz.send :include, ns.constantize
        clazz.extend "#{ns}::ClassMethods".constantize
      end
    end
  end
end
