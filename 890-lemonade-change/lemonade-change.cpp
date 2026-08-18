class Solution {
public:
    bool lemonadeChange(vector<int>& bills) {
        int n = bills.size();
        int five, ten;
        for (int i = 0; i < n; i++) {
            if (bills[i] == 5)
                five++;
            else if (bills[i] == 10) {
                if (five == 0)
                    return false;
                five--;
                ten++;
            } else {
                // case 1- 1ten and 2five bills return
                if (ten > 0) {
                    ten--;
                    if (five == 0)
                        return false;

                    five--;
                }
                // Choice 2 only 5 notes can be retuned
                else {
                    if (five < 3)
                        return false;
                    five = five - 3;
                }
            }
        }
        return true;
    }
};