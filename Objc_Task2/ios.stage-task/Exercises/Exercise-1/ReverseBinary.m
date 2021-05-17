#import "ReverseBinary.h"

int binaryTodecimal( int bin_num)
{
    
    int decimal_num = 0, temp = 0, rem;
    while (bin_num != 0)
    {
        rem = bin_num % 10;
        bin_num = bin_num / 10;
        decimal_num = decimal_num + rem * pow( 2, temp);
        temp++;
    }
    return decimal_num;
}


UInt8 ReverseInteger(UInt8 n) {
    
    NSMutableArray *mArray = [NSMutableArray array];
    while(n>=0){
        UInt8 rem = n % 2;
        [mArray addObject:[NSNumber numberWithInt:rem]];
        n = n/2;
        if ([mArray count] == 8) {
            break;
        }
    }
    
    [mArray reverseObjectEnumerator];
    NSString * result = [[mArray valueForKey:@"intValue" ] componentsJoinedByString:@""];
    NSNumberFormatter* nf = [[NSNumberFormatter alloc] init];
    int dec = binaryTodecimal([[nf numberFromString:result] intValue]);
    
    return dec;
}
