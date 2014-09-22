//
//  MainViewController.m
//  fontTestApp
//
//  Created by CashLee on 14-5-7.
//  Copyright (c) 2014年 cashlee. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, retain) UITableView * tableView;

@property (nonatomic, retain) NSMutableArray * fontNames;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    self.fontNames = [[NSMutableArray alloc]init];
    
    NSArray *familyNames =[[NSArray alloc]initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indexFamily, indexFont;
    
    for(indexFamily=0;indexFamily<[familyNames count];++indexFamily){
        fontNames =[[NSArray alloc]initWithArray:[UIFont fontNamesForFamilyName:[familyNames objectAtIndex:indexFamily]]];
        
        for(indexFont=0; indexFont<[fontNames count]; ++indexFont){
            
            NSString *fNames=@"Thonburi-Bold,Thonburi,Thonburi-Light,SnellRoundhand-Black,SnellRoundhand-Bold,SnellRoundhand,AcademyEngravedLetPlain,MarkerFelt-Thin,MarkerFelt-Wide,Avenir-Heavy,Avenir-Oblique,Avenir-Black,Avenir-Book,Avenir-BlackOblique,Avenir-HeavyOblique,Avenir-Light,Avenir-MediumOblique,Avenir-Medium,Avenir-LightOblique,Avenir-Roman,Avenir-BookOblique,GeezaPro-Bold,GeezaPro,GeezaPro-Light,ArialRoundedMTBold,Trebuchet-BoldItalic,TrebuchetMS,TrebuchetMS-Bold,TrebuchetMS-Italic,ArialMT,Arial-BoldItalicMT,Arial-ItalicMT,Arial-BoldMT,Marion-Regular,Marion-Italic,Marion-Bold,Menlo-BoldItalic,Menlo-Regular,Menlo-Bold,Menlo-Italic,MalayalamSangamMN,MalayalamSangamMN-Bold,KannadaSangamMN,KannadaSangamMN-Bold,GurmukhiMN-Bold,GurmukhiMN,BodoniSvtyTwoOSITCTT-BookIt,BodoniSvtyTwoOSITCTT-Bold,BodoniSvtyTwoOSITCTT-Book,BradleyHandITCTT-Bold,Cochin-Bold,Cochin-BoldItalic,Cochin-Italic,Cochin,SinhalaSangamMN,SinhalaSangamMN-Bold,HiraKakuProN-W6,HiraKakuProN-W3,IowanOldStyle-Bold,IowanOldStyle-BoldItalic,IowanOldStyle-Italic,IowanOldStyle-Roman,DamascusBold,Damascus,DamascusMedium,DamascusSemiBold,AlNile-Bold,AlNile,Farah,Papyrus-Condensed,Papyrus,Verdana-BoldItalic,Verdana-Italic,Verdana,Verdana-Bold,ZapfDingbatsITC,DINCondensed-Bold,AvenirNextCondensed-Regular,AvenirNextCondensed-MediumItalic,AvenirNextCondensed-UltraLightItalic,AvenirNextCondensed-UltraLight,AvenirNextCondensed-BoldItalic,AvenirNextCondensed-Italic,AvenirNextCondensed-Medium,AvenirNextCondensed-HeavyItalic,AvenirNextCondensed-Heavy,AvenirNextCondensed-DemiBoldItalic,AvenirNextCondensed-DemiBold,AvenirNextCondensed-Bold,Courier,Courier-Oblique,Courier-BoldOblique,Courier-Bold,HoeflerText-Regular,HoeflerText-BlackItalic,HoeflerText-Italic,HoeflerText-Black,EuphemiaUCAS,EuphemiaUCAS-Bold,EuphemiaUCAS-Italic,Helvetica-Oblique,Helvetica-Light,Helvetica-Bold,Helvetica,Helvetica-BoldOblique,Helvetica-LightOblique,HiraMinProN-W6,HiraMinProN-W3,BodoniOrnamentsITCTT,Superclarendon-Regular,Superclarendon-BoldItalic,Superclarendon-Light,Superclarendon-BlackItalic,Superclarendon-Italic,Superclarendon-LightItalic,Superclarendon-Bold,Superclarendon-Black,DiwanMishafi,Optima-Regular,Optima-Italic,Optima-Bold,Optima-BoldItalic,Optima-ExtraBlack,GujaratiSangamMN-Bold,GujaratiSangamMN,DevanagariSangamMN,DevanagariSangamMN-Bold,AppleColorEmoji,SavoyeLetPlain,Kailasa,Kailasa-Bold,TimesNewRomanPS-BoldItalicMT,TimesNewRomanPSMT,TimesNewRomanPS-BoldMT,TimesNewRomanPS-ItalicMT,TeluguSangamMN,TeluguSangamMN-Bold,STHeitiSC-Medium,STHeitiSC-Light,AppleSDGothicNeo-Thin,AppleSDGothicNeo-SemiBold,AppleSDGothicNeo-Medium,AppleSDGothicNeo-Regular,AppleSDGothicNeo-Bold,AppleSDGothicNeo-Light,Futura-Medium,Futura-CondensedMedium,Futura-MediumItalic,Futura-CondensedExtraBold,BodoniSvtyTwoITCTT-Book,BodoniSvtyTwoITCTT-Bold,BodoniSvtyTwoITCTT-BookIta,Baskerville-Bold,Baskerville-SemiBoldItalic,Baskerville-BoldItalic,Baskerville,Baskerville-SemiBold,Baskerville-Italic,Symbol,STHeitiTC-Medium,STHeitiTC-Light,Copperplate,Copperplate-Light,Copperplate-Bold,PartyLetPlain,AmericanTypewriter-Light,AmericanTypewriter-CondensedLight,AmericanTypewriter-CondensedBold,AmericanTypewriter,AmericanTypewriter-Condensed,AmericanTypewriter-Bold,ChalkboardSE-Light,ChalkboardSE-Regular,ChalkboardSE-Bold,AvenirNext-MediumItalic,AvenirNext-Bold,AvenirNext-UltraLight,AvenirNext-DemiBold,AvenirNext-HeavyItalic,AvenirNext-Heavy,AvenirNext-Medium,AvenirNext-Italic,AvenirNext-UltraLightItalic,AvenirNext-BoldItalic,AvenirNext-Regular,AvenirNext-DemiBoldItalic,BanglaSangamMN,BanglaSangamMN-Bold,Noteworthy-Bold,Noteworthy-Light,Zapfino,TamilSangamMN,TamilSangamMN-Bold,Chalkduster,ArialHebrew-Bold,ArialHebrew-Light,ArialHebrew,Georgia-BoldItalic,Georgia-Bold,Georgia-Italic,Georgia,HelveticaNeue-BoldItalic,HelveticaNeue-Light,HelveticaNeue-UltraLightItalic,HelveticaNeue-CondensedBold,HelveticaNeue-MediumItalic,HelveticaNeue-Thin,HelveticaNeue-Medium,HelveticaNeue-ThinItalic,HelveticaNeue-LightItalic,HelveticaNeue-UltraLight,HelveticaNeue-Bold,HelveticaNeue,HelveticaNeue-CondensedBlack,GillSans,GillSans-Italic,GillSans-BoldItalic,GillSans-Light,GillSans-LightItalic,GillSans-Bold,Palatino-Roman,Palatino-Italic,Palatino-Bold,Palatino-BoldItalic,CourierNewPSMT,CourierNewPS-BoldMT,CourierNewPS-ItalicMT,CourierNewPS-BoldItalicMT,OriyaSangamMN,OriyaSangamMN-Bold,Didot-Bold,Didot-Italic,Didot,DINAlternate-Bold,BodoniSvtyTwoSCITCTT-Book";
            
            if ([fNames rangeOfString:[fontNames objectAtIndex:indexFont]].location==NSNotFound) {
                NSLog(@"Font name: %@",[fontNames objectAtIndex:indexFont]);
                [self.fontNames addObject:[fontNames objectAtIndex:indexFont]];
            }
        }
    }
    
    NSLog(@"print font names %@" , self.fontNames );
    
    NSString * testText = @"好物";
    
    
    NSLog(@"好物精选 code : %@", [self EncodeGB2312Str:testText ]);
    
}


#pragma mark -
#pragma mark Encode Chinese to GB2312 in URL
-(NSString *)EncodeGB2312Str:(NSString *)encodeStr
{
	CFStringRef nonAlphaNumValidChars = CFSTR("![        DISCUZ_CODE_1        ]\'92()*+,-./:;=?@_~");
	NSString *preprocessedString = (NSString *)CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (CFStringRef)encodeStr, CFSTR(""), kCFStringEncodingGB_18030_2000));
	NSString *newStr = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)preprocessedString,NULL,nonAlphaNumValidChars,kCFStringEncodingGB_18030_2000));
    return newStr;
}

#pragma mark - tableView Datasource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return self.fontNames.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MainCell0";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.font = [UIFont fontWithName:[self.fontNames objectAtIndex:indexPath.row] size:14.0f];
    cell.textLabel.text = [NSString stringWithFormat:@"测试文字 %ld ，字体是：%@",(long)indexPath.row , [self.fontNames objectAtIndex:indexPath.row] ];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

#pragma mark - tableView Delegate Methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
   return 80.0f;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
