USE [Pubs]
GO

/****** Object:  StoredProcedure [dbo].[reptq2]    Script Date: 09-Nov-25 10:57:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[reptq2] AS
select
	case when grouping(type) = 1 then 'ALL' else type end as type,
	case when grouping(pub_id) = 1 then 'ALL' else pub_id end as pub_id,
	avg(ytd_sales) as avg_ytd_sales
from titles
where pub_id is NOT NULL
group by pub_id, type with rollup

GO

