#include <iostream>
#include <time.h>
#include <windows.h>

using namespace std;

void sortowanie_babelkowe(int *tab, int n)
{
    for(int i=1; i<n; i++)
    {
        for(int j=n-1; j>=1; j--)
        {
            if(tab[j]<tab[j-1])
            {
                int bufor; bufor=tab[j-1];
                tab[j-1]=tab[j];
                tab[j]=bufor;
            }
        }
    }
}

int main()
{
    int ile;
    cout<<"podaj ilosc losowych liczb w tablicy: ";
    cin>>ile;
    int *tablica;
    tablica=new int [ile];
    srand(time(NULL));
    cout<<"przed sorotwaniem"<<endl;
    for(int i=0; i<ile; i++)
    {
        tablica[i] = rand()%100000+1;
        cout<<tablica[i]<<" ";
    }

    sortowanie_babelkowe(tablica, ile);

    cout<<endl<<"po sortowaniu"<<endl;
     for(int i=0; i<ile; i++)
    {
        cout<<tablica[i]<<" ";
    }

    delete [] tablica;
    return 0;
}
