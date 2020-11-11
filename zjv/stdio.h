#pragma once

#include "stddef.h"
#define UART16550A_DR (volatile unsigned char *)0x10000000

int printf(const char *, ...);
int putchar(int);
int puts(const char *);