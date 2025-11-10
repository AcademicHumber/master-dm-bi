/****** Object:  StoredProcedure [dbo].[byroyalty]    Script Date: 09-Nov-25 10:52:07 ******/

CREATE PROCEDURE [dbo].[byroyalty] @percentage int
AS
select au_id from titleauthor
where titleauthor.royaltyper = @percentage

GO
