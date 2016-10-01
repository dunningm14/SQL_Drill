-- For each library branch, retrieve the branch name and the total number of books loaned out from that branch. 

SELECT p.BranchName, COUNT(*) 
FROM tblLIBRARY_BRANCH p, tblBOOK_LOANS pv
WHERE pv.BranchID = p.BranchID
GROUP BY p.BranchName;