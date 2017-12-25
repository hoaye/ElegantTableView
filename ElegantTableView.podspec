version = "0.0.3";

Pod::Spec.new do |s|

    s.name         = "ElegantTableView"
    s.version      = version
    s.summary      = "ElegantTableView 优雅的快速的创建TableView, Author's email:houmanager@hotmail.com"
    s.description      = <<-DESC
                        ElegantTableView 优雅的快速的创建简单列表TableView, Author's email:houmanager@hotmail.com
                            DESC
    s.homepage     = "https://github.com/stackhou/ElegantTableView"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "houmanager" => "houmanager@hotmail.com" }
    s.platform     = :ios, "7.0"
    s.source       = { :git => "https://github.com/stackhou/ElegantTableView.git", :tag => "#{version}"}
    s.source_files  = "ElegantTableView/*.{h,m}"
    s.requires_arc = true

end

