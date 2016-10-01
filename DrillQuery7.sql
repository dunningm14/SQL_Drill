/* For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of 
   copies owned by the library branch whose name is "Central" */

SELECT Title, No_Of_Copies 
FROM tblBOOK_AUTHORS p
JOIN tblBOOK pv 
ON p.BookID = pv.BookID
JOIN tblBOOK_COPIES bl
ON pv.BookID = bl.BookID
JOIN tblLIBRARY_BRANCH lb
ON bl.BranchID = lb.BranchID
WHERE AuthorName='Stephen King' AND BranchName='Central';

