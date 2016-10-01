-- Retrieve the names of all borrowers who do not have any books checked out.

SELECT UserName
FROM tblBORROWER 
WHERE CardNo NOT IN (SELECT CardNo FROM tblBOOK_LOANS );