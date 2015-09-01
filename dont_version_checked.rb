#!/usr/bin/env ruby

=begin rdoc
  pkgbuild --analyze --root /tmp/osxpkg-component2.dst components.plist
  修改 components.plist，使旧版本可以覆盖新版本
=end

require 'Plist'

result = Plist::parse_xml(ARGV[0])
if result
  result[0]['BundleIsRelocatable'] = false
  result[0]['BundleIsVersionChecked'] = false
  result.save_plist(ARGV[0])
end

