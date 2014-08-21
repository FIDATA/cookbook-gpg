class Chef
  class Resource
    class LoadKeyBaseResource < Chef::Resource::LWRPBase
      attribute :for_user, :kind_of => String, :required => true
      attribute :keyring_file, :kind_of => String

      actions :replace

      def initialize(name, run_context=nil)
        # Only reason these are here and not set in the class is that we inherit this
        self.class.resource_name = self.class.snake_case_basename self.class.name
        self.class.default_action :replace
        super
      end
    end
  end
end