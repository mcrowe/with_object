require 'with_object/version'

module WithObject

  def with(object, &block)
    context = WithContext.new(object)
    context.instance_eval(&block)
    object
  end

  class WithContext

    def initialize(object)
      @object = object
    end

    def method_missing(meth, *args, &block)
      @object.public_send(meth, *args, &block)
    end

  end

end

Object.send(:include, WithObject)