#include<windows.h>

#define export extern "C" __declspec(dllexport)
export char* GMText( void )
{
     return "Jakis tekst przekazany przez funkcje biblioteki.";
}

export double GMAdd( double l1, double l2 )
{
    return l1 + l2;
}

