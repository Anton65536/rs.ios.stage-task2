#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSSortDescriptor *descending = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    NSSortDescriptor *ascending = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES];
    NSMutableArray *resultArray = [NSMutableArray array];
    NSMutableSet *flag = [NSMutableSet set];
    for (int i = 0; i < [array count]; i++) {
        if (![array[i] respondsToSelector:@selector(count)]) {
            return @[];
        }
        for (int j = 0; j < [array[i] count]; j++) {
            NSArray* innerArray = array[i];
            id el = innerArray[j];
            if([el respondsToSelector:@selector(intValue)]){
                [flag addObject:@"number"];
            }
            if([el respondsToSelector:@selector(substringToIndex:)]){
                [flag addObject:@"string"];
            }
            
        }
        
    }
    for (int i = 0 ; i < [array count]; i++) {
            NSArray* innerArray =  [NSArray arrayWithArray:array[i]] ;
            [resultArray addObjectsFromArray: innerArray];
    }
    
    
    if ([flag containsObject:@"number"]) {
        
        [resultArray sortUsingDescriptors:@[ascending]];
        
    }
        if ([flag containsObject:@"string"]){
        [resultArray sortUsingDescriptors:@[ascending]];
        
    }
        if ([flag containsObject:@"number"] && [flag containsObject:@"string"]) {
        [resultArray sortUsingDescriptors:@[ascending,descending]];
            
    }
    
    
    
    
    

    return [resultArray copy];
}
@end
