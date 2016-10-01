/*For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
  retrieve the book title, the borrower's name, and the borrower's address. */

SELECT p.Title, pv.UserName, pv.UserAddress 
FROM tblBOOK p, tblBORROWER pv, tblBOOK_LOANS bl, tblLIBRARY_BRANCH lb
WHERE lb.BranchName='Sharpstown' AND lb.BranchID=bl.BranchID AND
bl.DueDate='2016-09-30' AND bl.CardNo=pv.CardNo AND bl.BookID=p.BookID