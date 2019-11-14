module Workarea
  module Accordions
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::Accordions

      initializer 'workarea.accordions' do
        Plugin.append_javascripts(
            'storefront.dependencies',
            'jquery-ui/widgets/accordion'
        )

        Plugin.append_javascripts(
            'storefront.modules',
            'workarea/storefront/accordions/modules/accordions'
        )

        Plugin.append_javascripts(
            'storefront.config',
            'workarea/storefront/accordions/config'
        )

        Plugin.append_stylesheets(
          'storefront.components',
          'workarea/jquery_ui/storefront/accordions/ui_accordion'
        )
      end
    end
  end
end
