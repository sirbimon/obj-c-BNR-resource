//
//  main.c
//  BMICalc
//
//  Created by Bimonaretga on 12/7/17.
//  Copyright © 2017 moeCodes. All rights reserved.
//

#include <stdio.h>

//declare the struct
typedef struct {
    float heightInMeters;
    int weightInKilos;
    char *name;
} Person;

float bodyMassIndex(Person *p) {
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

void previousImplementation() {
    Person mikey;
    mikey.heightInMeters = 1.78;
    mikey.name = "mikey";
    mikey.weightInKilos = 65;
    
    Person johnny;
    johnny.name = "johnny";
    johnny.heightInMeters = 2.08;
    johnny.weightInKilos = 80;
    /*
     printf("%s is %.2f meters tall\n", mikey.name, mikey.heightInMeters);
     printf("%s is %d kgs \n",mikey.name, mikey.weightInKilos);
     printf("%s is %.2f meters tall\n", johnny.name, johnny.heightInMeters);
     printf("%s is %d kgs \n", johnny.name, johnny.weightInKilos);
     */
//    float mikeyBmi;
//    float johnnyBmi;
//    mikeyBmi = bodyMassIndex(mikey);
//    johnnyBmi = bodyMassIndex(johnny);
//    printf("%s has a BMI of %.2f\n", mikey.name, mikeyBmi);
//    printf("%s's BMI is %.2f\n", johnny.name, johnnyBmi);
}

int main(int argc, const char * argv[]) {
    
    //Allocate memory for one person struct
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    //Fill in two members of the struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters= 1.7;
    mikey->name = "mikey day";
    
    //print out the BMI
    float bmi = bodyMassIndex(mikey);
    
    printf("%s's BMI is %.2f\n", mikey->name, bmi);
    
    //let the memory be recycled
    free(mikey);
    //forget where it was
    mikey = NULL;
    
    return 0;
}
