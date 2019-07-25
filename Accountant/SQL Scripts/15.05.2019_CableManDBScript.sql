USE [CableMan]
GO
/****** Object:  StoredProcedure [dbo].[stpCheckIfUserExists]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[stpCheckIfUserExists]
(
	@Username varchar(100)
)
AS
BEGIN
	select count(*) from [User] 
	WHERE LTRIM(RTRIM(UPPER(UserName))) = LTRIM(RTRIM(UPPER(@Username)))
END




GO
/****** Object:  StoredProcedure [dbo].[stpDeleteChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteChannel 1
create procedure [dbo].[stpDeleteChannel] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ChannelCount int
SET @ChannelCount =0

SELECT @ChannelCount = COUNT(*) FROM Channel 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteConsumer]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpDeleteConsumer 1
create procedure [dbo].[stpDeleteConsumer] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ConsumerCount int
SET @ConsumerCount =0

SELECT @ConsumerCount = COUNT(*) FROM Consumer 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteConsumerChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteConsumerChannel 1
create procedure [dbo].[stpDeleteConsumerChannel] 
( 
@ConsumerID int
) 
AS 
BEGIN 

DECLARE @ConsumerChannelCount int
SET @ConsumerChannelCount =0

SELECT @ConsumerChannelCount = COUNT(*) FROM ConsumerChannel 
WHERE ConsumerID = @ConsumerID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END












GO
/****** Object:  StoredProcedure [dbo].[stpDeleteConsumerPackage]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteConsumerPackage 1
create procedure [dbo].[stpDeleteConsumerPackage] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ConsumerPackageCount int
SET @ConsumerPackageCount =0

SELECT @ConsumerPackageCount = COUNT(*) FROM ConsumerPackage 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END














GO
/****** Object:  StoredProcedure [dbo].[stpDeleteCustomerPayment]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteCustomerPayment 1
create procedure [dbo].[stpDeleteCustomerPayment] 
( 
@CustomerID int
) 
AS 
BEGIN 

DECLARE @CustomerPaymentCount int
SET @CustomerPaymentCount =0

SELECT @CustomerPaymentCount = COUNT(*) FROM CustomerPayment 
WHERE CustomerID = @CustomerID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END






GO
/****** Object:  StoredProcedure [dbo].[stpDeleteDistributorMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteDistributorMaster 1
create procedure [dbo].[stpDeleteDistributorMaster] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @DistributorMasterCount int
SET @DistributorMasterCount =0

SELECT @DistributorMasterCount = COUNT(*) FROM DistributorMaster 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteItemIn]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpDeleteItemIn 1
create procedure [dbo].[stpDeleteItemIn] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ItemInCount int
SET @ItemInCount =0

SELECT @ItemInCount = COUNT(*) FROM ItemIn 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteItemMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpDeleteItemMaster 1
create procedure [dbo].[stpDeleteItemMaster] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ItemMasterCount int
SET @ItemMasterCount =0

SELECT @ItemMasterCount = COUNT(*) FROM ItemMaster 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteItemOut]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpDeleteItemOut 1
create procedure [dbo].[stpDeleteItemOut] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @ItemOutCount int
SET @ItemOutCount =0

SELECT @ItemOutCount = COUNT(*) FROM ItemOut 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeleteOwner]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeleteOwner 1
create procedure [dbo].[stpDeleteOwner] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @OwnerCount int
SET @OwnerCount =0

SELECT @OwnerCount = COUNT(*) FROM Owner 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END















GO
/****** Object:  StoredProcedure [dbo].[stpDeletePackPackChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpDeletePackPackChannel 1
create procedure [dbo].[stpDeletePackPackChannel] 
( 
@ID int
) 
AS 
BEGIN 

DECLARE @PackPackChannelCount int
SET @PackPackChannelCount =0

SELECT @PackPackChannelCount = COUNT(*) FROM PackageChannel 
WHERE ID = @ID

--IF @CompanyDetailsCount = 0
--BEGIN
--UPDATE CompanyDetails SET IsActive = 0
--WHERE ID = @ID
 
--END

RETURN  
END














GO
/****** Object:  StoredProcedure [dbo].[stpGetAllChannelTypes]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[stpGetAllChannelTypes]
AS
BEGIN
	SELECT id,Name FROM CatagoryMaster
END





GO
/****** Object:  StoredProcedure [dbo].[stpGetAllDiscount]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetAllDiscount '2019-04-01 00:00:00.000', '2019-05-01 00:00:00.000' ,1028

CREATE PROCEDURE [dbo].[stpGetAllDiscount]
(
	@StartDate datetime,
	@EndDate datetime,
    @SessionUserID int
)
AS
Begin

Select SUM (Discount) as Discount
FROM Package

Where UserID=@SessionUserID
AND ValidFrom between @StartDate and @EndDate

End








GO
/****** Object:  StoredProcedure [dbo].[stpGetBillDataByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[stpGetBillDataByID]
(
	@UserID int
)
AS
Begin
Select UP.UserID,
	   C.FName + '' + C.LName AS ConsumerName
	   ,CONVERT(varchar(12),UP.RenewalDate,103) LastPaymentDate
	   ,CONVERT(varchar(12),DATEADD(month, 1, RenewalDate),103) NextRenewalDate
	   ,O.GSTIN
	   ,P.Cost
 FROM UserPayment UP
       inner JOIN Consumer C 
       ON C.ID = UP.ConsumerID
	   inner join [Owner] O
	   ON O.ID = C.OwnerID
	  inner join Package P
	  ON P.ID = UP.PackageID
WHERE UP.UserID = @UserID
End






GO
/****** Object:  StoredProcedure [dbo].[stpGetChannelByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetChannelByID 12

CREATE PROCEDURE [dbo].[stpGetChannelByID]
(
	@ID int
)
AS
Begin
Select C.ID, CNM.ChannelName AS Name, CONVERT(varchar(12),ActiveFrom,103) ActiveFrom, CONVERT(varchar(12),ActiveTo,103) ActiveTo, CNM.Cost,
       Discount, 
	   CONVERT(varchar(12),DiscountStartDate,103) DiscountStartDate, 
	   CONVERT(varchar(12),DiscountEndDate,103) DiscountEndDate,
	   SellingPrice, 
	   DistributorID, DM.Name AS DistributorName,
	   IsHD
	   --CNM.CategoryID as CatagoryID, DM.Name AS CatagoryName,
	   --CNM.ImagePath,
	   --CNM.IsFreeToAir
FROM Channel C
INNER JOIN ChannelMaster CNM
ON C.ChannelMasterId = CNM.ID
left outer JOIN DistributorMaster DM
ON DM.ID = C.DistributorID
left outer JOIN CatagoryMaster CM
ON CM.ID = CNM.CategoryID

WHERE C.ID = @ID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetChannelPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetChannelPageWise 1,15, @x out, 'a'
CREATE PROCEDURE [dbo].[stpGetChannelPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SearchValue varchar(200)
)
AS
BEGIN
      SET NOCOUNT ON;
	  if LEN(LTRIM(RTRIM(@SearchValue)))>0 or @SearchValue is not null 
	  BEGIN 
	  SET @SearchValue=LTRIM(RTRIM(Upper(@SearchValue)))
	  END
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [Cost] ASC   ------------------------------Cost-------------------------
      )AS RowNumber
      ,C.ID
      ,CM.ChannelName AS Name 
	  ,CONVERT(varchar(12),ActiveFrom,103) ActiveFrom
	   ,CONVERT(varchar(12),ActiveTo,103) ActiveTo
      ,CM.Cost

	   ,DistributorID, DM.Name AS DistributorName
	
     INTO #Results
      FROM Channel C
	  left outer JOIN DistributorMaster DM
      ON DM.ID = C.DistributorID
	  INNER JOIN ChannelMaster CM
	  ON C.ChannelMasterId = CM.ID
	  where (LTRIM(RTRIM(Upper(CM.ChannelName)))Like '%' + @SearchValue + '%' or @SearchValue is null)
	

--left outer JOIN CatagoryMaster CM
--ON CM.ID = C.CatagoryID
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END

















GO
/****** Object:  StoredProcedure [dbo].[stpGetConfigValueByKeyName]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConfigValueByKeyName 'stgst'

create PROCEDURE [dbo].[stpGetConfigValueByKeyName]
(
	@KeyName varchar(20)
)
AS
Begin
Select ConfigValue
FROM tblConfig
WHERE KeyName = @KeyName
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetConfigValueOfcgst]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConfigValueOfcgst

create PROCEDURE [dbo].[stpGetConfigValueOfcgst]

AS
Begin
Select ConfigValue
FROM tblConfig
WHERE KeyName = 'cgst'
End
GO
/****** Object:  StoredProcedure [dbo].[stpGetConfigValueOfstgst]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConfigValueOfstgst

create PROCEDURE [dbo].[stpGetConfigValueOfstgst]

AS
Begin
Select ConfigValue
FROM tblConfig
WHERE KeyName = 'stgst'
End
GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerByID 1004

CREATE PROCEDURE [dbo].[stpGetConsumerByID]
(
	@ID int
)
AS
Begin
Select C.ID,FName,MName,LName,Address,Ph1,Ph2,Pin,IsActive, OwnerID, ProprietorFName1 + '' + ProprietorLName1 AS OwnerName,SetTopBox
FROM Consumer C
left outer JOIN Owner O 
ON O.ID = C.OwnerID

WHERE C.ID = @ID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerChannelByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerChannelByID 1003

CREATE PROCEDURE [dbo].[stpGetConsumerChannelByID]
(
	@ConsumerID int
)
AS
Begin
Select CC.ConsumerID, C.FName + ' ' + C.LName AS ConsumerName,
	   CC.ChannelID, CM.ChannelName AS ChannelName,
	   CONVERT(varchar(12),CC.StartDate,103) StartDate, 
	   CONVERT(varchar(12),CC.EndDate,103) EndDate

FROM ConsumerChannel CC
left outer JOIN Consumer C
ON C.ID = CC.ConsumerID
left outer JOIN Channel Ch 
ON Ch.ID = CC.ChannelID
INNER JOIN ChannelMaster CM
ON CM.ID = CH.ChannelMasterId
WHERE CC.ConsumerID = @ConsumerID
End













GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerChannelPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerChannelPageWise 1,10, @x out
CREATE PROCEDURE [dbo].[stpGetConsumerChannelPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT
)
AS
BEGIN
      SET NOCOUNT ON;

	  select DISTINCT  ConsumerID,C.FName + ' ' + C.LName AS ConsumerName,
	  P.Cost As Cost,
	  P.Name AS PackageName,
	   CONVERT(varchar(12),CC.StartDate,103) StartDate, 
	   CONVERT(varchar(12),CC.EndDate,103) EndDate
	   into #Temptab
	  from ConsumerChannel CC
		left outer JOIN Consumer C
		ON C.ID = CC.ConsumerID
		left outer JOIN Package P
		ON P.ID = CC.PackageID

      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [ConsumerID] ASC
      )AS RowNumber,
      ConsumerName,
	  Cost,
	  PackageName,
	  StartDate, 
	  EndDate

     INTO #Results

FROM #Temptab


--SELECT distinct ConsumerName,Cost,PackageName FROM #Results
-- WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT DISTINCT ConsumerName, Cost,PackageName, StartDate, EndDate  FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END
















GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerClosed]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerClosed

CREATE PROCEDURE [dbo].[stpGetConsumerClosed]
(
	@AccountingYearId int,
	@UserId int
)
AS
Begin
Select Count (*) AS Total
FROM Consumer
WHERE UserId = @UserId
 and IsActive=0
End




GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerDue]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerDue

create PROCEDURE [dbo].[stpGetConsumerDue]
(
	@AccountingYearId int,
	@UserId int
)
AS
Begin
Select Count (*) AS Total
FROM Consumer
WHERE UserId = @UserId
--AND IsActive = 1
	--and CreationDate >= (GETDATE() - 30)
End




GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerForTypeahead]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--  declare @x int Exec stpGetConsumerForTypeahead 1,100, @x out,1028,1018,'32'
CREATE PROCEDURE [dbo].[stpGetConsumerForTypeahead]
 (
      @PageIndex INT = 1,
      @PageSize INT = 100,
      @RecordCount INT OUTPUT,
	  @SessionUserID int,
	  @OwnerID int,
	  @Query varchar(100)
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      --,FName + ISNULL(MName,'') + ISNULL(LName,'') As ConsumerName
	  ,FName + ISNULL(MName,'') + ISNULL(LName,'') + ' - ' + UPPER(ISNULL(C.SetTopBox,'')) As ConsumerName
        INTO #Results
      FROM Consumer C
      left outer JOIN Owner O 
      ON O.ID = C.OwnerID
	  Where C.UserID=@SessionUserID
	  AND O.ID=@OwnerID
	  --AND UPPER(FName) + UPPER(ISNULL(MName,'')) + UPPER(ISNULL(LName,'')) LIKE '%' + UPPER(@Query) + '%'
	  AND ((UPPER(FName) + UPPER(ISNULL(MName,'')) + UPPER(ISNULL(LName,'')) LIKE '%' + UPPER(@Query) + '%') OR (C.Ph1 LIKE '%' + RTRIM(LTRIM(@Query)) + '%'))	 
	  AND IsActive=1
    

      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC

	   
	  SELECT @RecordCount = COUNT(*)
      FROM #Results

      DROP TABLE #Results
END









GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerNew]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerNew

create PROCEDURE [dbo].[stpGetConsumerNew]
(
	@AccountingYearId int,
	@UserId int
)
AS
Begin
Select Count (*) AS Total
FROM Consumer
WHERE UserId = @UserId
--AND IsActive = 1
	and CreationDate >= (GETDATE() - 30)
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerNotRecharged]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerNotRecharged

CREATE PROCEDURE [dbo].[stpGetConsumerNotRecharged]
(
	@AccountingYearId int,
	@UserId int
)
AS
Begin
Select Count (*) AS Total
FROM Consumer
WHERE UserId = @UserId
and IsActive=0
End




GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPackageByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetConsumerPackageByID 2

CREATE PROCEDURE [dbo].[stpGetConsumerPackageByID]
(
	@ID int
)
AS
Begin
Select CP.ID, 
       CP.ConsumerID, C.FName + ' ' + C.LName AS ConsumerName,
	   CP.PackageID, P.Name AS PackageName,
	   CP.Discount,
	   CONVERT(varchar(12),CP.DiscountStartDate,103) DiscountStartDate, 
	   CONVERT(varchar(12),CP.DiscountEndDate,103) DiscountEndDate,
	   CONVERT(varchar(12),ActiveFrom,103) ActiveFrom,
	   CONVERT(varchar(12),ActiveTo,103) ActiveTo,
	   PackageCost
  
FROM ConsumerPackage CP
left outer JOIN Consumer C
ON C.ID = CP.ConsumerID
left outer JOIN Package P
ON P.ID = CP.PackageID
WHERE CP.ID = @ID
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPackagePageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPackagePageWise 1,15, @x out ,1027,1018
CREATE PROCEDURE [dbo].[stpGetConsumerPackagePageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  	  @SessionUserID int--,
	 -- @OwnerID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber,
       CP.ID, 
       CP.ConsumerID, C.FName + ' ' + C.LName AS ConsumerName,
	   CP.PackageID, P.Name AS PackageName,
	  -- CP.Discount,
	  -- CONVERT(varchar(12),CP.DiscountStartDate,103) DiscountStartDate, 
	 --  CONVERT(varchar(12),CP.DiscountEndDate,103) DiscountEndDate,
	   CONVERT(varchar(12),ActiveFrom,103) ActiveFrom,
	   CONVERT(varchar(12),ActiveTo,103) ActiveTo,
	   PackageCost

     INTO #Results
    FROM ConsumerPackage CP
left outer JOIN Consumer C
ON C.ID = CP.ConsumerID
left outer JOIN Package P
ON P.ID = CP.PackageID
left outer JOIN Owner O
ON O.ID = C.OwnerID
	 
	 	 Where C.UserID=@SessionUserID
	    and IsActive=1
		--and O.ID = @OwnerID 
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END
















GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWise 1,15, @x out,1027
CREATE PROCEDURE [dbo].[stpGetConsumerPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
      ,Ph1
      ,Ph2
      ,Pin
      ,IsActive
	  ,ProprietorFName1 + '' + ProprietorLName1 AS OwnerName

     INTO #Results
      FROM Consumer C
      left outer JOIN Owner O 
      ON O.ID = C.OwnerID
	 Where C.UserID=@SessionUserID
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END








GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForDashboardClosed]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForDashboardClosed 1,15, @x out,11
create PROCEDURE [dbo].[stpGetConsumerPageWiseForDashboardClosed]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
	  ,Pin
      ,Ph1      
      ,IsActive
	  ,SetTopBox

     INTO #Results
      FROM Consumer C
  --   inner JOIN Owner O 
  --    ON O.ID = C.OwnerID
	 --Where C.UserID=@SessionUserID
	    --Where IsActive=1
		   Where IsActive=0

      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END





GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForDashboardDue]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForDashboardDue 1,15, @x out,1028
CREATE PROCEDURE [dbo].[stpGetConsumerPageWiseForDashboardDue]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN

DECLARE @TempConsumer TABLE 
(
ConsumerID int, 
ConsumerName varchar(1000),
Phone varchar(12),
RenewDate VARCHAR(12)
)

Insert into @TempConsumer (ConsumerID,ConsumerName,Phone)
Select ID, FName + ' ' + ISNULL(MName, '' ) + ' ' + LName,Ph1
From Consumer
Where IsActive = 1
AND OwnerID = (select ID from Owner Where UserId = @SessionUserID)



--UPDATE RenewDate = (Select CONVERT(varchar(12),UP.NextRenewDate,103) 
--from UserPayment UP 
--INNER JOIN @TempConsumer TC 
--ON TC.ConsumerID = UP.ConsumerID
--Where RenewalDate = (Select Max(RenewalDate) from UserPayment UP1 WHERE TC.ConsumerID = UP1.ConsumerID)
--AND CAST(UP.NextRenewDate AS DATE) <= CAST(getdate() AS DATE))


UPDATE TC
SET TC.RenewDate = CONVERT(varchar(12),UP.NextRenewDate,103)
FROM UserPayment UP 
INNER JOIN @TempConsumer TC 
ON TC.ConsumerID = UP.ConsumerID
Where RenewalDate = (Select Max(RenewalDate) from UserPayment UP1 WHERE TC.ConsumerID = UP1.ConsumerID)
AND CAST(UP.NextRenewDate AS DATE) <= CAST(getdate() AS DATE)

DELETE FROM @TempConsumer WHERE RenewDate IS NULL

--Select * from @TempConsumer


      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [ConsumerName] ASC
      )AS RowNumber
      ,ConsumerId
      ,ConsumerName
      ,Phone      
      ,RenewDate

     INTO #Results
      FROM @TempConsumer TC
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results

      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
      DROP TABLE #Results
END





GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForDashboardNew]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForDashboardNew 1,15, @x out,11
CREATE PROCEDURE [dbo].[stpGetConsumerPageWiseForDashboardNew]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
	  ,Pin
      ,Ph1      
      ,IsActive
	  ,SetTopBox
	  ,CreationDate

     INTO #Results
      FROM Consumer C
  --   inner JOIN Owner O 
  --    ON O.ID = C.OwnerID
	 --Where C.UserID=@SessionUserID
	    --Where IsActive=1

		Where CreationDate >= (GETDATE() - 30)
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END





GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForDashboardNotRecharged ]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForDashboardNotRecharged 1,15, @x out,11
create PROCEDURE [dbo].[stpGetConsumerPageWiseForDashboardNotRecharged ]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
	  ,Pin
      ,Ph1      
      ,IsActive
	  ,SetTopBox

     INTO #Results
      FROM Consumer C
  --   inner JOIN Owner O 
  --    ON O.ID = C.OwnerID
	 --Where C.UserID=@SessionUserID
	   Where IsActive=0
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END





GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForDashboardTotal]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForDashboardTotal 1,15, @x out,11
create PROCEDURE [dbo].[stpGetConsumerPageWiseForDashboardTotal]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
	  ,Pin
      ,Ph1      
      ,IsActive
	  ,SetTopBox

     INTO #Results
      FROM Consumer C
  --   inner JOIN Owner O 
  --    ON O.ID = C.OwnerID
	 --Where C.UserID=@SessionUserID
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END






GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerPageWiseForOwner]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetConsumerPageWiseForOwner 1,15, @x out,1027,1018
CREATE PROCEDURE [dbo].[stpGetConsumerPageWiseForOwner]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @SessionUserID int,
	  @OwnerID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.ID
      ,FName
      ,MName
      ,LName
      ,Address
      ,Ph1
      ,Ph2
      ,Pin
      ,IsActive
	  ,ProprietorFName1 + '' + ProprietorLName1 AS OwnerName

     INTO #Results
      FROM Consumer C
      left outer JOIN Owner O 
      ON O.ID = C.OwnerID
	 Where C.UserID=@SessionUserID
	    and IsActive=1
		and O.ID = @OwnerID
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END








GO
/****** Object:  StoredProcedure [dbo].[stpGetConsumerTotal]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetConsumerTotal

create PROCEDURE [dbo].[stpGetConsumerTotal]
(
	@AccountingYearId int,
	@UserId int
)
AS
Begin
Select Count (*) AS Total
FROM Consumer
WHERE UserId = @UserId
--AND IsActive = 1
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetDistributorMasterByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetDistributorMasterByID 12

CREATE PROCEDURE [dbo].[stpGetDistributorMasterByID]
(
	@ID int
)
AS
Begin
Select DM.ID, Name, Address, Ph1, Ph2, DM.GSTIN,OwnerID, ProprietorFName1 + '' + ProprietorLName1 AS OwnerName, CONVERT(varchar(12),StartDate,103) StartDate, CONVERT(varchar(12),EndDate,103) EndDate
FROM DistributorMaster DM
left outer JOIN Owner O 
ON O.ID = DM.OwnerID

WHERE DM.ID = @ID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetDistributorMasterPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetDistributorMasterPageWise 1,15, @x out
CREATE PROCEDURE [dbo].[stpGetDistributorMasterPageWise]
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
            ORDER BY [Name] ASC
      )AS RowNumber
      ,DM.ID
      ,Name 
      ,Address
      ,Ph1
      ,Ph2
	  ,DM.GSTIN
	  ,ProprietorFName1 + '' + ProprietorLName1 AS OwnerName
	  ,CONVERT(varchar(12),StartDate,103) StartDate
	  ,CONVERT(varchar(12),EndDate,103) EndDate

     INTO #Results
      FROM DistributorMaster DM
      left outer JOIN Owner O 
      ON O.ID = DM.OwnerID 
	  	 
	    --Where IsActive=1		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END















GO
/****** Object:  StoredProcedure [dbo].[stpGetItemInByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetItemInByID 1

create PROCEDURE [dbo].[stpGetItemInByID]
(
	@ID int
)
AS
Begin
Select [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment
FROM ItemIn [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
WHERE [IN].ID = @ID
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetItemInBySearch]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetItemInBySearch '2017-12-02 00:00:00.000', '2018-12-01 00:00:00.000', 1
CREATE PROCEDURE [dbo].[stpGetItemInBySearch]
(
	--@ID int,
	  @FromDate datetime,
      @ToDate datetime,
	  @ItemID int
)
AS
Begin
Select [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment
FROM ItemIn [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
--WHERE [IN].ID = @ID
WHERE TransactionDate BETWEEN @FromDate AND @ToDate
AND ItemID =@ItemID
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetItemInPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--  declare @x int Exec stpGetItemInPageWise 1,15, @x out
create PROCEDURE [dbo].[stpGetItemInPageWise]
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
            ORDER BY [Quantity] ASC
      )AS RowNumber,

      [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment

     INTO #Results

FROM ItemIn [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END
















GO
/****** Object:  StoredProcedure [dbo].[stpGetItemInward]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- declare @x int Exec stpGetItemInward 1,15, @x out, '2017-12-02 00:00:00.000', '2018-12-01 00:00:00.000', 1
CREATE PROCEDURE [dbo].[stpGetItemInward]
(
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  --@ID int,
	  @FromDate varchar(50),
      @ToDate varchar(50),
	  @ItemID int
)
-------------------------------------
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [Quantity] ASC
      )AS RowNumber,

      [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment

     INTO #Results

FROM ItemIn [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
WHERE TransactionDate BETWEEN @FromDate AND @ToDate
AND ItemID =@ItemID	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END















































GO
/****** Object:  StoredProcedure [dbo].[stpGetItemMasterByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetItemMasterByID 1

CREATE PROCEDURE [dbo].[stpGetItemMasterByID]
(
	@ID int
)
AS
Begin
Select IM.ID,
       ItemName,  
	   UnitID, UM.UnitName
FROM ItemMaster IM
left outer JOIN UnitMaster UM
ON UM.ID = IM.UnitID
WHERE IM.ID = @ID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetItemMasterPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetItemMasterPageWise 1,15, @x out
create PROCEDURE [dbo].[stpGetItemMasterPageWise]
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
            ORDER BY [ItemName] ASC
      )AS RowNumber,
       IM.ID,
       ItemName,  
	   UnitID, UM.UnitName

     INTO #Results
     FROM ItemMaster IM
     left outer JOIN UnitMaster UM
     ON UM.ID = IM.UnitID
	  	 
	    --Where IsActive=1		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END















GO
/****** Object:  StoredProcedure [dbo].[stpGetItemOutByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetItemOutByID 1

create PROCEDURE [dbo].[stpGetItemOutByID]
(
	@ID int
)
AS
Begin
Select [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment
FROM ItemOut [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
WHERE [IN].ID = @ID
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetItemOutPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--  declare @x int Exec stpGetItemOutPageWise 1,15, @x out
create PROCEDURE [dbo].[stpGetItemOutPageWise]
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
            ORDER BY [Quantity] ASC
      )AS RowNumber,

      [IN].ID,
	   ItemID, IM.ItemName,
	   Quantity,
	   CONVERT(varchar(12),TransactionDate,103) TransactionDate, 
	   Comment

     INTO #Results

FROM ItemOut [IN]
left outer JOIN ItemMaster IM
ON IM.ID = [IN].ItemID
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END
















GO
/****** Object:  StoredProcedure [dbo].[stpGetLastPaymentPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetLastPaymentPageWise 1,15, @x out  , 1,11
CREATE PROCEDURE [dbo].[stpGetLastPaymentPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @AccountingYear int,
      @UserID int
)
AS
BEGIN
      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [FName] ASC
      )AS RowNumber
      ,C.FName + '' + C.LName AS ConsumerName
	  ,CONVERT(varchar(12),UP.RenewalDate,103) LastPaymentDate
	  ,CONVERT(varchar(12),DATEADD(month, 1, RenewalDate),103) NextRenewalDate

      INTO #Results
      FROM UserPayment UP
      inner JOIN Consumer C 
      ON C.ID = UP.ConsumerID

	  WHERE RenewalDate=(
      SELECT MAX(RenewalDate) FROM UserPayment)
	  AND UP.YearID = @AccountingYear
      AND UP.UserId=@UserID

      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
      DROP TABLE #Results
END






GO
/****** Object:  StoredProcedure [dbo].[stpGetOwnerByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetOwnerByID 1

create PROCEDURE [dbo].[stpGetOwnerByID]
(
	@ID int
)
AS
Begin
Select ID,CompanyName,ProprietorFName1,ProprietorMName1,ProprietorLName1,ProprietorFName2,ProprietorMName2,ProprietorLName2,
       AddressLine1,PinCode,Locality,GSTIN,Phone1,Phone2
FROM [Owner]
WHERE ID = @ID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetOwnerPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--  declare @x int Exec stpGetOwnerPageWise 1,15, @x out
CREATE PROCEDURE [dbo].[stpGetOwnerPageWise]
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


















GO
/****** Object:  StoredProcedure [dbo].[stpGetPackageNameByConsumerID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpGetPackageNameByConsumerID 1009

CREATE PROCEDURE [dbo].[stpGetPackageNameByConsumerID]
(
	@ConsumerID int
)
AS
Begin
Select P.ID, P.Name

FROM ConsumerPackage CP
INNER JOIN Package P
ON P.ID = CP.PackageID

WHERE CP.ConsumerID = @ConsumerID
End















GO
/****** Object:  StoredProcedure [dbo].[stpGetPackPackChannelByID]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec stpGetPackPackChannelByID 1
CREATE PROCEDURE [dbo].[stpGetPackPackChannelByID]
(
	@ID int
)
AS
Begin
Select P.ID, 
       P.OwnerID, ProprietorFName1 + ' ' + ProprietorLName1 AS ProprietorName,
       P.Name, 
	   CONVERT(varchar(12),ValidFrom,103) ValidFrom, 
	   CONVERT(varchar(12),ValidTo,103) ValidTo, 
	   P.Cost,
       P.Discount, 
	   CONVERT(varchar(12),P.DiscountStartDate,103) DiscountStartDate, 
	   CONVERT(varchar(12),P.DiscountEndDate,103) DiscountEndDate,
	   P.DistributorID, DM.Name AS DistributorMasterName,

	   PC.ChannelID, CM.ChannelName AS ChannelName,
	   CONVERT(varchar(12),PC.ActiveFrom,103) ActiveFrom, 
	   CONVERT(varchar(12),PC.ActiveTo,103) ActiveTo

FROM Package P
left outer JOIN DistributorMaster DM
ON DM.ID = P.DistributorID
left outer JOIN Owner O 
ON O.ID = P.OwnerID

left outer JOIN PackageChannel PC 
ON P.ID = PC.PackageID
left outer JOIN Channel C 
ON C.ID = PC.ChannelID
INNER JOIN ChannelMaster CM
ON CM.ID = C.ChannelMasterId

WHERE P.ID = @ID
End












GO
/****** Object:  StoredProcedure [dbo].[stpGetPackPackChannelPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetPackPackChannelPageWise 1,100, @x out
CREATE PROCEDURE [dbo].[stpGetPackPackChannelPageWise]
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
            ORDER BY [ProprietorFName1] ASC
      )AS RowNumber,
       P.ID, 
       P.OwnerID, ProprietorFName1 + ' ' + ProprietorLName1 AS ProprietorName,
       P.Name, 
	   CONVERT(varchar(12),ValidFrom,103) ValidFrom, 
	   CONVERT(varchar(12),ValidTo,103) ValidTo, 
	   P.Cost,
       P.Discount, 
	   CONVERT(varchar(12),P.DiscountStartDate,103) DiscountStartDate, 
	   CONVERT(varchar(12),P.DiscountEndDate,103) DiscountEndDate,
	   P.DistributorID, DM.Name AS DistributorName,

	   --PC.ChannelID, C.Name AS ChannelName,
	   --CONVERT(varchar(12),PC.ActiveFrom,103) ActiveFrom, 
	   --CONVERT(varchar(12),PC.ActiveTo,103) ActiveTo
	   CONVERT(varchar(12),P.ValidFrom,103) ActiveFrom,      --
	   CONVERT(varchar(12),P.ValidTo,103) ActiveTo           --

     INTO #Results
     FROM Package P
left outer JOIN DistributorMaster DM
ON DM.ID = P.DistributorID
left outer JOIN Owner O 
ON O.ID = P.OwnerID

--left outer JOIN PackageChannel PC 
--ON P.ID = PC.PackageID
--left outer JOIN Channel C 
--ON C.ID = PC.ChannelID
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
      DROP TABLE #Results
END












GO
/****** Object:  StoredProcedure [dbo].[stpGetStaffPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetStaffPageWise 1,15, @x out
CREATE PROCEDURE [dbo].[stpGetStaffPageWise]
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
            ORDER BY [FirstName] ASC
      )AS RowNumber
      ,S.ID
	  ,S.FirstName + '' + S.LastName AS Name
      ,S.AddressLine1
      ,PIN
      ,S.Locality
      ,Ph1
	  ,U.UserName                                              
	  ,ProprietorFName1 + ' ' + ProprietorLName1 AS OwnerName  
	  ,SS.Salary
	
     INTO #Results
      FROM Staff S
      left outer JOIN [User] U
      ON U.UserId = S.UserId

	    left outer JOIN Owner O
      ON O.ID = S.OwnerID

	  INNER JOIN StaffSalary SS
	  ON SS.StaffID = S.ID
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END

















GO
/****** Object:  StoredProcedure [dbo].[stpGetStockStatus]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpGetStockStatus 1
CREATE PROCEDURE [dbo].[stpGetStockStatus]
(
	@AccountingYearId int
)
AS
BEGIN

DECLARE @ItemInTab TABLE
(
	ItemId int,
	ItemName varchar(200),
	InStockQuantity decimal(7,2),
	UnitName varchar(50)
)

DECLARE @ItemOutTab TABLE
(
	ItemId int,
	ItemName varchar(200),
	OutStockQuantity decimal(7,2)
	--UnitName varchar(50)
)

INSERT INTO @ItemInTab(InStockQuantity,ItemName,ItemId,UnitName)
SELECT SUM(Quantity) as 'Total Items In Stock' , ItemName ,ItemId,UnitName
FROM ItemIn II INNER JOIN ItemMaster IM
ON II.ItemId = IM.ID
INNER JOIN UnitMaster UM 
ON IM.UnitId = UM.ID
WHERE II.YearId = @AccountingYearId
GROUP BY ItemName, ItemID,UnitName

INSERT INTO @ItemOutTab(OutStockQuantity,ItemName,ItemId)
SELECT SUM(Quantity) as 'Items Moved Out Of Stock' , ItemName,ItemId
FROM ItemOut ITO INNER JOIN ItemMaster IM
ON ITO.ItemId = IM.ID
WHERE ITO.YearId = 1
GROUP BY ItemName, ItemID

--select * from @ItemInTab

--select * from @ItemOutTab

SELECT II.ItemId,II.ItemName,(InStockQuantity - ISNULL(OutStockQuantity,0)) AS 'StockStatus',UnitName
FROM @ItemInTab II LEFT OUTER JOIN @ItemOutTab ITO
ON II.ItemId =  ITO.ItemId 

END













GO
/****** Object:  StoredProcedure [dbo].[stpGetStockStatusPageWise]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--  declare @x int Exec stpGetStockStatusPageWise 1,15, @x out, 1,1
CREATE PROCEDURE [dbo].[stpGetStockStatusPageWise]
 (
      @PageIndex INT = 1,
      @PageSize INT = 15,
      @RecordCount INT OUTPUT,
	  @AccountingYearId int,
	  @SessionUserID int
)
AS
BEGIN

DECLARE @ItemInTab TABLE
(
	ItemId int,
	ItemName varchar(200),
	InStockQuantity decimal(7,2),
	UnitName varchar(50)
)

DECLARE @ItemOutTab TABLE
(
	ItemId int,
	ItemName varchar(200),
	OutStockQuantity decimal(7,2)
	--UnitName varchar(50)
)

INSERT INTO @ItemInTab(InStockQuantity,ItemName,ItemId,UnitName)
SELECT SUM(Quantity) as 'Total Items In Stock' , ItemName ,ItemId,UnitName
FROM ItemIn II INNER JOIN ItemMaster IM
ON II.ItemId = IM.ID
INNER JOIN UnitMaster UM 
ON IM.UnitId = UM.ID
WHERE II.YearId = @AccountingYearId
AND II.UserId=@SessionUserID
GROUP BY ItemName, ItemID,UnitName

INSERT INTO @ItemOutTab(OutStockQuantity,ItemName,ItemId)
SELECT SUM(Quantity) as 'Items Moved Out Of Stock' , ItemName,ItemId
FROM ItemOut ITO INNER JOIN ItemMaster IM
ON ITO.ItemId = IM.ID
WHERE ITO.YearId = 1
AND ITO.UserId=@SessionUserID
GROUP BY ItemName, ItemID


      SET NOCOUNT ON;
      SELECT ROW_NUMBER() OVER
      (
            ORDER BY [UnitName] ASC
      )AS RowNumber
	 ,II.ItemId
	 ,II.ItemName
	 ,(InStockQuantity - ISNULL(OutStockQuantity,0)) AS 'StockStatus'
	 ,UnitName
	
     INTO #Results

     FROM @ItemInTab II LEFT OUTER JOIN @ItemOutTab ITO
     ON II.ItemId =  ITO.ItemId 
	 
	    --Where IsActive=1
		 
      SELECT @RecordCount = COUNT(*)
      FROM #Results
      SELECT * FROM #Results
      WHERE RowNumber BETWEEN(@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1
	 -- ORDER BY [Order] ASC
      DROP TABLE #Results
END








GO
/****** Object:  StoredProcedure [dbo].[stpGetSumOfQuantityOfInAndOut]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stpGetSumOfQuantityOfInAndOut]
(
	@ItemID int,
	@Quantity decimal(6,2),
	@TransactionDate datetime,
	@Comment varchar(1000)
    --@PageIndex INT = 1,
	--@PageSize INT = 39,
	--@RecordCount INT OUTPUT
)
AS
BEGIN
	
	   DECLARE @SumOfQuantity TABLE
	   (
		 ItemID int,
		 QuantityIn decimal(6,2),
		 QuantityOut decimal(6,2),
	     ActualQuantity decimal(6,2),
	     --TransactionDate datetime,
	     Comment varchar(1000)
	   )

	  --INSERT INTO @ResultTab(ID,Hours,BookDate,FirstName,LastName,RankName,WorkDate,ComplianceInfo,TotalNCHours,Comment,AdjustmentFactor,VesselID,MinTotalRestIn7Days,ValidOnDt)



	   DECLARE db_cursor CURSOR FOR 
	   SELECT ItemID,QuantityIn,QuantityOut,ActualQuantity,Comment FROM @SumOfQuantity

	 	OPEN db_cursor  

		CLOSE db_cursor





	 SELECT SUM(Quantity)
     FROM ItemIn

     SELECT SUM(Quantity)
     FROM ItemOut


  --    FROM WorkSessions WS
	 --   INNER JOIN Regimes REG
		--ON WS.RegimeID = REG.ID		
		--LEFT OUTER JOIN Ranks R
		--ON R.ID = C.RankID
		--WHERE WS.CrewId = @CrewId
END












GO
/****** Object:  StoredProcedure [dbo].[stpGetUnitMasterItemId]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec stpGetUnitMasterItemId 2
CREATE procedure [dbo].[stpGetUnitMasterItemId]
(
	@ItemID int
)
AS
Begin
Select UnitName
from UnitMaster UM
left outer JOIN ItemMaster IM
ON UM.ID = IM.UnitID
WHERE IM.ID = @ItemID
End












GO
/****** Object:  StoredProcedure [dbo].[stpSaveChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSaveChannel Null,'nnn', '2018-06-20 00:00:00.000','2018-06-20 00:00:00.000', 1.2

CREATE procedure [dbo].[stpSaveChannel] 
( 
@ID int,
--@Name varchar(100),
@ActiveFrom datetime,
@ActiveTo datetime,
--@Cost decimal(6,2),
@Discount decimal(6,2),
@DiscountStartDate datetime,
@DiscountEndDate datetime,
@SellingPrice decimal(6,2),
@DistributorID int,
--@CatagoryID int,
--@ImagePath varchar(500),
@IsHD bit
) 
AS 
BEGIN 

if @ActiveTo is null 
begin
set @ActiveTo = '9999-12-31 00:00:00.000' 
end

--DECLARE @FleetID int

 BEGIN TRY
    BEGIN TRAN

 IF @ID IS NULL

BEGIN   
	-- print 'INSERT'
	INSERT INTO Channel 
		   ( ActiveFrom, ActiveTo,  Discount, DiscountStartDate, DiscountEndDate, SellingPrice, DistributorID--, IsHD
		   )
	Values( @ActiveFrom, @ActiveTo, @Discount, @DiscountStartDate, @DiscountEndDate, @SellingPrice, @DistributorID--, @IsHD
		    )

 --   INSERT INTO ChannelMaster 
	--	   (IsHD
	--	   )
	--Values (@IsHD
	--	   )

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	--print 'UPDATE'
	UPDATE Channel
	SET  ActiveFrom=@ActiveFrom, ActiveTo=@ActiveTo, Discount=@Discount, 
	    DiscountStartDate=@DiscountStartDate, DiscountEndDate=@DiscountEndDate, SellingPrice=@SellingPrice, 
		DistributorID=@DistributorID --,IsHD=@IsHD
	Where ID=@ID

	UPDATE ChannelMaster
	SET IsHD=@IsHD
	Where ID=@ID


	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END
















GO
/****** Object:  StoredProcedure [dbo].[stpSaveConfig]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec stpSaveConfig 'smtptest','1000','d@d.com','f@f.com','qwerty'
CREATE Procedure [dbo].[stpSaveConfig]
(
@stgst varchar(100),
@cgst varchar(100)
)
AS 
Begin
Begin Try
Begin Tran
--Update tblConfig Set IsActive = 0 Where KeyName = 'stgst'
Insert into tblConfig (KeyName,ConfigValue,IsActive) Values ('stgst',@stgst,1)
--Update tblConfig Set IsActive = 0 Where KeyName = 'cgst'
Insert into tblConfig (KeyName,ConfigValue,IsActive) Values ('cgst',@cgst,1)
Commit Tran
End Try
Begin Catch
Rollback Tran
Print error_message()
End Catch
End
GO
/****** Object:  StoredProcedure [dbo].[stpSaveConsumer]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSaveConsumer Null,'fname', Null,'lname','address','12345',Null,'1234567',True,1018,Null,Null,'2018-12-14 00:00:00.000','2018-12-14 00:00:00.000',1028

CREATE procedure [dbo].[stpSaveConsumer] 
( 
@ID int,
@FName varchar(500),
@MName varchar(500),
@LName varchar(500),
@Address varchar(900),
@Ph1 varchar(20),
@Ph2 varchar(20),
@Pin varchar(200),
@IsActive bit,
@OwnerID int,

@UserName varchar(100),
@Password varchar(50),
@ActivationStartDate datetime,
@ActivationEndDate datetime,

@SessionUserID int,
@SetTopBox varchar(200)
) 
AS 
BEGIN 

--DECLARE @FleetID int

 BEGIN TRY
    BEGIN TRAN

 IF @ID IS NULL

BEGIN   
	DECLARE @UserID int
SET @UserID = @@IDENTITY
	 --print 'INSERT'

	 Insert into [User] (UserName,IsConsumer,Password,ActivationStartDate,ActivationEndDate,RoleId)
            Values (@UserName,3,@Password,@ActivationStartDate,@ActivationEndDate,2)


	INSERT INTO Consumer 
		    (FName,MName,LName,Address,Ph1,Ph2,Pin,IsActive,OwnerID,UserID,SetTopBox,CreationDate)
	Values(@FName,@MName,@LName,@Address,@Ph1,@Ph2,@Pin,@IsActive,@OwnerID,@SessionUserID,@SetTopBox,GETDATE())

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE Consumer
	SET FName=@FName,MName=@MName,LName=@LName,Address=@Address,Ph1=@Ph1,Ph2=@Ph2,Pin=@Pin,IsActive=@IsActive,OwnerID=@OwnerID,SetTopBox=@SetTopBox
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END








GO
/****** Object:  StoredProcedure [dbo].[stpSaveConsumerChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec stpSaveConsumerChannel 1004, 9, '2018-12-01 00:00:00.000', '2018-12-01 00:00:00.000'
CREATE procedure [dbo].[stpSaveConsumerChannel] 
( 
@ID int,

--@OwnerID int,
@Name varchar(100),
@ValidFrom datetime,
@ValidTo datetime,
--@Cost decimal(10,2),
@Discount decimal(10,2),
@DiscountStartDate datetime,
@DiscountEndDate datetime,
@DistributorID int,
--@UserID int,
--@ChannelID int,
@StartDate datetime,
@EndDate datetime,
@SelectedChannels varchar(1000),
--@ActiveFrom datetime,
--@ActiveTo datetime,
@PackageCost decimal(10,2),
@ConsumerID int,
@PackageGST decimal(10,2)
) 
AS 
BEGIN 

DECLARE @PackageID int
--DECLARE 

 BEGIN TRY
    BEGIN TRAN

IF @ID IS NULL OR @ID = 0

BEGIN   
	 print 'INSERT'
	  INSERT INTO Package(Name,ValidFrom,ValidTo,Cost,Discount,DiscountStartDate,DiscountEndDate,DistributorID,GST)
Values (@Name,@ValidFrom,@ValidTo,@PackageCost,@Discount,@DiscountStartDate,@DiscountEndDate,@DistributorID,@PackageGST)

	SET @PackageID = @@IDENTITY

	INSERT INTO ConsumerChannel(ConsumerID, StartDate, PackageID,EndDate, ChannelID )     
	SELECT @ConsumerID,@StartDate,@PackageID ,@EndDate, String FROM ufn_CSVToTable(@SelectedChannels,',')

	--SET @PackageID = @@IDENTITY

  INSERT INTO ConsumerPackage(PackageID,ConsumerID,Discount,DiscountStartDate,DiscountEndDate, PackageCost)
Values (@PackageID,@ConsumerID,@Discount,@DiscountStartDate,@DiscountEndDate, @PackageCost)


END
--ELSE
--BEGIN
----print 'UPDATE'

--UPDATE Package
--SET OwnerID=@OwnerID,Name=@Name,ValidFrom=@ValidFrom,ValidTo=@ValidTo,Cost=@Cost,Discount=@Discount,
--    DiscountStartDate=@DiscountStartDate,DiscountEndDate=@DiscountEndDate,DistributorID=@DistributorID  
--Where ID=@ID

--DELETE From PackageChannel Where ID=@ID

--INSERT INTO PackageChannel 
--       (PackageID,ActiveFrom,ActiveTo,ChannelID)
--	   SELECT @PackageID,@ActiveFrom,@ActiveTo,String FROM ufn_CSVToTable(@ChannelID,',')
--END


	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH

END






GO
/****** Object:  StoredProcedure [dbo].[stpSaveConsumerPackage]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSaveConsumerPackage Null,1003,7,'50.00','2018-12-01 00:00:00.000','2018-12-01 00:00:00.000','2018-12-01 00:00:00.000','2018-12-01 00:00:00.000',300.00
CREATE procedure [dbo].[stpSaveConsumerPackage] 
( 
@ID int,
@ConsumerID int,
@PackageID int,
@Discount decimal,
@DiscountStartDate datetime,
@DiscountEndDate datetime,
@ActiveFrom datetime,
@ActiveTo datetime,
@PackageCost decimal
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @ID IS NULL
BEGIN   
	 print 'INSERT'
	INSERT INTO ConsumerPackage 
		   (ConsumerID,PackageID,Discount,DiscountStartDate,DiscountEndDate,ActiveFrom,ActiveTo,PackageCost)
	Values(@ConsumerID,@PackageID,@Discount,@DiscountStartDate,@DiscountEndDate,@ActiveFrom,@ActiveTo,@PackageCost)

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE ConsumerPackage
	SET ConsumerID=@ConsumerID,PackageID=@PackageID,Discount=@Discount,DiscountStartDate=@DiscountStartDate,
	    DiscountEndDate=@DiscountEndDate,ActiveFrom=@ActiveFrom,ActiveTo=@ActiveTo,PackageCost=@PackageCost
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END
















GO
/****** Object:  StoredProcedure [dbo].[stpSaveCustomerPayment]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSaveCustomerPayment Null,'2018-12-01 00:00:00.000','2018-12-01 00:00:00.000',1
create procedure [dbo].[stpSaveCustomerPayment] 
( 
@CustomerID int,
@RenewStartDate datetime,
@RenewEndDate datetime,
@PackageCost decimal(6,2)
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @CustomerID IS NULL
BEGIN   
	 print 'INSERT'
	INSERT INTO CustomerPayment 
		   (CustomerID,RenewStartDate,RenewEndDate,PackageCost)
	Values(@CustomerID,@RenewStartDate,@RenewEndDate,@PackageCost)

	SET @CustomerID = @@IDENTITY
	--SET @CompanyId  = @ID
END
ELSE
--BEGIN
--	print 'UPDATE'
--	UPDATE CustomerPayment
--	SET CustomerID=@CustomerID,RenewStartDate=@RenewStartDate,RenewEndDate=@RenewEndDate,PackageCost=@PackageCost
--	Where CustomerID=@CustomerID
--	--SET @CompanyId  = @ID
--END
	COMMIT TRAN
 END TRY 
 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END






GO
/****** Object:  StoredProcedure [dbo].[stpSaveDistributorMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSaveDistributorMaster Null,'Citi', 'Maniktala','033-89256',NULL,26262622,1018,'01-01-2019','31-12-9999'
CREATE procedure [dbo].[stpSaveDistributorMaster] 
( 
@ID int,
@Name varchar(500),
@Address varchar(1000),
@Ph1 varchar(20),
@Ph2 varchar(20),
@GSTIN varchar(30),
@OwnerID int,
@StartDate datetime,
@EndDate datetime
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @ID IS NULL
BEGIN   
	 print 'INSERT'
	 DECLARE @UserId int
	 SET @UserId = 0

	 select @UserId = UserId FROM Owner WHERE ID= @OwnerID

	INSERT INTO DistributorMaster 
		   (Name, Address, Ph1, Ph2, GSTIN,OwnerID ,StartDate, EndDate,UserId)
	Values(@Name, @Address, @Ph1, @Ph2, @GSTIN,@OwnerID ,@StartDate, @EndDate,@UserId)


	SET @ID = @@IDENTITY
	

	INSERT INTO Channel(ActiveFrom,ActiveTo,Discount,DiscountStartDate,DiscountEndDate,SellingPrice,DistributorID,ChannelMasterId)
	SELECT GETDATE(),@EndDate,NULL,NULL,NULL,Cost,@ID,ID FROM ChannelMaster



END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE DistributorMaster
	SET Name=@Name, Address=@Address, Ph1=@Ph1, Ph2=@Ph2, GSTIN=@GSTIN,OwnerID=@OwnerID, StartDate=@StartDate, EndDate=@EndDate
	Where ID=@ID

	UPDATE Channel SET ActiveFrom= @StartDate,ActiveTo=@EndDate WHERE DistributorID =  @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END
















GO
/****** Object:  StoredProcedure [dbo].[stpSaveItemIn]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpSaveItemIn Null,1,5,'2018-12-01 00:00:00.000','test ok',1
CREATE procedure [dbo].[stpSaveItemIn] 
( 
@ID int,
@ItemID int,
@Quantity decimal,
@TransactionDate datetime,
@Comment varchar(1000),
@YearID int
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @ID IS NULL
BEGIN   
	 print 'INSERT'
	INSERT INTO ItemIn 
		   (ItemID,Quantity,TransactionDate,Comment,YearID)
	Values(@ItemID,@Quantity,@TransactionDate,@Comment,@YearID)

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE ItemIn
	SET ItemID=@ItemID,Quantity=@Quantity,TransactionDate=@TransactionDate,Comment=@Comment,YearID=@YearID
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[stpSaveItemMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpSaveItemMaster Null, 'Cable Box', 1
create procedure [dbo].[stpSaveItemMaster] 
( 
@ID int,
@ItemName varchar(500),
@UnitID int
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @ID IS NULL
BEGIN   
	 print 'INSERT'
	INSERT INTO ItemMaster 
		   (ItemName,UnitID)
	Values(@ItemName,@UnitID)

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE ItemMaster
	SET ItemName=@ItemName,UnitID=@UnitID
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[stpSaveItemOut]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpSaveItemOut Null,1,5,'2018-12-01 00:00:00.000','test ok',1
CREATE procedure [dbo].[stpSaveItemOut] 
( 
@ID int,
@ItemID int,
@Quantity decimal,
@TransactionDate datetime,
@Comment varchar(1000),
@YearID int
) 
AS 
BEGIN 
--DECLARE @FleetID int
 BEGIN TRY
    BEGIN TRAN
 IF @ID IS NULL
BEGIN   
	 print 'INSERT'
	INSERT INTO ItemOut 
		   (ItemID,Quantity,TransactionDate,Comment,YearID)
	Values(@ItemID,@Quantity,@TransactionDate,@Comment,@YearID)

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE ItemOut
	SET ItemID=@ItemID,Quantity=@Quantity,TransactionDate=@TransactionDate,Comment=@Comment,YearID=@YearID
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END












GO
/****** Object:  StoredProcedure [dbo].[stpSaveOwner]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec stpSaveOwner Null,'nnn', 'nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','nnn','2018-12-14 00:00:00.000','2018-12-14 00:00:00.000'

CREATE procedure [dbo].[stpSaveOwner] 
( 
@ID int,
@CompanyName varchar(100),
@ProprietorFName1 varchar(100),
@ProprietorMName1 varchar(100),
@ProprietorLName1 varchar(100),
@ProprietorFName2 varchar(100),
@ProprietorMName2 varchar(100),
@ProprietorLName2 varchar(100),
@AddressLine1 varchar(500),
@PinCode varchar(20),
@Locality varchar(100),
@GSTIN varchar(20),
@Phone1 varchar(20),
@Phone2 varchar(20),

@UserName varchar(100),
@Password varchar(50),
@ActivationStartDate datetime,
@ActivationEndDate datetime
) 
AS 
BEGIN 

	IF @ActivationEndDate IS NULL 
			BEGIN
				SET @ActivationEndDate = '9999-12-31 00:00:00.000'
			END

 BEGIN TRY
    BEGIN TRAN

 IF @ID IS NULL

BEGIN   
DECLARE @UserID int

	 --print 'INSERT'

	 Insert into [User] (UserName,IsConsumer,Password,ActivationStartDate,ActivationEndDate,RoleId)
            Values (@UserName,3,@Password,@ActivationStartDate,@ActivationEndDate,2)

	SET @UserID = @@IDENTITY

	INSERT INTO [Owner] 
		   (CompanyName, ProprietorFName1,ProprietorMName1,ProprietorLName1,ProprietorFName2,ProprietorMName2,ProprietorLName2,
		   AddressLine1,PinCode,Locality,GSTIN,Phone1,Phone2,UserId)
	Values(@CompanyName, @ProprietorFName1,@ProprietorMName1,@ProprietorLName1,@ProprietorFName2,@ProprietorMName2,@ProprietorLName2,
		   @AddressLine1,@PinCode,@Locality,@GSTIN,@Phone1,@Phone2,@UserID)

	SET @ID = @@IDENTITY
	--SET @CompanyId  = @ID

END
ELSE
BEGIN
	print 'UPDATE'
	UPDATE [Owner]
	SET CompanyName=@CompanyName, 
	ProprietorFName1=@ProprietorFName1,
	ProprietorMName1=@ProprietorMName1,
	ProprietorLName1=@ProprietorLName1, 
	ProprietorFName2=@ProprietorFName2,
	ProprietorMName2=@ProprietorMName2,
	ProprietorLName2=@ProprietorLName2,
	AddressLine1=@AddressLine1,
	PinCode=@PinCode,
	Locality=@Locality,
	GSTIN=@GSTIN,
	Phone1=@Phone1,
	Phone2=@Phone2
	Where ID=@ID

	--SET @CompanyId  = @ID

END
	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END
















GO
/****** Object:  StoredProcedure [dbo].[stpSavePackPackChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec stpSavePackPackChannel null,1010, 'Basant Yaya', '2018-12-01 00:00:00.000', '2019-12-01 00:00:00.000', 1.22, 1.55, '2018-12-01 00:00:00.000','2018-12-01 00:00:00.000', 1015,'10,11','2018-12-01 00:00:00.000','2018-12-01 00:00:00.000'

CREATE procedure [dbo].[stpSavePackPackChannel] 
( 
@ID int,
@OwnerID int,
@Name varchar(100),
--@ValidFrom datetime,
--@ValidTo datetime,
@Cost decimal(10,2),
@Discount decimal(10,2),
@DiscountStartDate datetime,
@DiscountEndDate datetime,
@DistributorID int,

@ChannelID varchar(1000),
@ActiveFrom datetime,
@ActiveTo datetime,
@GST decimal(10,2)
) 
AS 
BEGIN 

DECLARE @PackageID int

 BEGIN TRY
    BEGIN TRAN

 IF @ID IS NULL OR @ID = 0

BEGIN   
 print 'INSERT'
INSERT INTO Package 
       (UserID,Name,ValidFrom,ValidTo,Cost,Discount,DiscountStartDate,DiscountEndDate,DistributorID,GST)
Values (@OwnerID,@Name,@ActiveFrom,@ActiveTo,@Cost,@Discount,@DiscountStartDate,@DiscountEndDate,@DistributorID,@GST)

SET @PackageID = @@IDENTITY

INSERT INTO PackageChannel 
       (PackageID,ActiveFrom,ActiveTo,ChannelID)
--Values (@PackageID,@ActiveFrom,@ActiveTo,@ChannelID)
	   SELECT @PackageID,@ActiveFrom,@ActiveTo,String FROM ufn_CSVToTable(@ChannelID,',')

END
ELSE
BEGIN
--print 'UPDATE'
UPDATE Package
SET OwnerID=@OwnerID,Name=@Name,Cost=@Cost,Discount=@Discount,
    DiscountStartDate=@DiscountStartDate,DiscountEndDate=@DiscountEndDate,DistributorID=@DistributorID ,GST=@GST
Where ID=@ID



DELETE From PackageChannel Where ID=@ID

INSERT INTO PackageChannel 
       (PackageID,ActiveFrom,ActiveTo,ChannelID)
--Values (@PackageID,@ActiveFrom,@ActiveTo,@ChannelID)
	   SELECT @PackageID,@ActiveFrom,@ActiveTo,String FROM ufn_CSVToTable(@ChannelID,',')
END

	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH

END












GO
/****** Object:  StoredProcedure [dbo].[stpSaveStaff]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec stpSaveStaff 'smtptest','1000','d@d.com','f@f.com','qwerty'
CREATE Procedure [dbo].[stpSaveStaff]
(
@ID int,
@FirstName varchar(100),
@MiddleName varchar(100),
@LastName varchar(100),
@AddressLine1 varchar(500),
@PIN varchar(20),
@Locality varchar(500),
@Ph1 varchar(20),
@Ph2 varchar(20),
--@EmploymentStartDate datetime,
--@EmploymentEndDate datetime,
@StaffPhoto varchar(500),
@OwnerID int,
@BonusAmount decimal(6,2),
@BonusDate datetime,
@Salary decimal(6,2),
@StartDate datetime,
--@EndDate datetime,
@UserName varchar(100),
@Password varchar(50),
@ActivationStartDate datetime,
@ActivationEndDate datetime,
@RoleId int
)
AS 
Begin

	IF @ActivationEndDate IS NULL 
			BEGIN
				SET @ActivationEndDate = '9999-12-31 00:00:00.000'
			END

			--IF @BonusAmount IS NOT NULL 
			--	BEGIN
			--		IF @BonusDate IS NULL
			--			BEGIN
			--				SET @BonusDate = GETDATE()
			--			END
			--	END

Begin Try
Begin Tran

	IF @ID IS NULL

	BEGIN  

		DECLARE @UserID int
		DECLARE @StaffID int

			

			Insert into [User] (UserName,IsConsumer,Password,ActivationStartDate,ActivationEndDate,RoleId)
            Values (@UserName,3,@Password,@ActivationStartDate,@ActivationEndDate,@RoleId)

			SET @UserID = @@IDENTITY


			Insert into Staff (FirstName,MiddleName,LastName,AddressLine1,PIN,Locality,Ph1,Ph2,UserID,EmploymentStartDate,EmploymentEndDate,StaffPhoto,OwnerID) 
            Values (@FirstName,@MiddleName,@LastName,@AddressLine1,@PIN,@Locality,@Ph1,@Ph2,@UserID,@ActivationStartDate, @ActivationEndDate,@StaffPhoto,@OwnerID)

			SET @StaffID = @@IDENTITY

		--IF @BonusAmount IS NOT NUll 
		--BEGIN

			
		--	Insert into StaffBonus (StaffID,BonusAmount,BonusDate) Values (@StaffID,@BonusAmount,@BonusDate)
		--END
		IF @Salary IS NOT NULL
		BEGIN
			Insert into StaffSalary (StaffID,Salary,StartDate,EndDate) Values (@StaffID,@Salary,GETDATE(),'9999-12-31 00:00:00.000')
		END
	END
ELSE
BEGIN

	

	UPDATE Staff
	SET FirstName = @FirstName,
		MiddleName = @MiddleName,
		LastName = @LastName,
		AddressLine1 = @AddressLine1,
		PIN = @PIN,
        Locality = @Locality,
		Ph1 = @Ph1,
		Ph2 = @Ph2,
		EmploymentStartDate = @ActivationStartDate,
        EmploymentEndDate = @ActivationEndDate,
		StaffPhoto = @StaffPhoto
	Where ID=@ID

		
	--IF @BonusAmount IS NOT NULL
	--BEGIN
	--	UPDATE StaffBonus
	--	SET BonusAmount = @BonusAmount,
	--	BonusDate =  @BonusDate
	--	Where StaffId=@ID
	--END

	IF @Salary IS NOT NULL
		BEGIN
			UPDATE StaffSalary
			SET Salary = @Salary,StartDate = GETDATE()
			Where StaffId=@ID

		END
	
END

Commit Tran
End Try
Begin Catch
Rollback Tran
Print error_message()
End Catch
End















GO
/****** Object:  StoredProcedure [dbo].[stpSaveUserPayment]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec stpSaveUserPayment '2018-12-01 00:00:00.000', 1027, 1007, 1, 11
CREATE procedure [dbo].[stpSaveUserPayment] 
( 
@RenewalDate datetime,
@PackageID int,
@ConsumerID int,
@AccountingYear int,
@UserID int,
@PaymentAmount decimal(6,2)

) 
AS 
BEGIN 
 BEGIN TRY
    BEGIN TRAN
BEGIN   
	 
	 DECLARE @PackageCost decimal(7,2)
	 DECLARE @PerdayCost decimal(5,2)
	 DECLARE @Increment int
	 DECLARE @NewRenewDate datetime

	 SELECT @PackageCost = (PackageCost - ISNULL(Discount,0)) FROM ConsumerPackage WHERE PackageID= @PackageID AND ConsumerId= @ConsumerID
	 SET @PerdayCost = @PackageCost/30

	 SET @Increment = CAST((@PaymentAmount/@PerdayCost) AS INT)
	 SET @NewRenewDate = DATEADD(DAY,@Increment,@RenewalDate)

	 --print 'INSERT'
	INSERT INTO UserPayment (RenewalDate,PackageID,ConsumerID,YearID,UserId,Amount,NextRenewDate)
	Values(@RenewalDate,@PackageID,@ConsumerID,@AccountingYear,@UserID,@PaymentAmount,@NewRenewDate)

	--SET @ID = @@IDENTITY
END

	COMMIT TRAN
 END TRY 

 BEGIN CATCH
	ROLLBACK TRAN
	SELECT ERROR_MESSAGE() AS ErrorMessage;  
 END CATCH
END






GO
/****** Object:  StoredProcedure [dbo].[stpValidateUser]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stpValidateUser]
(
	@UserName varchar(200),
	@Password varchar(50)
)
AS
BEGIN
	DECLARE @OwnerCnt int
	DECLARE @ConsumerCnt int
	DECLARE @UserCnt int

	SET @UserCnt = 0

	SELECT @UserCnt = COUNT(*) FROM [User] 
	WHERE LTRIM(RTRIM(UPPER(UserName))) = LTRIM(RTRIM(UPPER(@UserName))) 
	AND Password = @Password 
	AND ActivationStartDate <= GETDATE() 
	AND ActivationEndDate >= GETDATE()

	--SELECT @OwnerCnt = COUNT(*) FROM User WHERE LTRIM(RTRIM(UPPER(UserName))) = LTRIM(RTRIM(UPPER(@UserName))) AND Password = @Password
	print @UserCnt
	IF @UserCnt > 0
	BEGIN

		SELECT U.UserId,UserName,IsConsumer,Password,CONVERT(VARCHAR,ActivationStartDate,103) AS ActivationStartDate,
		CONVERT(VARCHAR,ActivationEndDate,103) AS ActivationEndDate, 
		  CASE U.RoleId
			WHEN 4 THEN C.ID
			WHEN 1 THEN S.ID
			WHEN 2 THEN O.ID
			WHEN 3 THEN  ST.ID
		END AS LoggedInUserId,
		  CASE U.RoleId
			WHEN 4 THEN ISNULL(C.FName,'') + ISNULL(C.LName,'') 
			WHEN 2 THEN CompanyName
			WHEN 1 THEN S.SuperAdminName
			WHEN 3 THEN ISNULL(ST.FirstName,'') + ISNULL(ST.LastName,'')
		END AS LoggedInUserName,RoleName,U.RoleId
		FROM [User] U
		 LEFT OUTER JOIN Owner O
		 ON U.UserId = O.UserId
		 LEFT OUTER JOIN Consumer C
		 ON U.UserId = C.UserId
		 LEFT OUTER JOIN SuperUser S
		 ON S.UserId = U.UserId
		 LEFT OUTER JOIN Staff ST
		 ON ST.UserId = U.UserId
		 INNER JOIN Roles R
		 ON U.RoleId = R.RoleId
		WHERE LTRIM(RTRIM(UPPER(UserName))) = LTRIM(RTRIM(UPPER(@UserName))) 
		AND Password = @Password 

	END

END 















GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllCatagoryMasterForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllCatagoryMasterForDrp
create procedure [dbo].[usp_GetAllCatagoryMasterForDrp]
AS
Begin
Select ID AS CatagoryID, Name AS CatagoryName
from CatagoryMaster
End















GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllChannelByDistributorIDForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllChannelByDistributorIDForDrp 1026,0,5     ,0.12
-- exec usp_GetAllChannelByDistributorIDForDrp 1015


CREATE procedure [dbo].[usp_GetAllChannelByDistributorIDForDrp]
(
	@DistributorID int,
	@fta int,
	@channelcategoryID int--,
	--@GSTPercentage decimal(6,2)
)
AS
Begin
IF @fta=0
BEGIN
   Declare @SCGST decimal(6,2) 
   Declare @CGST decimal(6,2) 
   Declare @GST decimal(6,2) 

   select @SCGST = ConfigValue from tblConfig Where KeyName = 'stgst'
   select @CGST = ConfigValue from tblConfig Where KeyName = 'cgst'

   set @GST = @SCGST+@CGST

	Select C.ID AS ChannelID, CM.ChannelName AS ChannelName,ISNULL(SellingPrice,0) as SellingPrice,   
	--(SellingPrice * @GSTPercentage) as GST,
	(SellingPrice * (@GST / 100)) as GST


	from Channel C
	INNER JOIN CHannelMaster CM
	ON C.ChannelMasterId =  CM.ID
	INNER JOIN CatagoryMaster CG
	ON CM.CategoryId = CG.ID
	WHERE (CM.isFreeToAir = 0 OR CM.isFreeToAir IS NULL)
	AND DistributorID = @DistributorID
	AND (CG.ID = @channelcategoryID OR @channelcategoryID IS NULL)
	ORDER BY ChannelName
END
ELSE IF @fta=1
BEGIN
	Select C.ID AS ChannelID, CM.ChannelName AS ChannelName,ISNULL(SellingPrice,0) as SellingPrice
	from Channel C
	INNER JOIN CHannelMaster CM
	ON C.ChannelMasterId =  CM.ID
	INNER JOIN CatagoryMaster CG
	ON CM.CategoryId = CG.ID
	WHERE CM.isFreeToAir = 1
	AND DistributorID = @DistributorID
	AND (CG.ID = @channelcategoryID OR @channelcategoryID IS NULL)
	ORDER BY ChannelName
END
End












GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllChannelForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllChannelForDrp
CREATE procedure [dbo].[usp_GetAllChannelForDrp]
AS
Begin
Select ID AS ChannelID, ChannelName, ISNULL(Cost,0) as SellingPrice
from ChannelMaster
ORDER BY ChannelName
End














GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllConsumerForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllConsumerForDrp 11
CREATE procedure [dbo].[usp_GetAllConsumerForDrp]
( 
@UserID int
) 
AS
Begin
Select ID AS ConsumerID, FName + ' ' + LName AS ConsumerName
--Select ID, CompanyName
from Consumer
Where UserID=@UserID
End






GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllDistributorMasterForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllDistributorMasterForDrp 1025
CREATE procedure [dbo].[usp_GetAllDistributorMasterForDrp]
( 
@UserID int
) 
AS
Begin

DECLARE @IsSuperAdmin int

	SET @IsSuperAdmin =  0
	SELECT @IsSuperAdmin = COUNT(*) FROM [User] WHERE UserId = @UserID AND ISConsumer = 0 


IF @IsSuperAdmin = 0
	BEGIN
Select ID AS DistributorMasterID, Name AS DistributorMasterName
from DistributorMaster
Where UserID=@UserID
END
ELSE
BEGIN
Select ID AS DistributorMasterID, Name AS DistributorMasterName
from DistributorMaster
END
End






GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllItemMasterForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec usp_GetAllItemMasterForDrp
create procedure [dbo].[usp_GetAllItemMasterForDrp]
AS
Begin
Select ID AS ItemID, ItemName
from ItemMaster
End












GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllOwnerForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllOwnerForDrp 11
CREATE procedure [dbo].[usp_GetAllOwnerForDrp]
( 
@UserID int
) 
AS
Begin

	DECLARE @IsSuperAdmin int

	SET @IsSuperAdmin =  0
	SELECT @IsSuperAdmin = COUNT(*) FROM [User] WHERE UserId = @UserID AND ISConsumer = 0 


	IF @IsSuperAdmin = 0
	BEGIN
	Select ID AS OwnerID, ProprietorFName1 + ' ' + ProprietorLName1 AS ProprietorName
	from Owner
	Where UserID=@UserID 
	END
	ELSE
	BEGIN
	Select ID AS OwnerID, ProprietorFName1 + ' ' + ProprietorLName1 AS ProprietorName
	from Owner
	END
End






GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllPackageForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllPackageForDrp --11
CREATE procedure [dbo].[usp_GetAllPackageForDrp]
--(
--@UserID int
--)
AS
Begin
Select ID AS PackageID, Name AS PackageName
from Package
--Where UserID =@UserID
End












GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllPackageOfConsumerForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllPackageOfConsumerForDrp
create procedure [dbo].[usp_GetAllPackageOfConsumerForDrp]
(
@ConsumerID int,
@UserID int
)
AS
Begin
Select ID AS PackageID, Name AS PackageName
--Select ID, CompanyName
from Package
Where UserID = @UserID
Union 
Select P.ID AS PackageID, Name AS PackageName 
from Package P
inner JOIN ConsumerPackage CP 
ON P.ID = CP.PackageID
AND CP.ConsumerID = @ConsumerID
End






GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllRolesForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllRolesForDrp
create procedure [dbo].[usp_GetAllRolesForDrp]
AS
Begin
Select RoleId , RoleName
--Select ID, CompanyName
from Roles
End















GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllUnitMasterForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllUnitMasterForDrp
CREATE procedure [dbo].[usp_GetAllUnitMasterForDrp]
AS
Begin
Select ID AS UnitID, UnitName
from UnitMaster
End












GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllYearMasterForDrp]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec usp_GetAllYearMasterForDrp
create procedure [dbo].[usp_GetAllYearMasterForDrp]
AS
Begin
Select YearID, AccountingYear
from YearMaster
End












GO
/****** Object:  UserDefinedFunction [dbo].[ufn_CSVToTable]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[ufn_CSVToTable] ( @StringInput VARCHAR(8000), @Delimiter nvarchar(1))
RETURNS @OutputTable TABLE ( [String] VARCHAR(10) )
AS
BEGIN

    DECLARE @String    VARCHAR(10)

    WHILE LEN(@StringInput) > 0
    BEGIN
        SET @String      = LEFT(@StringInput, 
                                ISNULL(NULLIF(CHARINDEX(@Delimiter, @StringInput) - 1, -1),
                                LEN(@StringInput)))
        SET @StringInput = SUBSTRING(@StringInput,
                                     ISNULL(NULLIF(CHARINDEX(@Delimiter, @StringInput), 0),
                                     LEN(@StringInput)) + 1, LEN(@StringInput))

        INSERT INTO @OutputTable ( [String] )
        VALUES ( @String )
    END

    RETURN
END

































GO
/****** Object:  Table [dbo].[CatagoryMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CatagoryMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatagoryMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Channel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Channel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActiveFrom] [datetime] NULL,
	[ActiveTo] [datetime] NULL,
	[Discount] [decimal](6, 2) NULL,
	[DiscountStartDate] [datetime] NULL,
	[DiscountEndDate] [datetime] NULL,
	[SellingPrice] [decimal](6, 2) NULL,
	[DistributorID] [int] NULL,
	[ChannelMasterId] [int] NULL,
 CONSTRAINT [PK_Channel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChannelMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChannelMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ChannelName] [varchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Cost] [decimal](6, 2) NOT NULL,
	[isFreeToAir] [bit] NULL,
	[ImagePath] [varchar](500) NULL,
	[IsHD] [bit] NULL,
 CONSTRAINT [PK_ChannelMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consumer]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consumer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](500) NOT NULL,
	[MName] [varchar](500) NULL,
	[LName] [varchar](500) NOT NULL,
	[Address] [varchar](900) NOT NULL,
	[Ph1] [varchar](20) NULL,
	[Ph2] [varchar](20) NULL,
	[Pin] [varchar](200) NULL,
	[IsActive] [bit] NULL,
	[OwnerID] [int] NULL,
	[ConnectivityFee] [decimal](6, 2) NULL,
	[UserId] [int] NULL,
	[SetTopBox] [varchar](200) NULL,
	[CreationDate] [datetime] NULL,
 CONSTRAINT [PK_Consumer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConsumerChannel]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumerChannel](
	[ConsumerID] [int] NOT NULL,
	[ChannelID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[PackageID] [int] NULL,
 CONSTRAINT [PK_ConsumerChannel] PRIMARY KEY CLUSTERED 
(
	[ConsumerID] ASC,
	[ChannelID] ASC,
	[StartDate] ASC,
	[EndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConsumerPackage]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsumerPackage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConsumerID] [int] NULL,
	[PackageID] [int] NULL,
	[Discount] [decimal](6, 2) NULL,
	[DiscountStartDate] [datetime] NULL,
	[DiscountEndDate] [datetime] NULL,
	[ActiveFrom] [datetime] NULL,
	[ActiveTo] [datetime] NULL,
	[PackageCost] [decimal](6, 2) NULL,
 CONSTRAINT [PK_ConsumerPackage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerPayment]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPayment](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[RenewStartDate] [datetime] NOT NULL,
	[RenewEndDate] [datetime] NOT NULL,
	[PackageCost] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_CustomerPayment] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistributorMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DistributorMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Address] [varchar](1000) NOT NULL,
	[Ph1] [varchar](20) NOT NULL,
	[Ph2] [varchar](20) NULL,
	[GSTIN] [varchar](30) NULL,
	[OwnerID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_DistributorMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemIn]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemIn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[Quantity] [decimal](6, 2) NULL,
	[TransactionDate] [datetime] NULL,
	[Comment] [varchar](1000) NULL,
	[YearID] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_ItemIn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](500) NOT NULL,
	[UnitID] [int] NOT NULL,
 CONSTRAINT [PK_ItemMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemOut]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemOut](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[Quantity] [decimal](6, 2) NULL,
	[TransactionDate] [datetime] NULL,
	[Comment] [varchar](1000) NULL,
	[YearID] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_ItemOut] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Owner](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
	[ProprietorFName1] [varchar](100) NOT NULL,
	[ProprietorMName1] [varchar](100) NULL,
	[ProprietorLName1] [varchar](100) NULL,
	[ProprietorFName2] [varchar](100) NULL,
	[ProprietorMName2] [varchar](100) NULL,
	[ProprietorLName2] [varchar](100) NULL,
	[AddressLine1] [varchar](500) NOT NULL,
	[PinCode] [varchar](20) NOT NULL,
	[Locality] [varchar](100) NULL,
	[GSTIN] [varchar](20) NULL,
	[Phone1] [varchar](20) NOT NULL,
	[Phone2] [varchar](20) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Package]    Script Date: 16-May-19 6:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Package](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OwnerID] [int] NULL,
	[Name] [varchar](100) NOT NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[Cost] [decimal](10, 2) NULL,
	[Discount] [decimal](10, 2) NULL,
	[DiscountStartDate] [datetime] NULL,
	[DiscountEndDate] [datetime] NULL,
	[DistributorID] [int] NULL,
	[ImagePath] [varchar](500) NULL,
	[UserID] [int] NULL,
	[GST] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PackageChannel]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageChannel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PackageID] [int] NOT NULL,
	[ChannelID] [int] NOT NULL,
	[ActiveFrom] [datetime] NULL,
	[ActiveTo] [datetime] NULL,
 CONSTRAINT [PK_PackageChannel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[AddressLine1] [varchar](500) NOT NULL,
	[PIN] [varchar](20) NOT NULL,
	[Locality] [varchar](500) NOT NULL,
	[Ph1] [varchar](20) NOT NULL,
	[Ph2] [varchar](20) NULL,
	[UserID] [int] NULL,
	[EmploymentStartDate] [datetime] NULL,
	[EmploymentEndDate] [datetime] NULL,
	[StaffPhoto] [varchar](500) NULL,
	[OwnerID] [int] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StaffBonus]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffBonus](
	[StaffID] [int] NOT NULL,
	[BonusAmount] [decimal](6, 2) NOT NULL,
	[BonusDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffSalary]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffSalary](
	[StaffID] [int] NOT NULL,
	[Salary] [decimal](10, 2) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuperUser]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SuperAdminName] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_SuperUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblConfig]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConfig](
	[KeyName] [varchar](20) NOT NULL,
	[ConfigValue] [int] NOT NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitMaster]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](500) NOT NULL,
 CONSTRAINT [PK_UnitMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[IsConsumer] [int] NULL,
	[Password] [varchar](50) NULL,
	[ActivationStartDate] [datetime] NOT NULL,
	[ActivationEndDate] [datetime] NOT NULL,
	[RoleId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPayment]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPayment](
	[RenewalDate] [datetime] NOT NULL,
	[PackageID] [int] NOT NULL,
	[ConsumerID] [int] NOT NULL,
	[YearID] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](6, 2) NULL,
	[NextRenewDate] [datetime] NULL,
 CONSTRAINT [PK_UserPayment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YearMaster]    Script Date: 16-May-19 6:07:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YearMaster](
	[YearID] [int] IDENTITY(1,1) NOT NULL,
	[AccountingYear] [varchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_YearMaster] PRIMARY KEY CLUSTERED 
(
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CatagoryMaster] ON 

INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (1, N'Hindi Entertainment')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (2, N'English Entertainment')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (3, N'Doordarshan')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (4, N'Hindi Movies')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (5, N'English Movies')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (6, N'Music')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (7, N'Hindi News')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (8, N'English News')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (9, N'Hindi Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (10, N'Bengali Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (11, N'Marathi Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (12, N'Gujarati Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (13, N'Tamil Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (14, N'Telugu Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (15, N'Kannada Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (16, N'Malayalam Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (17, N'Odia Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (18, N'Punjabi Regional')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (19, N'Sports')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (20, N'
Spiritual')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (21, N'Shopping')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (22, N'Others')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (23, N'Knowledge & Lifestyle')
INSERT [dbo].[CatagoryMaster] ([ID], [Name]) VALUES (24, N'Kids')
SET IDENTITY_INSERT [dbo].[CatagoryMaster] OFF
SET IDENTITY_INSERT [dbo].[Channel] ON 

INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1061, CAST(N'2019-04-25 00:00:00.000' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.30 AS Decimal(6, 2)), 1025, 8)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1062, CAST(N'2019-04-25 00:00:00.000' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 9)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1063, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 10)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1064, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 11)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1065, CAST(N'2019-04-25 00:00:00.000' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.00 AS Decimal(6, 2)), 1025, 12)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1066, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 13)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1067, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 14)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1068, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 15)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1069, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 16)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1070, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 17)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1071, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 18)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1072, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 19)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1073, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 22)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1074, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 24)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1075, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 25)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1076, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 26)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1077, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1029)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1078, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1030)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1079, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1031)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1080, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1032)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1081, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1033)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1082, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1034)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1083, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1035)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1084, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1036)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1085, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1037)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1086, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1038)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1087, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1039)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1088, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1040)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1089, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1041)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1090, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1042)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1091, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1043)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1092, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1044)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1093, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1045)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1094, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1046)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1095, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1047)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1096, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1048)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1097, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1049)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1098, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1050)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1099, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1051)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1100, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1052)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1101, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1053)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1102, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1054)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1103, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1055)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1104, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1056)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1105, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1057)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1106, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1058)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1107, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1059)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1108, CAST(N'2019-04-25 09:03:16.393' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1025, 1060)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1109, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 8)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1110, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 9)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1111, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 10)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1112, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 11)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1113, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 12)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1114, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 13)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1115, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 14)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1116, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 15)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1117, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 16)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1118, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 17)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1119, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 18)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1120, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 19)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1121, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 22)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1122, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 24)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1123, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 25)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1124, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 26)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1125, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1029)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1126, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1030)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1127, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1031)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1128, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1032)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1129, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1033)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1130, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1034)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1131, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1035)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1132, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1036)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1133, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1037)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1134, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1038)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1135, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1039)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1136, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1040)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1137, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1041)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1138, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1042)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1139, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1043)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1140, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1044)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1141, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1045)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1142, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1046)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1143, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1047)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1144, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1048)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1145, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1049)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1146, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1050)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1147, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1051)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1148, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1052)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1149, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1053)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1150, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1054)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1151, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1055)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1152, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1056)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1153, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1057)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1154, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1058)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1155, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1059)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1156, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)), 1026, 1060)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1157, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1061)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1158, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1062)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1159, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1063)
GO
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1160, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1064)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1161, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1065)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1162, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1066)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1163, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1067)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1164, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1061)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1165, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1061)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1166, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1062)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1167, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1063)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1168, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1067)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1169, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1025, 1068)
INSERT [dbo].[Channel] ([ID], [ActiveFrom], [ActiveTo], [Discount], [DiscountStartDate], [DiscountEndDate], [SellingPrice], [DistributorID], [ChannelMasterId]) VALUES (1170, CAST(N'2019-04-25 09:05:46.020' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, 1026, 1070)
SET IDENTITY_INSERT [dbo].[Channel] OFF
SET IDENTITY_INSERT [dbo].[ChannelMaster] ON 

INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (8, N'&TV HD', 1, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 1)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (9, N' Colors HD', 1, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 1)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (10, N'AXN HD', 2, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 1)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (11, N'STAR World HD', 2, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 1)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (12, N'DD Bangla', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (13, N'DD Bharti', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (14, N'B4U Movies', 4, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (15, N'Movies OK', 4, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (16, N'HBO', 5, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (17, N'STAR Movies', 5, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (18, N'B4U Music', 6, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (19, N'MTV', 6, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (22, N'Aaj Tak', 7, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (24, N'Zee News', 7, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (25, N'BBC World', 8, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (26, N'CNN', 8, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1029, N'Bhojpuri Cinema', 9, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1030, N'First India Rajasthan', 9, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1031, N'ABP Ananda', 10, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1032, N'Colors Bangla', 10, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1033, N'Colors Marathi', 11, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1034, N'Jai Maharashtra', 11, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1035, N'Colors Gujarati', 12, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1036, N'News18 Gujarati', 12, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1037, N'Colors Tamil', 13, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1038, N'Discovery Tamil', 13, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1039, N'ETV Telugu', 14, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1040, N'Raj News Telugu', 14, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1041, N'Colors Kannada', 15, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1042, N'NewsX Kannada', 15, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1043, N'Asianet Plus', 16, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1044, N'Raj Musix Malayalam', 16, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1045, N'Colors Oriya', 17, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1046, N'News18 Odia', 17, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1047, N'India News Punjab', 18, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1048, N'PTC Punjabi', 18, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1049, N'SONY ESPN', 19, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1050, N'Star Sports 1', 19, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1051, N'Aastha', 20, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1052, N'Sanskar', 20, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1053, N'Home Shop TV18', 21, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1054, N'NT1', 21, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1055, N'Nepal 1', 22, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1056, N'North East Live', 22, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1057, N'Discovery', 23, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1058, N'National Geographic', 23, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1059, N'Cartoon Network', 24, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1060, N'Pogo', 24, CAST(12.50 AS Decimal(6, 2)), NULL, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1061, N'DD1', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 1)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1062, N'DD-Bengali', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1063, N'DD-Asamese', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1064, N'DD-Kashir', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1065, N'DD News', 3, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1066, N'Rupashi Bangla', 10, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1067, N'CTVN', 10, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1068, N'CN-AKD', 10, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
INSERT [dbo].[ChannelMaster] ([ID], [ChannelName], [CategoryId], [Cost], [isFreeToAir], [ImagePath], [IsHD]) VALUES (1070, N'Akash Bangla', 10, CAST(0.00 AS Decimal(6, 2)), 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[ChannelMaster] OFF
SET IDENTITY_INSERT [dbo].[Consumer] ON 

INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (3, N'Gunjan', NULL, N'Nandi', N'Ichapur', N'982154752', NULL, N'7431242', 0, 1018, NULL, 1028, NULL, CAST(N'2019-01-20 17:36:36.573' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1003, N'Gunjan', NULL, N'Nandi', N'Barasath', N'32248412', NULL, N'743214', 0, 1018, NULL, 1028, NULL, CAST(N'2019-01-30 17:36:36.573' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1004, N'Sapan', NULL, N'Saha', N'Ichapur', N'990326588', NULL, N'743144', 0, 1018, NULL, 1028, NULL, CAST(N'2019-01-20 17:36:36.573' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1005, N'Asis', NULL, N'Paul', N'Palta', N'325498564', NULL, N'6546654', 1, 1018, NULL, 1028, N'9079799667678', CAST(N'2019-04-30 17:36:36.573' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1006, N'Ashit', NULL, N'Dhar', N'Kolkata', N'845656456', NULL, N'743165', 1, 1018, NULL, 1028, N'AS5463476', CAST(N'2019-04-05 17:36:36.573' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1007, N'Paban', NULL, N'Bansal', N'Kolkata', N'564654564', NULL, N'56565656', 1, 1018, NULL, 1028, N'867887gh6776', CAST(N'2019-05-03 09:56:53.580' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1008, N'Parul', NULL, N'Sen', N'Kolkata', N'9903263882', NULL, N'5946546', 1, 1018, NULL, 1028, N'45665465654', CAST(N'2019-05-03 10:00:39.070' AS DateTime))
INSERT [dbo].[Consumer] ([ID], [FName], [MName], [LName], [Address], [Ph1], [Ph2], [Pin], [IsActive], [OwnerID], [ConnectivityFee], [UserId], [SetTopBox], [CreationDate]) VALUES (1009, N'Palash', NULL, N'Das', N'Kol', N'8240513370', NULL, N'654654', 1, 1018, NULL, 1028, N'654654645', CAST(N'2019-05-03 10:08:40.703' AS DateTime))
SET IDENTITY_INSERT [dbo].[Consumer] OFF
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1109, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1110, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1111, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1113, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1115, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1117, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (3, 1119, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 3028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1003, 1110, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime), 4028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1003, 1111, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime), 4028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1003, 1113, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime), 4028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1003, 1114, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime), 4028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1003, 1116, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-09 00:00:00.000' AS DateTime), 4028)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1004, 1064, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 4027)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1004, 1066, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 4027)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1004, 1068, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 4027)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1109, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1111, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1115, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1119, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1121, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1125, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1135, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1005, 1155, CAST(N'2019-05-22 00:00:00.000' AS DateTime), CAST(N'2019-05-21 00:00:00.000' AS DateTime), 4034)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1006, 1081, CAST(N'2019-05-08 00:00:00.000' AS DateTime), CAST(N'2019-05-29 00:00:00.000' AS DateTime), 4029)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1006, 1082, CAST(N'2019-05-08 00:00:00.000' AS DateTime), CAST(N'2019-05-29 00:00:00.000' AS DateTime), 4029)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1009, 1111, CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-05-23 00:00:00.000' AS DateTime), 4033)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1009, 1115, CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-05-23 00:00:00.000' AS DateTime), 4033)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1009, 1121, CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-05-23 00:00:00.000' AS DateTime), 4033)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1009, 1123, CAST(N'2019-05-09 00:00:00.000' AS DateTime), CAST(N'2019-05-23 00:00:00.000' AS DateTime), 4033)
INSERT [dbo].[ConsumerChannel] ([ConsumerID], [ChannelID], [StartDate], [EndDate], [PackageID]) VALUES (1009, 1147, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), 4031)
SET IDENTITY_INSERT [dbo].[ConsumerPackage] ON 

INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (4005, 3, 3027, NULL, NULL, NULL, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), CAST(1200.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (4006, 3, 3028, NULL, NULL, NULL, NULL, NULL, CAST(87.50 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (5005, 1004, 3027, NULL, NULL, NULL, CAST(N'2019-04-04 00:00:00.000' AS DateTime), CAST(N'2019-04-24 00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (5006, 1004, 4027, NULL, NULL, NULL, NULL, NULL, CAST(37.50 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (5007, 1003, 4028, NULL, NULL, NULL, NULL, NULL, CAST(62.50 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (5008, 1007, 3027, NULL, NULL, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(500.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (5009, 1008, 3027, NULL, NULL, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(555.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (6008, 1008, 3027, NULL, NULL, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-29 00:00:00.000' AS DateTime), CAST(500.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (6009, 1009, 3027, NULL, NULL, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(500.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (6010, 1006, 3027, NULL, NULL, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(500.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (7008, 1006, 4029, NULL, NULL, NULL, NULL, NULL, CAST(25.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (7009, 1009, 4031, NULL, NULL, NULL, NULL, NULL, CAST(12.50 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (7010, 1009, 4033, NULL, NULL, NULL, NULL, NULL, CAST(50.00 AS Decimal(6, 2)))
INSERT [dbo].[ConsumerPackage] ([ID], [ConsumerID], [PackageID], [Discount], [DiscountStartDate], [DiscountEndDate], [ActiveFrom], [ActiveTo], [PackageCost]) VALUES (7011, 1005, 4034, NULL, NULL, NULL, NULL, NULL, CAST(100.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[ConsumerPackage] OFF
SET IDENTITY_INSERT [dbo].[DistributorMaster] ON 

INSERT [dbo].[DistributorMaster] ([ID], [Name], [Address], [Ph1], [Ph2], [GSTIN], [OwnerID], [StartDate], [EndDate], [UserId]) VALUES (1025, N'Citi', N'Maniktala', N'033-89256', NULL, N'26262622', 1018, CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'9999-12-12 00:00:00.000' AS DateTime), 1028)
INSERT [dbo].[DistributorMaster] ([ID], [Name], [Address], [Ph1], [Ph2], [GSTIN], [OwnerID], [StartDate], [EndDate], [UserId]) VALUES (1026, N'GTPL', N'Golaghata', N'03389657842', NULL, N'56651561', 1018, CAST(N'2019-04-02 00:00:00.000' AS DateTime), CAST(N'2020-04-30 00:00:00.000' AS DateTime), 1028)
SET IDENTITY_INSERT [dbo].[DistributorMaster] OFF
SET IDENTITY_INSERT [dbo].[ItemIn] ON 

INSERT [dbo].[ItemIn] ([ID], [ItemID], [Quantity], [TransactionDate], [Comment], [YearID], [UserId]) VALUES (2007, 1, CAST(67.00 AS Decimal(6, 2)), CAST(N'2019-04-04 00:00:00.000' AS DateTime), N'ok', 1, NULL)
SET IDENTITY_INSERT [dbo].[ItemIn] OFF
SET IDENTITY_INSERT [dbo].[ItemMaster] ON 

INSERT [dbo].[ItemMaster] ([ID], [ItemName], [UnitID]) VALUES (1, N'Cable Box', 1)
INSERT [dbo].[ItemMaster] ([ID], [ItemName], [UnitID]) VALUES (2, N'Pin', 2)
INSERT [dbo].[ItemMaster] ([ID], [ItemName], [UnitID]) VALUES (3, N'Switch', 2)
INSERT [dbo].[ItemMaster] ([ID], [ItemName], [UnitID]) VALUES (4, N'Wire', 1)
INSERT [dbo].[ItemMaster] ([ID], [ItemName], [UnitID]) VALUES (5, N'Clip', 3)
SET IDENTITY_INSERT [dbo].[ItemMaster] OFF
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (1018, N'Sky Cable Pvt Ltd.', N'Benu', NULL, N'Das', NULL, NULL, NULL, N'E32/1 Purbayan,Kolkata:700110', N'700110', N'Purbayan', N'8928900484', N'9830821745', NULL, 1028)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (1019, N'S.Sarkar LTD', N'Susil', NULL, N'Sarkar', NULL, NULL, NULL, N'Shyamnagar, Near Station', N'743142', N'Kolkata', N'1259874', N'998541556', NULL, 1029)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (1020, N'Dey Com', N'Nirman', NULL, N'Dey', NULL, NULL, NULL, N'Ichapur', N'743144', N'Kolkataa', N'654654', N'657546654', NULL, 2031)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2020, N'skycable comm', N'Suman', NULL, N'Kar', NULL, NULL, NULL, N'KOL', N'7868678', N'kol', N'765756757', N'6756756765', NULL, 3031)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2021, N'skycable', N'SomDas', NULL, N'Das', NULL, NULL, NULL, N'kol', N'654654645', N'kol', N'654645', N'6546545', NULL, 3032)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2022, N'tm com', N'Tapan', NULL, N'Manna', NULL, NULL, NULL, N'Pinkal', N'743145', N'Garuliya', N'4566878768', N'9903788787', NULL, 3033)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2023, N'qwq', N'qw', NULL, N'qw', NULL, NULL, NULL, N'qwqwqw', N'23232', N'2323', N'23232', N'322323232323', NULL, 3034)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2024, N'a', N'a', NULL, N'a', NULL, NULL, NULL, N'a', N'34', N'4343', N'343', N'3434', NULL, 3035)
INSERT [dbo].[Owner] ([ID], [CompanyName], [ProprietorFName1], [ProprietorMName1], [ProprietorLName1], [ProprietorFName2], [ProprietorMName2], [ProprietorLName2], [AddressLine1], [PinCode], [Locality], [GSTIN], [Phone1], [Phone2], [UserId]) VALUES (2025, N'1', N'1', NULL, N'1', NULL, NULL, NULL, N'1', N'1', N'1', N'1', N'1', NULL, 3036)
SET IDENTITY_INSERT [dbo].[Owner] OFF
SET IDENTITY_INSERT [dbo].[Package] ON 

INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (3027, NULL, N'Sawan Dhamaka', CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(62.50 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), NULL, NULL, 1025, NULL, 1028, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (3028, NULL, N'For Gunjan Nandi', CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), CAST(87.50 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), NULL, NULL, 1026, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4027, NULL, N'Sapan Saha Like', CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(37.50 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), NULL, NULL, 1025, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4028, NULL, N'fgfgfg', CAST(N'2019-04-04 00:00:00.000' AS DateTime), CAST(N'2019-04-02 00:00:00.000' AS DateTime), CAST(62.50 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), NULL, NULL, 1026, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4029, NULL, N'ADash/Like', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(25.00 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), NULL, NULL, 1025, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4030, NULL, N'Monsun Aoo', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL, 1026, NULL, 1028, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4031, NULL, N'custom-palash', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(12.50 AS Decimal(10, 2)), NULL, NULL, NULL, 1026, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4032, NULL, N'Durga Puja', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL, 1026, NULL, 1028, CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4033, NULL, N'PalashDas Durga puja', CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-30 00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(10, 2)), NULL, NULL, NULL, 1026, NULL, NULL, NULL)
INSERT [dbo].[Package] ([ID], [OwnerID], [Name], [ValidFrom], [ValidTo], [Cost], [Discount], [DiscountStartDate], [DiscountEndDate], [DistributorID], [ImagePath], [UserID], [GST]) VALUES (4034, NULL, N'AsisPaul  Diwali', CAST(N'2019-05-10 00:00:00.000' AS DateTime), CAST(N'2019-05-15 00:00:00.000' AS DateTime), CAST(100.00 AS Decimal(10, 2)), NULL, NULL, NULL, 1026, NULL, NULL, CAST(12.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Package] OFF
SET IDENTITY_INSERT [dbo].[PackageChannel] ON 

INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6046, 3027, 1061, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6047, 3027, 1065, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6048, 3027, 1066, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6049, 3027, 1068, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6050, 3027, 1070, CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-01 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6051, 4030, 1147, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6052, 4030, 1139, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6053, 4030, 1115, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6054, 4030, 1125, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6055, 4032, 1121, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6056, 4032, 1147, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6057, 4032, 1115, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
INSERT [dbo].[PackageChannel] ([ID], [PackageID], [ChannelID], [ActiveFrom], [ActiveTo]) VALUES (6058, 4032, 1125, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PackageChannel] OFF
INSERT [dbo].[Roles] ([RoleId], [RoleName], [isActive]) VALUES (1, N'SuperAdmin', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [isActive]) VALUES (2, N'Admin', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [isActive]) VALUES (3, N'User', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [isActive]) VALUES (4, N'Consumer', 1)
INSERT [dbo].[StaffBonus] ([StaffID], [BonusAmount], [BonusDate]) VALUES (1, CAST(500.00 AS Decimal(6, 2)), CAST(N'2018-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[StaffSalary] ([StaffID], [Salary], [StartDate], [EndDate]) VALUES (1, CAST(11000.00 AS Decimal(10, 2)), CAST(N'2018-12-01 00:00:00.000' AS DateTime), CAST(N'2018-12-11 00:00:00.000' AS DateTime))
INSERT [dbo].[StaffSalary] ([StaffID], [Salary], [StartDate], [EndDate]) VALUES (3, CAST(4500.00 AS Decimal(10, 2)), CAST(N'2018-12-15 22:30:40.850' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime))
INSERT [dbo].[StaffSalary] ([StaffID], [Salary], [StartDate], [EndDate]) VALUES (4, CAST(7800.00 AS Decimal(10, 2)), CAST(N'2018-12-15 22:32:42.853' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime))
INSERT [dbo].[StaffSalary] ([StaffID], [Salary], [StartDate], [EndDate]) VALUES (5, CAST(7856.00 AS Decimal(10, 2)), CAST(N'2018-12-15 22:50:20.987' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SuperUser] ON 

INSERT [dbo].[SuperUser] ([Id], [SuperAdminName], [UserId]) VALUES (2, N'Super Admin', 1027)
SET IDENTITY_INSERT [dbo].[SuperUser] OFF
INSERT [dbo].[tblConfig] ([KeyName], [ConfigValue], [IsActive]) VALUES (N'stgst', 9, 1)
INSERT [dbo].[tblConfig] ([KeyName], [ConfigValue], [IsActive]) VALUES (N'cgst', 9, 1)
SET IDENTITY_INSERT [dbo].[UnitMaster] ON 

INSERT [dbo].[UnitMaster] ([ID], [UnitName]) VALUES (1, N'Metre     ')
INSERT [dbo].[UnitMaster] ([ID], [UnitName]) VALUES (2, N'Piece     ')
INSERT [dbo].[UnitMaster] ([ID], [UnitName]) VALUES (3, N'Dozen     ')
SET IDENTITY_INSERT [dbo].[UnitMaster] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1027, N'sa', 0, N'12345', CAST(N'2018-01-01 00:00:00.000' AS DateTime), CAST(N'9999-12-31 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1028, N'skycable', 3, N'12345', CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2020-03-19 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1029, N'ss', 3, N'12345', CAST(N'2019-04-01 00:00:00.000' AS DateTime), CAST(N'2019-04-30 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1030, NULL, 3, NULL, CAST(N'2019-04-03 00:00:00.000' AS DateTime), CAST(N'2019-04-29 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1031, NULL, 3, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1032, NULL, 3, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), 2)
INSERT [dbo].[User] ([UserId], [UserName], [IsConsumer], [Password], [ActivationStartDate], [ActivationEndDate], [RoleId]) VALUES (1033, NULL, 3, NULL, CAST(N'2019-05-01 00:00:00.000' AS DateTime), CAST(N'2019-05-31 00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserPayment] ON 

INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-04-01 00:00:00.000' AS DateTime), 3027, 3, 1, 1028, 12, CAST(100.00 AS Decimal(6, 2)), CAST(N'2019-06-06 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-01 00:00:00.000' AS DateTime), 3028, 1005, 1, 1028, 13, CAST(120.00 AS Decimal(6, 2)), CAST(N'2019-05-12 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-01 00:00:00.000' AS DateTime), 3027, 1005, 1, 1028, 1013, CAST(785.00 AS Decimal(6, 2)), CAST(N'2019-05-10 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-01 00:00:00.000' AS DateTime), 4027, 1009, 1, 1028, 1014, CAST(45.00 AS Decimal(6, 2)), CAST(N'2019-05-11 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-01 00:00:00.000' AS DateTime), 3028, 1005, 1, 1028, 1015, CAST(123.00 AS Decimal(6, 2)), CAST(N'2019-05-13 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-03 00:00:00.000' AS DateTime), 4029, 1006, 1, 1028, 1016, CAST(45.00 AS Decimal(6, 2)), CAST(N'2019-05-14 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-10 00:00:00.000' AS DateTime), 3027, 1009, 1, 1028, 1018, CAST(452.00 AS Decimal(6, 2)), CAST(N'2019-05-06 00:00:00.000' AS DateTime))
INSERT [dbo].[UserPayment] ([RenewalDate], [PackageID], [ConsumerID], [YearID], [UserId], [ID], [Amount], [NextRenewDate]) VALUES (CAST(N'2019-05-12 00:00:00.000' AS DateTime), 4034, 1005, 1, 1028, 1019, CAST(1000.00 AS Decimal(6, 2)), CAST(N'2020-03-07 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserPayment] OFF
SET IDENTITY_INSERT [dbo].[YearMaster] ON 

INSERT [dbo].[YearMaster] ([YearID], [AccountingYear], [StartDate], [EndDate]) VALUES (1, N'2018 - 2019', CAST(N'2018-04-01 00:00:00.000' AS DateTime), CAST(N'2019-03-31 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[YearMaster] OFF
ALTER TABLE [dbo].[Channel]  WITH CHECK ADD  CONSTRAINT [FK_Channel_Channel] FOREIGN KEY([ID])
REFERENCES [dbo].[Channel] ([ID])
GO
ALTER TABLE [dbo].[Channel] CHECK CONSTRAINT [FK_Channel_Channel]
GO
ALTER TABLE [dbo].[Channel]  WITH CHECK ADD  CONSTRAINT [FK_Channel_ChannelMaster] FOREIGN KEY([ChannelMasterId])
REFERENCES [dbo].[ChannelMaster] ([ID])
GO
ALTER TABLE [dbo].[Channel] CHECK CONSTRAINT [FK_Channel_ChannelMaster]
GO
ALTER TABLE [dbo].[Channel]  WITH CHECK ADD  CONSTRAINT [FK_Channel_DistributorMaster] FOREIGN KEY([DistributorID])
REFERENCES [dbo].[DistributorMaster] ([ID])
GO
ALTER TABLE [dbo].[Channel] CHECK CONSTRAINT [FK_Channel_DistributorMaster]
GO
ALTER TABLE [dbo].[ChannelMaster]  WITH CHECK ADD  CONSTRAINT [FK_ChannelMaster_CatagoryMaster] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CatagoryMaster] ([ID])
GO
ALTER TABLE [dbo].[ChannelMaster] CHECK CONSTRAINT [FK_ChannelMaster_CatagoryMaster]
GO
ALTER TABLE [dbo].[Consumer]  WITH CHECK ADD  CONSTRAINT [FK_Consumer_Owner] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Owner] ([ID])
GO
ALTER TABLE [dbo].[Consumer] CHECK CONSTRAINT [FK_Consumer_Owner]
GO
ALTER TABLE [dbo].[ConsumerPackage]  WITH CHECK ADD  CONSTRAINT [FK_ConsumerPackage_Consumer] FOREIGN KEY([ConsumerID])
REFERENCES [dbo].[Consumer] ([ID])
GO
ALTER TABLE [dbo].[ConsumerPackage] CHECK CONSTRAINT [FK_ConsumerPackage_Consumer]
GO
ALTER TABLE [dbo].[ConsumerPackage]  WITH CHECK ADD  CONSTRAINT [FK_ConsumerPackage_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([ID])
GO
ALTER TABLE [dbo].[ConsumerPackage] CHECK CONSTRAINT [FK_ConsumerPackage_Package]
GO
ALTER TABLE [dbo].[DistributorMaster]  WITH CHECK ADD  CONSTRAINT [FK_DistributorMaster_Owner] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Owner] ([ID])
GO
ALTER TABLE [dbo].[DistributorMaster] CHECK CONSTRAINT [FK_DistributorMaster_Owner]
GO
ALTER TABLE [dbo].[ItemIn]  WITH CHECK ADD  CONSTRAINT [FK_ItemIn_ItemMaster] FOREIGN KEY([ItemID])
REFERENCES [dbo].[ItemMaster] ([ID])
GO
ALTER TABLE [dbo].[ItemIn] CHECK CONSTRAINT [FK_ItemIn_ItemMaster]
GO
ALTER TABLE [dbo].[ItemIn]  WITH CHECK ADD  CONSTRAINT [FK_ItemIn_YearMaster] FOREIGN KEY([YearID])
REFERENCES [dbo].[YearMaster] ([YearID])
GO
ALTER TABLE [dbo].[ItemIn] CHECK CONSTRAINT [FK_ItemIn_YearMaster]
GO
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD  CONSTRAINT [FK_ItemMaster_UnitMaster] FOREIGN KEY([UnitID])
REFERENCES [dbo].[UnitMaster] ([ID])
GO
ALTER TABLE [dbo].[ItemMaster] CHECK CONSTRAINT [FK_ItemMaster_UnitMaster]
GO
ALTER TABLE [dbo].[ItemOut]  WITH CHECK ADD  CONSTRAINT [FK_ItemOut_ItemMaster] FOREIGN KEY([ItemID])
REFERENCES [dbo].[ItemMaster] ([ID])
GO
ALTER TABLE [dbo].[ItemOut] CHECK CONSTRAINT [FK_ItemOut_ItemMaster]
GO
ALTER TABLE [dbo].[ItemOut]  WITH CHECK ADD  CONSTRAINT [FK_ItemOut_YearMaster] FOREIGN KEY([YearID])
REFERENCES [dbo].[YearMaster] ([YearID])
GO
ALTER TABLE [dbo].[ItemOut] CHECK CONSTRAINT [FK_ItemOut_YearMaster]
GO
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_DistributorMaster] FOREIGN KEY([DistributorID])
REFERENCES [dbo].[DistributorMaster] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_DistributorMaster]
GO
ALTER TABLE [dbo].[Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_Owner] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Owner] ([ID])
GO
ALTER TABLE [dbo].[Package] CHECK CONSTRAINT [FK_Package_Owner]
GO
ALTER TABLE [dbo].[PackageChannel]  WITH CHECK ADD  CONSTRAINT [FK_PackageChannel_Channel] FOREIGN KEY([ChannelID])
REFERENCES [dbo].[Channel] ([ID])
GO
ALTER TABLE [dbo].[PackageChannel] CHECK CONSTRAINT [FK_PackageChannel_Channel]
GO
ALTER TABLE [dbo].[PackageChannel]  WITH CHECK ADD  CONSTRAINT [FK_PackageChannel_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([ID])
GO
ALTER TABLE [dbo].[PackageChannel] CHECK CONSTRAINT [FK_PackageChannel_Package]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Owner] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[Owner] ([ID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Owner]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[UserPayment]  WITH CHECK ADD  CONSTRAINT [FK_UserPayment_YearMaster] FOREIGN KEY([YearID])
REFERENCES [dbo].[YearMaster] ([YearID])
GO
ALTER TABLE [dbo].[UserPayment] CHECK CONSTRAINT [FK_UserPayment_YearMaster]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Super Admin
1 - Owner /Admin
2 - Consumer
3 - Staff' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsConsumer'
GO
