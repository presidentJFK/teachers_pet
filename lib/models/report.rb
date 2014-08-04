class Report < Sequel::Model
  class << self
    def simplecov_stats(app)
      self.where(:app => app).map(:simple_cov).reverse.take(10).reverse
    end

    def rubocop_stats(app)
      self.where(:app => app).map(:rubocop).reverse.take(10).reverse
    end

    def dates_for(app)
      self.where(:app => app).map {|report| report[:created_at].strftime("%-m / %e %H:%M%p") }.
        reverse.take(10).reverse
    end

    def generate_random_entry
      DB[:reports].insert(
        :app => apps.sample,
        :simple_cov => (rand * 100).round(2),
        :rubocop => Random.rand(0..100),
        :created_at => Time.now
      )
    end

    private
      def apps
        ['Nemo', 'Holmes', 'Lenny', 'Manisero', 'Panda']
      end
  end
end
