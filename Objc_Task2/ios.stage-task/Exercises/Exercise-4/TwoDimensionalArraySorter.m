#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    BOOL isAllStringClass = false ;
    BOOL isAllNumberClass  = false;
    NSSortDescriptor *descending = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    NSSortDescriptor *ascending = [NSSortDescriptor sortDescriptorWithKey:@"intVAlue" ascending:YES];
    NSMutableArray *resultArray = [NSMutableArray array];
    for (int i = 0; i < [array count]; i++) {
        if (![[array[i] class] isKindOfClass:[NSArray class]]) {
            return @[];
        }
        for (int j = 0; j < [array[i] count]; j++) {
            if ([[array[i][j] class] isKindOfClass:[NSNumber class]] /*|| [array[i][j] count] == 0*/) {
                isAllNumberClass = YES;
            } else{
                isAllNumberClass = NO;
            }
            if ([[array[i][j] class] isKindOfClass:[NSString class]]) {
                isAllStringClass = YES;
            } else {
                isAllStringClass = NO;
            }
        }
        
    }
    for (int i = 0 ; i < [array count]; i++) {
        for (int j = 0; j < [array[i] count]; j++) {
            [resultArray arrayByAddingObjectsFromArray:array[i][j]];
        }
    }
    
    if (isAllStringClass) {
        
        [resultArray sortUsingDescriptors:@[ascending]];
        return [resultArray copy];
    } else if(isAllNumberClass){
        [resultArray sortUsingDescriptors:@[ascending]];
        return [resultArray copy];
    }
    
    [resultArray sortUsingDescriptors:@[ascending,descending]];
    
    
    return [resultArray copy];
}

@end
