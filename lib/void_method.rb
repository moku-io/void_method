require_relative 'void_method/version'

if Kernel.method_defined? :void
  raise RuntimeError,
        'Kernel#void is already defined. Previous definition is at ' \
        "#{Kernel.instance_method(:void).source_location.join(':')}"
end

module Kernel
  def void &block
    nil.tap do
      tap(&block)
    end
  end
end
