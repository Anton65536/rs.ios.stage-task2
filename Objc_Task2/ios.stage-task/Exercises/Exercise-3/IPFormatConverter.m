#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString* mString = [NSMutableString string];
    for (int i = 0; i < [numbersArray count]; i++) {
    if ([numbersArray[i] intValue]  > 255) {
        return @"The numbers in the input array can be in the range from 0 to 255.";
    }
    if ([numbersArray[i] intValue] < 0 ) {
        return @"Negative numbers are not valid for input.";
        }
    }
    for (int i = 0; i < [numbersArray count]; i++) {
        if ([numbersArray[i] intValue]  > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if ([numbersArray[i] intValue] < 0 ) {
            return @"Negative numbers are not valid for input.";
        }
        if ([numbersArray count] < 4) {
            [mString appendString:[NSMutableString stringWithFormat:@"%@", numbersArray[i]]];
            for (int j = 0 ; j < 4 - [numbersArray count]; j++) {
                [mString appendFormat:@".%d", 0];
            }
            
            return  [mString copy];
        }
        if ([numbersArray count] > 4) {
            [mString appendString:[NSMutableString stringWithFormat:@"%@.", numbersArray[i]]];
            if (i == 3) {
                break;
            }
            return  [mString copy];
        }
        if ([numbersArray count] == 4) {
            for (int i = 0; i < [numbersArray count]; i++) {
                [mString appendString:[NSMutableString stringWithFormat:@"%@", numbersArray[i]]];
                [mString appendString:@"."];
            }
            if ([[mString substringWithRange:NSMakeRange([mString length] - 1 , 1)] isEqualToString:@"."]) {
                [mString deleteCharactersInRange: NSMakeRange([mString length] - 1, 1)];
            }
            return  [mString copy];
        }
    }
    if (![numbersArray count]) {
        return @"";
    }
    return nil;
}

@end
