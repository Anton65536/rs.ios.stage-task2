#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSSortDescriptor *descending = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO selector:@selector(localizedStandardCompare:)];
    NSSortDescriptor *ascending = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    NSMutableArray *strings = [@[] mutableCopy];
    NSMutableArray *numbers = [@[] mutableCopy];

    for (int i = 0; i < [array count]; i++) {
        if (![array[i] respondsToSelector:@selector(count)]) {
            return @[];
        }
        for (int j = 0; j < [array[i] count]; j++) {
            NSArray* innerArray = array[i];
            id el = innerArray[j];
            if([el respondsToSelector:@selector(isEqualToNumber:)]){
                [numbers addObject:el];
            }
            if([el respondsToSelector:@selector(substringToIndex:)]){
                [strings addObject:el];
            }
        }
    }
    [strings sortUsingDescriptors:@[ascending]];
    [numbers sortUsingDescriptors:@[ascending]];
    if ([strings count] == 0) {
        return  [numbers copy];
    }
    if ([numbers count] == 0) {
        return [strings copy];
    } else {
        [strings sortUsingDescriptors:@[descending]];
        return @[numbers, strings];
    }
}
@end
