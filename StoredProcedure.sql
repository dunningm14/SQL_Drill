/*Create a stored procedure that will execute one or more of those queries, based on user choice.
User input = Book Title 
Output = how many copies a Branch has of that book. 
It will outputs the book title, branch name and number of copies*/

USE SQL_Drill
GO

CREATE PROC RetrieveCopy @BTitle nvarchar(50)
AS
SELECT Title, No_of_Copies, BranchName
FROM [tblBOOK_COPIES] AS BC 
INNER JOIN [tblLIBRARY_BRANCH] AS LB ON BC.BranchID = LB.BranchID
INNER JOIN [tblBOOK] AS BK ON BC.BookId = BK.BookID
WHERE Title = @BTitle

EXEC RetrieveCopy @BTitle = 'The Lost Tribe'
