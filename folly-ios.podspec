


#
#  Be sure to run `s.dependency spec lint AFNetworking_PinLib.s.dependencyspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "folly-ios"
  s.module_name = 'folly'
  s.version      = '2016.10.31.00'
  s.summary      = "yoga Source for React Native iOS"
  s.homepage     = "https://github.com/facebook/folly"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  s.author             = { "wade0317" => "weishqdev@gmail.com" }
  

  s.ios.deployment_target = '9.0'


  s.source       = {:git => "https://github.com/ReactNativeiOS/folly-ios.git", :tag => "#{s.version}"}

  s.source_files = 'folly/Bits.cpp',
                      'folly/Conv.cpp',
                      'folly/Demangle.cpp',
                      'folly/StringBase.cpp',
                      'folly/Unicode.cpp',
                      'folly/dynamic.cpp',
                      'folly/json.cpp',
                      'folly/portability/BitsFunctexcept.cpp',
                      'folly/detail/MallocImpl.cpp'

  s.preserve_paths = 'folly/*.h',
                        'folly/detail/*.h',
                        'folly/portability/*.h'
  
  s.compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1'


  s.libraries           = "stdc++"
  s.pod_target_xcconfig = { "USE_HEADERMAP" => "NO",
                               "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                               "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/DoubleConversion\"" }


  
  s.dependency 'boost-for-react-native'
  s.dependency 'DoubleConversion'
  s.dependency 'glog'

end
