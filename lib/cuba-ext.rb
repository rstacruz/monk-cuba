module Cuba
  # Support multiple routes
  def self.routes
    @routes ||= Array.new
  end

  def self.route(&blk)
    routes << blk
  end

  def self.commit_routes
    app = self
    define { app.routes.each { |r| instance_eval &r } }
  end

  # Add a helper module
  def self.helper(mod)
    self.const_get(:Ron).send :include, mod
  end
end
