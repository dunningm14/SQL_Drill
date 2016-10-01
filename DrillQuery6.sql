-- Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.

SELECT p.UserName, p.UserAddress, COUNT(*) 
FROM tblBORROWER p, tblBOOK_LOANS pv
WHERE p.CardNo = pv.CardNo
GROUP BY p.CardNo, p.UserName, p.UserAddress
HAVING COUNT(*)> 5;