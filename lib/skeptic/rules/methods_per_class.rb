module Skeptic
  module Rules
    class MethodsPerClass
      DESCRIPTION = 'Limit the number of methods per class'

      include SexpVisitor

      def initialize(limit)
        @methods = Hash.new { |hash, key| hash[key] = [] }
        @limit   = limit
      end

      def apply_to(code, tokens, tree)
        visit tree
        self
      end

      def methods_in(class_name)
        @methods[class_name].length
      end

      def violations
        violators = @methods.keys.select { |name| @methods[name].length > @limit }

        violators.map do |class_name|
          method_names = @methods[class_name].map { |name| "##{name}" }
          count        = method_names.length

          "#{class_name} has #{count} methods: #{method_names.join(', ')}"
        end
      end

      def name
        "Number of methods per class (#@limit)"
      end

      private

      on :def do |name, params, body|
        method_name = extract_name(name)
        class_name  = env[:class]

        @methods[class_name] << method_name

        visit params
        visit body
      end

      on :defs do |target, _, name, params, body|
        target_name = extract_name(target)
        method_name = extract_name(name)
        class_name  = env[:class]

        target_name = class_name if target_name == "self"
        @methods[target_name] << method_name

        visit params
        visit body
      end

      on :class do |name, parents, body|
        env.push :class => qualified_class_name(name)

        visit parents if parents
        visit body

        env.pop
      end

      on :module do |name, body|
        env.push :class => qualified_class_name(name)

        visit body

        env.pop
      end

      def qualified_class_name(name)
        [env[:class], extract_name(name)].compact.join('::')
      end
    end
  end
end
