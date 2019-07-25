
--  declare @x int Exec stpGetOwnerPageWise 1,15, @x out
ALTER PROCEDURE [dbo].[stpGetOwnerPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [CompanyName] ASC
      )AS RowNumber
      ,ID
      ,CompanyName
      --,ProprietorFName1
      --,ProprietorMName1
      --,ProprietorLName1
	   ,ProprietorFName1 + ' ' + ISNULL(ProprietorLName1,'') AS ProprietorName1
      --,ProprietorFName2
      --,ProprietorMName2
      --,ProprietorLName2
	   ,ProprietorFName2 + ' ' + ISNULL(ProprietorMName2,'') + ' ' + ISNULL(ProprietorLName2,'') AS ProprietorName2
      ,AddressLine1
      ,PinCode
      ,Locality
      ,GSTIN
      ,Phone1
      ,Phone2

     INTO #Results
      FROM [Owner]  
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END





