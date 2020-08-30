#include <iostream>

template <typename T>
struct Node
{
    T value;
    Node *next = nullptr;
    Node *prev;
};

template <typename T>
class List
{
    Node<T> *_root;
    Node<T> *_iterator;
    int _size;

public:
    List() : _root(nullptr), _iterator(_root), _size(0)
    {
    }
    List(int size, const T value = 0) : _size(value)
    {
        if (size == 0)
        {
            List();
        }
        else
        {
            _root = new Node<T>();
            _root->value = value;
            _root->prev = nullptr;
            if (size > 1)
            {
                Node<T> *secondElem = new Node<T>();
                _root->next = secondElem;
                secondElem->prev = _root;
                secondElem->value = value;

                for (int i = 0; i < (size - 2); i++)
                {
                    Node<T> *tmp = new Node<T>();
                    secondElem->next = tmp;
                    tmp->value = value;
                    tmp->prev = secondElem;
                    secondElem = tmp;
                }
            }
            else
            {
                _root->next = nullptr;
            }
            _iterator = _root;
        }
    }
    List(const List<T> &rhv) : _root(nullptr)
    {
        auto tmp = rhv._root;
        for (int i = 0; i < rhv._size; i++)
        {
            push_back(tmp->value);
            tmp = tmp->next;
        }
    }
    Node<T> *begin() { return _root; }
    Node<T> *end() { return nullptr; }
    Node<T> *iter() { return _iterator; }
    void push_back(const T &new_value)
    {
        if (not _root)
        {
            _root = new Node<T>;
            _root->value = new_value;
            _root->prev = nullptr;
            _iterator = _root;
        }
        else
        {
            Node<T> *newElem = new Node<T>;
            newElem->value = new_value;
            newElem->next = nullptr;
            Node<T> *tmp = _root;
            while (tmp->next)
            {
                tmp = tmp->next;
            }
            tmp->next = newElem;
            newElem->prev = tmp;
        }
        _size++;
    }
    void push_front(const T &new_value)
    {
        if (not _root)
        {
            _root = new Node<T>;
            _root->value = new_value;
            _root->prev = nullptr;
            _iterator = _root;
        }
        else
        {
            Node<T> *newElem = new Node<T>;
            newElem->value = new_value;
            newElem->next = _root;
            newElem->prev = nullptr;
            _root->prev = newElem;
            if (_iterator == _root)
            {
                _iterator = newElem;
            }
            _root = newElem;
        }
        _size++;
    }
    void pop_front()
    {
        if (_size == 0)
        {
            return;
        }
        Node<T> *tmp = _root;
        _root = _root->next;
        _root->prev = nullptr;
        if (_iterator == tmp)
        {
            _iterator = _root;
        }
        delete tmp;
        _size--;
    }
    void pop_back()
    {
        if (_size == 0)
        {
            return;
        }
        else if (_size == 1)
        {
            delete _root;
            _root = nullptr;
            _iterator = nullptr;
        }
        else
        {
            Node<T> *tmp = _root;
            while (tmp->next)
            {
                tmp = tmp->next;
            }
            tmp->prev->next = nullptr;
            delete tmp;
        }
        _size--;
    }
    void insert(Node<T> *pos, const T &val)
    {
        if (pos == _root)
        {
            push_front(val);
        }
        else
        {
            Node<T> *tmp = pos->prev;
            tmp->next = new Node<T>;
            auto newItemPtr = tmp->next;
            newItemPtr->next = pos;
            newItemPtr->prev = tmp;
            newItemPtr->value = val;
            pos->prev = newItemPtr;
            _size++;
        }
    }
    void erase(Node<T> *pos)
    {
        if (pos == _root)
        {
            pop_front();
        }
        else
        {
            Node<T> *tmp = pos->prev;
            tmp->next = pos->next;
            pos->next->prev = tmp;
            delete pos;
            _size--;
        }
    }
    void clear()
    {
        auto tmp = _root;
        for (int i = 0; i < _size; i++)
        {
            auto tmp2 = tmp->next;
            std::cout << "I deleted value: " << tmp->value << std::endl;
            delete tmp;
            tmp = tmp2;
        }
    }
    int size() { return _size; }
    bool empty() { return _size == 0; }
    T &front()
    {
        if (not empty())
        {
            return (_root->value);
        }
    }
    T &back()
    {
        if (not empty())
        {
            Node<T> *tmp = _root;
            while (tmp->next)
            {
                tmp = tmp->next;
            }
            return tmp->value;
        }
    }
    void reset_iter() { _iterator = _root; }
    Node<T> *operator++(int) //postfix
    {
        auto tmp = _iterator;
        _iterator = _iterator->next;
        return tmp;
    }
    Node<T> *operator++() //prefix
    {
        _iterator = _iterator->next;
        return _iterator;
    }
    Node<T> *operator--(int) //postfix
    {
        auto tmp = _iterator;
        _iterator = _iterator->prev;
        return tmp;
    }
    Node<T> *operator--() //prefix
    {
        _iterator = _iterator->prev;
        return _iterator;
    }
};