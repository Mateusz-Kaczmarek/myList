#include <iostream>
#include "List.cpp"
using namespace std;

int main()
{
    List<int> list;
    list.push_back(50);
    list.push_back(60);
    list.push_back(70);
    list.push_front(40);
    list.push_front(30);
    list++;
    list.insert(list.iter(), 35);
    --list;
    list.erase(list.iter());
    list.reset_iter();

    cout << "--------------------------------" << endl;
    List<int> list2(list);
    while (list2.iter())
    {
        cout << list2.iter()->value << endl;
        ++list2;
    }

    cout << list.back() << endl;
    //list.clear();
    return 0;
}