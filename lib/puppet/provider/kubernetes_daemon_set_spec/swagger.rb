# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_daemon_set_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        selector: instance.selector.respond_to?(:to_hash) ? instance.selector.to_hash : instance.selector,
      
    
      
        template: instance.template.respond_to?(:to_hash) ? instance.template.to_hash : instance.template,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_daemon_set_spec #{name}")
    create_instance_of('daemon_set_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('daemon_set_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_daemon_set_spec #{name}")
    destroy_instance_of('daemon_set_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('daemon_set_spec')
  end

  def build_params
    params = {
    
      
        selector: resource[:selector],
      
    
      
        template: resource[:template],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end