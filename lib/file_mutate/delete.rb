require 'sugar-high/blank'
require 'sugar-high/arguments'
require 'sugar-high/path'
require 'sugar-high/regexp'
require 'sugar-high/string'
require 'sugar-high/file'

module FileMutate
  module Delete
    module ClassMethods
      def delete! name
        return nil if !File.exist?(name)
        File.delete name
      end
      alias_method :delete_file!, :delete!
    end

    def delete!
      File.delete(self.path)
    end
    alias_method :delete_file!, :delete!

    def mutate marker, place, &block
      File.mutate_file self.path, marker, place, &block
    end
  end
end

