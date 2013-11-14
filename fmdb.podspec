Pod::Spec.new do |s|
  s.name     = 'fmdb'
  s.version  = '2.2'
  s.summary  = 'A Cocoa / Objective-C wrapper around SQLite.'
  s.homepage = 'https://github.com/ccgus/fmdb'
  s.license  = 'MIT'
  s.author   = { 'August Mueller' => 'gus@flyingmeat.com' }
  s.source   = { :git => 'https://github.com/sambame/fmdb.git', :tag => '2.2' }

  s.default_subspec = 'core'

  s.subspec 'core' do |sp|
    sp.source_files = 'src/FM*.{h,m}'
    sp.exclude_files = 'src/fmdb\.m',
    sp.library = 'sqlite3'
  end

  s.subspec 'lumberjack' do |sp|
    sp.dependency 'CocoaLumberjack'
    sp.dependency 'fmdb/core'
    sp.compiler_flags = '-DUSE_LUMBERJACK'
  end
end
