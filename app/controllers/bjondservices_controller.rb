class BjondservicesController < ApplicationController 

  require 'bjond-api'
  require 'syruppay_jose'
  require 'bjond-jwt'
  include BjondJwt

  skip_before_filter :verify_authenticity_token, :only => [:get_schema, :register_group_endpoint, :configure_group_endpoint]

  def index
    @app_info = BjondApi::BjondAppConfig.instance.active_definition
  end

  def register
    registration = BjondRegistration.find_by_id(params[:id])
    if (!registration.nil?)
      response = BjondApi.register_app(BjondApi::BjondAppConfig.instance.active_definition, registration.server)
      if (response.status === 200 )
        render :json => {
          :status => 'Updated'
        }
      else
        raise "Failed to update.\n" + response.body
      end
    else
      render :json => {
        :status => 'Registration not found'
      }
    end
  end



  def register_group_endpoint
    registration = BjondRegistration.find_registration_by_remote_ip(request.remote_ip)
    service = BjondService.find_or_initialize_by(:group_id => params[:groupid], :bjond_registration_id => registration.id)
    if (service.endpoint != params[:endpoint])
      service.endpoint = params[:endpoint]
      service.save
    end
    render :json => service
  end

  ################ Encrypted Communication w Bjond servers ################
  def configure_group_endpoint
    puts 'Configure Group Endpoint'
    bjond_registration = BjondRegistration.find_registration_by_remote_ip(request.remote_ip)
    puts 'Registratin: '
    ap bjond_registration
    result = jwt_decode_payload_and_return_json(request.raw_post, bjond_registration)
    BjondApi::BjondAppConfig.instance.configure_group(result, bjond_registration)
    render :json => {
      :status => 'OK'
    }.to_json
  end

  def get_schema
    puts 'get_schema. request.remote_ip: '
    puts request.remote_ip
    puts 'Registration:'
    ap BjondRegistration.find_registration_by_remote_ip(request.remote_ip)
    render :json => jwt_encode_payload(BjondApi::BjondAppConfig.instance.group_configuration_schema,
                                       BjondRegistration.find_registration_by_remote_ip(request.remote_ip))
  end

  def get_group_configuration
    bjond_registration = BjondRegistration.find_registration_by_remote_ip(request.remote_ip)
    payload = BjondApi::BjondAppConfig.instance.get_group_configuration(bjond_registration)
    render :json => jwt_encode_payload(payload.to_json, bjond_registration)
  end

end