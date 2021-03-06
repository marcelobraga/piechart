//
//  ViewController.m
//  PieChart
//
//  Created by Marcelo Braga on 15/01/14.
//  Copyright (c) 2014 Marcelo Braga. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableArray * arrayChart = [NSMutableArray new];
    NSMutableArray * arrayColors = [NSMutableArray new];
    
    [arrayChart addObject:[NSNumber numberWithInt:5]];
    [arrayChart addObject:[NSNumber numberWithInt:10]];
    [arrayChart addObject:[NSNumber numberWithInt:20]];
    [arrayChart addObject:[NSNumber numberWithInt:15]];
    [arrayChart addObject:[NSNumber numberWithInt:50]];
    
    [arrayColors addObject:[UIColor redColor]];
    [arrayColors addObject:[UIColor orangeColor]];
    [arrayColors addObject:[UIColor yellowColor]];
    [arrayColors addObject:[UIColor greenColor]];
    [arrayColors addObject:[UIColor purpleColor]];
    
    self.pieChart.showLabel = NO;
    self.pieChart.showPercentage = YES;
    self.pieChart.DLColorsArray = arrayColors;
    [self.pieChart renderInLayer:self.pieChart dataArray:arrayChart];
    self.pieChart.layer.borderColor = [UIColor grayColor].CGColor;
    self.pieChart.layer.borderWidth = 2;
    self.pieChart.layer.cornerRadius = 10;
    self.pieChart.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pieChart:(DLPieChart *)pieChart didSelectSliceAtIndex:(NSUInteger)index {
    int value = [[self.pieChart.DLDataArray objectAtIndex:index] integerValue];
    
    NSLog(@"Tocou valor %i", value);
    
    
}

@end
