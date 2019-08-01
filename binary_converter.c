#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int convert(int dec)
{
    if (dec == 0)
    {
        return 0;
    }
    else
    {
        return (dec % 2 + 10 * convert(dec / 2));
    }

}
//recursive algorithm for the conversionn
//check
//check2
//
//
//
//
//
//
int main()
{
	char *data = getenv("QUERY_STRING");
	int a=0;
	sscanf(data, "input=%d" , &a);
	
	

	printf("Content-Type:text/html\n\n");
	printf("<html>");
	printf("<head><title>Converter</title></head>");
	printf("<h3>Converted</h3>");

	int bin = convert(a);
	printf("the equivalent is %d\n", bin );
	return 0;
}
