-- How many copies of the book titled The Lost Tribe are owned by the library branch whose name is "Sharpstown"?

SELECT bc.No_Of_Copies
FROM tblBOOK b, tblBOOK_COPIES bc, tblLIBRARY_BRANCH bl
WHERE         b.BookId = bc.BookId AND
                        bc.BranchId = bl.BranchId AND
Title='The Lost Tribe' AND BranchName='Sharpstown';