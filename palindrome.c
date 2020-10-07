#include <stdio.h>

int main()
{
  char str[100];
  int i, length = 0, flag = 0, start, end;

  printf("Input a string: ");

  // Read in input from the command line
  scanf("%s", str);

  // Find the length of the string.
  // Hint: How do you know when a string ends in C?

  // Check if str is a palindrome.

  if (flag == 1)
    printf("%s is not a palindrome.\n", str);
  else
    printf("%s is a palindrome.\n", str);

  return 0;
}