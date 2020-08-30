#include "../src/List.cpp"
#include <gtest/gtest.h>

class MyListTest : public ::testing::Test
{
public:
    List<int> sut;
};

TEST_F(MyListTest, Should_EmptyMethodReturnTrue_When_CreatEmptyList)
{
    bool isEmpty = sut.empty();
    EXPECT_EQ(true, isEmpty);
}

TEST_F(MyListTest, Should_EmptyMethodReturnFalse_When_AddElementToList)
{
    sut.push_back(1);
    bool isEmpty = sut.empty();
    EXPECT_EQ(false, isEmpty);
}
