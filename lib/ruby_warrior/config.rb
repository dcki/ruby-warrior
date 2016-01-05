module RubyWarrior
  class Config
    class << self
      attr_accessor :delay, :in_stream, :out_stream, :practice_level
      attr_writer :path_prefix, :skip_input, :prompt_to_continue
      
      def path_prefix
        @path_prefix || "."
      end
      
      def skip_input?
        @skip_input
      end

      def prompt_to_continue?
        defined?(@prompt_to_continue) ? @prompt_to_continue : true
      end
      
      def reset
        [:@path_prefix, :@skip_input, :@delay, :@in_stream, :@out_stream, :@practice_level].each do |i|
          remove_instance_variable(i) if instance_variable_defined?(i)
        end
      end
    end
  end
end
