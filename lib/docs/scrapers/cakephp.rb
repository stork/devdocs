module Docs
  class Cakephp < UrlScraper
    self.name = 'CakePHP'
    self.type = 'cakephp'
    self.root_path = 'index.html'
    self.links = {
      home: 'https://cakephp.org/',
      code: 'https://github.com/cakephp/cakephp'
    }

    html_filters.push 'cakephp/clean_html', 'cakephp/entries'

    options[:container] = '#right'

    options[:skip_patterns] = [/\Asource-/]

    options[:attribution] = <<-HTML
      &copy; 2005&ndash;present The Cake Software Foundation, Inc.<br>
      Licensed under the MIT License.<br>
      CakePHP is a registered trademark of Cake Software Foundation, Inc.<br>
      We are not endorsed by or affiliated with CakePHP.
    HTML

    version '4.0' do
      self.release = '4.0.5'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.8' do
      self.release = '3.8.11'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.7' do
      self.release = '3.7.9'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.6' do
      self.release = '3.6.15'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.5' do
      self.release = '3.5.18'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.4' do
      self.release = '3.4.14'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.3' do
      self.release = '3.3.16'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.2' do
      self.release = '3.2.14'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.1' do
      self.release = '3.1.14'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '3.0' do
      self.release = '3.0.19'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.10' do
      self.release = '2.10.20'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.9' do
      self.release = '2.9.9'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.8' do
      self.release = '2.8.9'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.7' do
      self.release = '2.7.11'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.6' do
      self.release = '2.6.13'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.5' do
      self.release = '2.5.9'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.4' do
      self.release = '2.4.10'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.3' do
      self.release = '2.3.10'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.2' do
      self.release = '2.2.9'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.1' do
      self.release = '2.1.5'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '2.0' do
      self.release = '2.0.6'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '1.3' do
      self.release = '1.3.21'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    version '1.2' do
      self.release = '1.2.12'
      self.base_url = "https://api.cakephp.org/#{self.version}/"
    end

    def get_latest_version(opts)
      doc = fetch_doc('https://api.cakephp.org/3.7/', opts)
      doc.at_css('.version-picker .dropdown-toggle').content.strip
    end

    private

    def parse(response)
      response.body.gsub! '<h5 class="method-name">', '<h3 class="method-name">'
      super
    end
  end
end
