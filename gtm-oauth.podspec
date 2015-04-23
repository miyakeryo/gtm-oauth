Pod::Spec.new do |s|

  s.name         = "gtm-oauth"
  s.version      = "1.0.0"
  s.summary      = "Google Toolbox for Mac - OAuth Controllers."
  s.homepage     = "http://code.google.com/p/gtm-oauth"
  s.author       = "Google Inc."
  s.source       = { :git => 'https://github.com/miyakeryo/gtm-oauth.git'}

  s.frameworks = 'Security', 'SystemConfiguration'

  s.ios.deployment_target = '3.0'
  s.ios.source_files =
    'HTTPFetcher/GTMHTTPFetcher.{h,m}',
    'Source/GTMOAuthAuthentication.{h,m}',
    'Source/GTMOAuthSignIn.{h,m}',
    'Source/Touch/GTMOAuthViewControllerTouch.{h,m}'

  s.subspec 'nibs' do |nibs|
    nibs.ios.resources = 'Source/Touch/GTMOAuthViewTouch.xib'
  end

  s.license = {
    :type => 'Apache License 2.0',
    :text => <<-LICENSE
      Copyright (c) 2010 Google Inc.

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

end