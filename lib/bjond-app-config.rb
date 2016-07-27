require 'singleton'

module BjondIntegration
  class BjondAppConfig
    include Singleton

    attr_accessor :active_definition, :group_configuration_schema, :group_configuration, :encryption_key_name

    self.instance.encryption_key_name = 'APP_ENCRYPTION_KEY'

    def configure_group(config, bjond_registration)
      puts '[ App group configuration method not implemented. This can be set via BjondAppConfig.instance.configure_group ]'
    end

    def get_group_configuration(bjond_registration)
      puts '[ get_group_configuration method not implemented. This can be set via BjondAppConfig.instance.get_group_configuration ]'
    end
  end
end