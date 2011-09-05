module GovKit
  module CA
    module PostalCode
      module Strategy
        # conservative.ca seems unreliable. In the case of B0J2L0, for example,
        # it does not return three ridings like other sources.
        class ConservativeCa < Base
          base_uri 'www.conservative.ca'
          http_method :get
          path '/?section_id=1051&postal_code=<%= @postal_code %>'

        private

          def electoral_districts!
            # TODO returns HTML with electoral district names only
          end

          def valid?
            # TODO
          end
        end

        StrategySet.register ConservativeCa
      end
    end
  end
end