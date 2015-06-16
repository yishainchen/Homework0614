//
//  IntroViewController.m
//  AlphaCamp
//
//  Created by yishain on 6/16/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "IntroViewController.h"

@interface IntroViewController ()
{
    int changeNum;
}
@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    changeNum = 0;
    // Do any additional setup after loading the view.
//    arr1 = @[@1,@2,@3];
    
    intro1 = @{@"Name":@"Bernard",@"Image":[UIImage imageNamed:@"Untitled"],@"text":@"曾任Yahoo!亞洲區廣告總監，出生香港，麻省理工學院MBA畢業，香港有多次STARTUP經驗。"};
  
    intro2 = @{@"Name":@"Tim",@"Image":[UIImage imageNamed:@"circle2"],@"text":@"清大物理系唸完換台大國企所，熱愛棒球，喜歡喝咖啡聊是非，最喜歡的一句話是：人生就像騎腳踏車，為保持平衡，必須不斷前進。"};
   
    intro3 = @{@"Name":@"Ariel",@"Image":[UIImage imageNamed:@"Slice 1"],@"text":@"政大哲學系畢業，在中國大陸闖蕩三年，認為教育就是從人出發的一種用心交流，希望回歸教育，凝聚最真摯的正向能量。"};
    
    arr1 = @[intro1, intro2, intro3];
    [self loadData:intro1];
    }
-(void)loadData:()dic{

    label1.text = [dic valueForKey:@"Name"];
    eric.text = [dic valueForKey:@"text"];
    view1.image = [dic valueForKey:@"Image"];
}

-(IBAction)buttonclicked:(id)sender{
  
    //NSDictionary *dic = intro2;
    changeNum++;
    if (changeNum == [arr1 count]) {
        changeNum = 0;
    }
    [self loadData:arr1[changeNum]];
    
    NSLog(@"%i", changeNum);
}

- (IBAction)clicked:(id)sender{
    
    if (changeNum == 0) {
        changeNum = 3;
    }
    changeNum--;
    [self loadData:arr1[changeNum]];
    NSLog(@"%i", changeNum);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
