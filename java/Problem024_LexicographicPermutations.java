/**
 * Created by Sneeuwpopsneeuw on 12-Aug-16.
 */
public class Problem024_LexicographicPermutations {
    /*
        MMMM   Why should you program something when you just can calculate it in the comments

       _0 1 2 3 4 5 6 7 8 9     0 * (10!)       0 * 0       =       0               1000001
        2_0 1 3 4 5 6 7 8 9     2 * (9!)        2 * 362880  =       725760          274241
        2 7_0 1 3 4 5 6 8 9     6 * (8!)        6 * 40320   =       241920          32321
        2 7 8_0 1 3 4 5 6 9     6 * (7!)        6 * 5040    =       30240           2081
        2 7 8 3_0 1 4 5 6 9     2 * (6!)        2 * 720     =       1440            641
        2 7 8 3 9_0 1 4 5 6     5 * (5!)        5 * 120     =       600             41
        2 7 8 3 9 1_0 4 5 6     1 * (4!)        1 * 24      =       24              17
        2 7 8 3 9 1 5_0 4 6     2 * (3!)        2 * 6       =       12              3
        2 7 8 3 9 1 5 4_0 6     1 * (2!)        1 * 2       =       2               1
        2 7 8 3 9 1 5 4 6_0     1 * (1!)        1 * 1       =       1               0

        ans = 2783915460
     */
}