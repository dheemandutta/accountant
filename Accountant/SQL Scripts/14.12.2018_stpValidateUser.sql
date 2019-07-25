ALTER PROCEDURE stpValidateUser
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
		  CASE IsConsumer
			WHEN 2 THEN C.ID
			WHEN 0 THEN S.ID
			WHEN 1 THEN O.ID
		END AS LoggedInUserId,
		  CASE IsConsumer
			WHEN 2 THEN ISNULL(C.FName,'') + ISNULL(C.LName,'') 
			WHEN 1 THEN CompanyName
			WHEN 0 THEN S.SuperAdminName
		END AS LoggedInUserName
									
		FROM [User] U
		 LEFT OUTER JOIN Owner O
		 ON U.UserId = O.UserId
		 LEFT OUTER JOIN Consumer C
		 ON U.UserId = C.UserId
		 LEFT OUTER JOIN SuperUser S
		 ON S.UserId = U.UserId
		WHERE LTRIM(RTRIM(UPPER(UserName))) = LTRIM(RTRIM(UPPER(@UserName))) 
		AND Password = @Password 

	END

END 