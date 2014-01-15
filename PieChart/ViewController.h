//
//  ViewController.h
//  PieChart
//
//  Created by Marcelo Braga on 15/01/14.
//  Copyright (c) 2014 Marcelo Braga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLPieChart.h"

@interface ViewController : UIViewController <DLPieChartDelegate>

@property (nonatomic, retain) IBOutlet DLPieChart * pieChart;

@end
