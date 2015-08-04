/*
 Copyright 2010-2015 Amazon.com, Inc. or its affiliates. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License").
 You may not use this file except in compliance with the License.
 A copy of the License is located at

 http://aws.amazon.com/apache2.0

 or in the "license" file accompanying this file. This file is distributed
 on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 express or implied. See the License for the specific language governing
 permissions and limitations under the License.
 */

#import "AIAmazonInsightsTests.h"
#import "AWSMockFileManager.h"

NSString * credentials = nil;

@interface AIAmazonInsightsTests ()

@property (strong) id mockedFileManager;

@end

@implementation AIAmazonInsightsTests

- (void)setUp
{
    // Put setup code here. This method is called before the invocation of each test method in the class.
    if (![AWSServiceManager defaultServiceManager].defaultServiceConfiguration) {
        AWSStaticCredentialsProvider *credentialsProvider = [[AWSStaticCredentialsProvider alloc] initWithAccessKey:@"someAccessKey" secretKey:@"someSecretKey"];
        AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSEast1
                                                                             credentialsProvider:credentialsProvider];
        [AWSServiceManager defaultServiceManager].defaultServiceConfiguration = configuration;
    }
     
}

- (void)tearDown {
}

- (void)test_createInstanceUsingOnlyCredentials_allPropertiesNotNil
{
    AWSMobileAnalytics* instance = [AWSMobileAnalytics mobileAnalyticsForAppId:APP_KEY];


    assertThat([instance eventClient], is(notNilValue()));

}

- (void)test_createInstanceUsingCredentialsAndNilOptions_allPropertiesNotNil
{
    AWSMobileAnalytics* instance = [AWSMobileAnalytics mobileAnalyticsForAppId:APP_KEY];


    assertThat([instance eventClient], is(notNilValue()));

}

- (void)test_createInstanceUsingCredentialsAndNilOptionsAndCompletionBlock_allPropertiesNotNil
{
    AWSMobileAnalytics* instance = [AWSMobileAnalytics mobileAnalyticsForAppId:APP_KEY];


    assertThat([instance eventClient], is(notNilValue()));
    
}

@end
