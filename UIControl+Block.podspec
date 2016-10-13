Pod::Spec.new do |s|

  s.name         = "UIControl+Block"
  s.version      = "1.0.0"
  s.summary      = "为UIControl添加分类，实现block回调"

  s.homepage     = "https://github.com/qylibohao/UIControl-Block.git"
  # s.screenshots  = ""

  s.license      = "MIT"

  s.author             = { "qylibohao" => "375795423@qq.com" }

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/qylibohao/UIControl-Block.git", :tag => "1.0.0"}

  s.source_files  = "UIControl+Block/UIControl+Block/**/*.{h,m}"

  # s.public_header_files = "Classes/**/*.h"


  s.requires_arc = true

   # s.dependency "JSONKit", "~> 1.4"

end