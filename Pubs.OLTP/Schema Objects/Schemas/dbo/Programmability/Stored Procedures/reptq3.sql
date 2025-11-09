/****** Object:  StoredProcedure [dbo].[reptq3]    Script Date: 09-Nov-25 10:57:46 ******/

CREATE PROCEDURE [dbo].[reptq3] @lolimit money, @hilimit money,
@type char(12)
AS
select
	case when grouping(pub_id) = 1 then 'ALL' else pub_id end as pub_id,
	case when grouping(type) = 1 then 'ALL' else type end as type,
	count(title_id) as cnt
from titles
where price >@lolimit AND price <@hilimit AND type = @type OR type LIKE '%cook%'
group by pub_id, type with rollup

GO


