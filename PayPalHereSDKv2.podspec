Pod::Spec.new do |s|
  s.name             = "PayPalHereSDKv2"
  s.version          = "2.0.0.201804"
  s.summary          = "SDK for interfacing with PayPal card readers and mobile payment processing APIs."
  s.license          = { :type => 'COMMERCIAL', :text => <<-LICENSE
  The PayPal SDK is released under the following license:

    Copyright (c) <2018> PAYPAL, INC.

    SDK LICENSE

    NOTICE TO USER:  PayPal, Inc. is providing the Software and Documentation for use under the terms of 
    this Agreement. Any use, reproduction, modification or distribution of the Software or Documentation, 
    or any derivatives or portions hereof, constitutes your acceptance of this Agreement.

    As used in this Agreement, "PayPal" means PayPal, Inc.  "Software" means the software code accompanying
    this agreement. "Documentation" means the documents, specifications and all other items accompanying 
    this Agreement other than the Software.   

    1.  LICENSE GRANT Subject to the terms of this Agreement, PayPal hereby grants you a non-exclusive, 
    worldwide, royalty free license to use, reproduce, prepare derivative works from, publicly display, 
    publicly perform, distribute and sublicense the Software for any purpose, provided the copyright notice
    below appears in a conspicuous location within the source code of the distributed Software and this 
    license is distributed in the supporting documentation of the Software you distribute. Furthermore, 
    you must comply with all third party licenses in order to use the third party software contained in the 
    Software.

    Subject to the terms of this Agreement, PayPal hereby grants you a non-exclusive, worldwide, royalty free
    license to use, reproduce, publicly display, publicly perform, distribute and sublicense the Documentation 
    for any purpose.  You may not modify the Documentation.

    No title to the intellectual property in the Software or Documentation is transferred to you under the 
    terms of this Agreement. You do not acquire any rights to the Software or the Documentation except as 
    expressly set forth in this Agreement.

    If you choose to distribute the Software in a commercial product, you do so with the understanding that 
    you agree to defend, indemnify and hold harmless PayPal and its suppliers against any losses, damages and 
    costs arising from the claims, lawsuits or other legal actions arising out of such distribution.  You may 
    distribute the Software in object code form under your own license, provided that your license agreement:

    (a)     complies with the terms and conditions of this license agreement; 

    (b)     effectively disclaims all warranties and conditions, express or implied, on behalf of PayPal;

    (c)     effectively excludes all liability for damages on behalf of PayPal;

    (d)     states that any provisions that differ from this Agreement are offered by you alone and not PayPal; and

    (e)     states that the Software is available from you or PayPal and informs licensees how to obtain it in a 
    reasonable manner on or through a medium customarily used for software exchange.  

    2.  DISCLAIMER OF WARRANTY
    PAYPAL LICENSES THE SOFTWARE AND DOCUMENTATION TO YOU ONLY ON AN "AS IS" BASIS WITHOUT WARRANTIES OR CONDITIONS 
    OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY WARRANTIES OR CONDITIONS OF TITLE, 
    NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  PAYPAL MAKES NO WARRANTY THAT THE 
    SOFTWARE OR DOCUMENTATION WILL BE ERROR-FREE. Each user of the Software or Documentation is solely responsible 
    for determining the appropriateness of using and distributing the Software and Documentation and assumes all 
    risks associated with its exercise of rights under this Agreement, including but not limited to the risks and 
    costs of program errors, compliance with applicable laws, damage to or loss of data, programs, or equipment, 
    and unavailability or interruption of operations.  Use of the Software and Documentation is made with the 
    understanding that PayPal will not provide you with any technical or customer support or maintenance.  Some 
    states or jurisdictions do not allow the exclusion of implied warranties or limitations on how long an implied 
    warranty may last, so the above limitations may not apply to you.  To the extent permissible, any implied 
    warranties are limited to ninety (90) days.


    3.  LIMITATION OF LIABILITY
    PAYPAL AND ITS SUPPLIERS SHALL NOT BE LIABLE FOR LOSS OR DAMAGE ARISING OUT OF THIS AGREEMENT OR FROM THE USE 
    OF THE SOFTWARE OR DOCUMENTATION.  IN NO EVENT WILL PAYPAL OR ITS SUPPLIERS BE LIABLE TO YOU OR ANY THIRD PARTY 
    FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL, INCIDENTAL, OR SPECIAL DAMAGES INCLUDING LOST PROFITS, LOST SAVINGS, 
    COSTS, FEES, OR EXPENSES OF ANY KIND ARISING OUT OF ANY PROVISION OF THIS AGREEMENT OR THE USE OR THE INABILITY 
    TO USE THE SOFTWARE OR DOCUMENTATION, HOWEVER CAUSED AND UNDER ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
    STRICT LIABILITY OR TORT INCLUDING NEGLIGENCE OR OTHERWISE), EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 
    PAYPAL'S AGGREGATE LIABILITY AND THAT OF ITS SUPPLIERS UNDER OR IN CONNECTION WITH THIS AGREEMENT SHALL BE 
    LIMITED TO THE AMOUNT PAID BY YOU FOR THE SOFTWARE AND DOCUMENTATION. 

    4.  TRADEMARK USAGE
    PayPal is a trademark of PayPal, Inc. in the United States and other countries.  Such trademarks may not be used 
    to endorse or promote any product unless expressly permitted under separate agreement with PayPal.  

    5.  CERTIFICATIONS
    Please note that if you modify the source code and redistribute these modifications for commercial purposes,
    you agree and understand you may need to certify or comply with any relevant certification or compliance entities
    to process payments. 

    6.  TERM
    Your rights under this Agreement shall terminate if you fail to comply with any of the material terms or 
    conditions of this Agreement and do not cure such failure in a reasonable period of time after becoming 
    aware of such noncompliance.  If all your rights under this Agreement terminate, you agree to cease use 
    and distribution of the Software and Documentation as soon as reasonably practicable. 

    7. GOVERNING LAW AND JURISDICTION. This Agreement is governed by the statutes and laws of the State of 
    California, without regard to the conflicts of law principles thereof.  If any part of this Agreement is 
    found void and unenforceable, it will not affect the validity of the balance of the Agreement, which shall 
    remain valid and enforceable according to its terms.  Any dispute arising out of or related to this Agreement 
    shall be brought in the courts of Santa Clara County, California, USA. 
                        LICENSE
                       }
  s.authors          = {"PayPal"=>"DL-PP-RetailSDK@paypal.com"}
  s.homepage         = "https://developer.paypal.com/docs/integration/paypal-here/ios-dev/overview/"
  s.description      = "The PayPal Here SDK v2 for iOS provides access to a group of PayPal transaction services which contain an extensive set of point-of-sale functions for merchants."
  s.source           = { :git => 'https://github.com/PayPal-Mobile/ios-here-sdk-dist.git', :tag => "v#{s.version}" }

  s.requires_arc = true
  s.ios.deployment_target    = '8.1'

  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    'OTHER_LDFLAGS' => '-weak_library /usr/lib/libstdc++.dylib -lstdc++ -ObjC',
  }

  s.ios.frameworks = 'AudioToolbox', 'MobileCoreServices', 'Security', 'CFNetwork', 'AVFoundation', 'ExternalAccessory', 'MediaPlayer', 'CoreTelephony', 'Foundation', 'CoreBluetooth', 'SystemConfiguration', 'JavaScriptCore', 'CoreBluetooth', 'UIKit', 'CoreLocation'

  s.default_subspec = 'Debug'

  s.subspec 'Debug' do |sp|
    sp.vendored_frameworks      = 'RSDK/Debug/PayPalRetailSDK.framework', 'frameworks/PPHSwiper.framework', 'frameworks/PPHR_BLE.framework', 'frameworks/PPHSDK_BLE.framework'
    sp.ios.resource             = 'RSDK/Debug/PayPalRetailSDK.framework/Versions/A/Resources/**/*'
  end

  s.subspec 'Release' do |sp|
    sp.vendored_frameworks      = 'RSDK/Release/PayPalRetailSDK.framework', 'frameworks/PPHSwiper.framework', 'frameworks/PPHR_BLE.framework', 'frameworks/PPHSDK_BLE.framework'
    sp.ios.resource             = 'RSDK/Release/PayPalRetailSDK.framework/Versions/A/Resources/**/*'
  end

  s.dependency 'SimpleKeychain', '~> 0.6.1'

end