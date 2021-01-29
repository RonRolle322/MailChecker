

Pod::Spec.new do |spec|

spec.name         = "MailChecker"
spec.version      = "1.0.1"
spec.summary      = "Here is MailChecker."

spec.description  = "A longer text for MailChecker."

spec.homepage     = "https://github.com/RonRolle322/MailChecker.git"
spec.license      = "MIT"
spec.author             = { "RonRolle322" => "ron.rolle@me.com" }
spec.platform     = :ios, "14.0"

spec.source       = { :git => "https://github.com/RonRolle322/MailChecker.git", :tag => spec.version.to_s }
spec.source_files  = "MailCheckerFramework/**/*.{swift}"
spec.swift_versions   = "5.0"

end
