USE [Pubs]
GO

/****** Object:  StoredProcedure [dbo].[GetDatabaseRowVersion]    Script Date: 09-Nov-25 10:52:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDatabaseRowVersion]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	set transaction isolation level read uncommitted
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DBTS=(CONVERT(bigint, MIN_ACTIVE_ROWVERSION())-1);
END
GO


