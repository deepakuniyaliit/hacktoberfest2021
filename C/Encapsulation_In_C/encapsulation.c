#include<stdio.h>
#include<stdlib.h>

/*
[[DATA ENCAPSULATION]]
->The wrapping up of data(Data Members) and functions(Member Functions) which operates on that data together in a single unit is called Encapsulation of data.
->It is one of the main feature of the Object Oriented Programming  languages.

[[NOTE]] 
-> C is not a Object Oriented Programming language, but still we can achieve Encapsulation in C.

[[HOW??]]
-> C struct can have data members but can't have member functions.
-> But we can use Function Pointers to bind the functions which operates on data member to the object.
-> Hence, now we have our Data member and Member function ready to use.

[[IMPORTANT RULES TO KEEP IN MIND]]
-> Every function which will act as Member function must have first parameter as Pointer to object to which it will be bind. 
   [[WHY??]]
   Every member function have instance/pointer to the calling object to access the it's members. 
   For eg: Java and C++ both have `this` keyword which point to calling object(Object which calls the current member function).

-> If struct declared have named as `T` then always make a function  `struct T* T(struct T*)` and initialize every function pointer 
   and data member in the definition of function.
   [[WHY??]]
   This function will act as Contructor in Object Oriented Programming Languages.

-> As this method will use heap memory allocation so alway make a function to destroy/free the allocated memory to avoid any memory leak.

-> Once destroy function is called never use pointer to that object again as the pointer became the Dangling Pointer.
*/


//Example to demonstrate the encapsulation in C.
//Creating a ComplexNumber Structure to binding all the functions which operate on it's data member to it.

struct ComplexNumber
{
    //Data members
    double  real;
    double imaginary;

    //Function Pointers to point to member functions
    double (*getReal) (struct ComplexNumber*);

    double (*getImaginary) (struct ComplexNumber*);
    
    void (*add) (struct ComplexNumber*, struct ComplexNumber*);

    void (*print) (struct ComplexNumber*);

    void (*destroy) (struct ComplexNumber*);
};

//Functions which will act as member functions
double getReal(struct ComplexNumber* this)
{
    return this->real;
}

double getImaginary(struct ComplexNumber* this)
{
    return this->imaginary;
}

void add(struct ComplexNumber* this, struct ComplexNumber* other)
{
    this->real += other->real;
    this->imaginary += other->imaginary;
}

void destroy(struct ComplexNumber* this)
{
    free(this);
}

void print(struct ComplexNumber* this)
{
    if(this->imaginary >= 0)
        printf("%.3lf + %.3lfi\n", this->real, this->imaginary);
    else
        printf("%.3lf - %.3lfi\n", this->real, -this->imaginary);
}

//Function acting as a Constructor
struct ComplexNumber* ComplexNumber(double real, double imaginary)
{
    //Creating a new object in heap
    struct ComplexNumber* complex =  (struct ComplexNumber*) malloc(sizeof(struct ComplexNumber));

    //Initializing every data members
    complex->real = real;
    complex->imaginary = imaginary;

    //Binding functions to object;
    complex->getReal = getReal;
    complex->getImaginary = getImaginary;
    complex->add = add;
    complex->print = print;
    complex->destroy = destroy;
    return complex;
}




int main()
{
    //Creating ComplexNumber Objects
    struct ComplexNumber* complex1 = ComplexNumber(3.4, 4.5);
    struct ComplexNumber* complex2 = ComplexNumber(4.4, -3.0);

    printf("Complex Number 1 -> ");

    complex1->print(complex1);

    printf("Real: %.3lf\n", complex1->getReal(complex1));
    printf("Imaginary: %.3lf\n\n", complex1->getImaginary(complex1));

    printf("Complex Number 2 -> ");

    complex2->print(complex2);

    printf("Real: %.3lf\n", complex2->getReal(complex2));
    printf("Imaginary: %.3lf\n\n", complex2->getImaginary(complex2));

    //Adding complex2 to complex1
    complex1->add(complex1, complex2);

    printf("Resultant after addition -> ");

    complex1->print(complex1);

    printf("Real: %.3lf\n", complex1->getReal(complex1));
    printf("Imaginary: %.3lf\n\n", complex1->getImaginary(complex1));

    //Destroying ComplexNumber Objects
    complex1->destroy(complex1);
    complex2->destroy(complex2);

    return 0;
}

//Thanks
//Ashutosh Aswal