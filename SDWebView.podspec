Pod::Spec.new do |s|

  s.name         = "SDWebView"
  s.version      = "0.0.1"
  s.summary      = "Just a test pod of SDWebView."
  s.homepage     = "www.google.co.in"
  s.license      = "MIT"
  s.author       = { "Sumitava Datta" => "sumitava@capitalnumbers.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/SumitavaCN/SDWebView.git", :tag => "1.0.0" }
  s.source_files = "SDWebView", "SDWebView/**/*.{h,m,swift}"

end
