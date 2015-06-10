#ifndef HELPERS_H
#define HELPERS_H 1

int isSymbol(char*);
double getSymbol(char*);
double factorial(double);
double toRadians(double);
double toDegrees(double);
int precedence(char);
int isLeftAssociative(char);
int isOperator(char);
int isFunction(char*);
int isBinary(char);

#endif