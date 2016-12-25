# Request helpers.

module Flatspace
  module Helpers
    module Request

      # Require login
      def login
        return if s[:u]
        path = request.path.split('?')[0]
        return if %w[/ /login /docs].find{|r| path.start_with?(r)}
        redirect('/login')
      end

      # Password valid?
      def password_valid?
        @profile and (@profile[:md5] == Digest::MD5.hexdigest(p[:password] + @profile[:salt]))
      end

      # Basic auth
      def protect!
        return if authorized?
        headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
        halt 401, "Not authorized\n"
      end

      # Check if authorized
      def authorized?
        @auth ||= Rack::Auth::Basic::Request.new(request.env)
        @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'test54']
      end

      # Colorize input green or red
      def green(text);"\e[33m#{text}\e[0m";end
      def red(text);"\e[31m#{text}\e[0m";end

      # Flash and halt short cuts
      def p;@p||=params.strip;end
      def f;flash;end
      def s;session;end
      def h(val);halt(val);end

      # Redirect and optionally set flash
      def go(path, options = {})
        f[:i] = options[:i] if options[:i]
        f[:e] = options[:e] if options[:e]
        redirect(path)
      end

      # Like above, but sets flash.now and halts with template
      def now(view, options = {})
        f.now[:i] = options[:i] if options[:i]
        f.now[:e] = options[:e] if options[:e]
        h erb(view)
      end

      # Short cut for setting up errors
      def e;@e ||= [];end

    end
  end
end
