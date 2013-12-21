/*
 Copyright 2012 - 2013 UpwardsNorthwards
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "BPLMapViewDetailViewController.h"

#import "SimpleKMLPlacemark+Additions.h"
#import "BPLConstants.h"
#import "BPLWikipediaViewController.h"
#import "UIColor+BluePlaquesLondon.h"

@interface BPLMapViewDetailViewController()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *occupationLabel;
@property (nonatomic, weak) IBOutlet UILabel *addressLabel;
@property (nonatomic, weak) IBOutlet UILabel *noteLabel;

@end

@implementation BPLMapViewDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.titleLabel.textColor = [UIColor darkBlueColour];
    self.occupationLabel.textColor = [UIColor darkBlueColour];
    self.addressLabel.textColor = [UIColor darkBlueColour];
    self.noteLabel.textColor = [UIColor darkBlueColour];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
    
    SimpleKMLPlacemark *placemark = (SimpleKMLPlacemark *)self.marker.userData;
    
    self.navigationItem.title = placemark.name;
    
    self.titleLabel.text = placemark.title;
    self.occupationLabel.text = placemark.occupation;
    self.addressLabel.text = placemark.address;
    NSString *note = placemark.note;
    if (note) {
        self.noteLabel.text = placemark.note;
        self.noteLabel.hidden = NO;
    } else {
        self.noteLabel.hidden = YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:BPLWikipediaViewControllerSegue]) {
        BPLWikipediaViewController *destinationViewController = (BPLWikipediaViewController *)segue.destinationViewController;
        destinationViewController.marker = self.marker;
    }
}

@end
