-- How many copies of the book titled The Lost Tribe are owned by each library branch?

SELECT BranchName, No_of_Copies
FROM tblBOOK p
JOIN tblBOOK_COPIES pv
ON p.BookID = pv.BookID
JOIN tblLIBRARY_BRANCH v
ON pv.BranchID = v.BranchID
WHERE Title = 'The Lost Tribe'

