CREATE MATERIALIZED VIEW weekly_likes AS ( 
	SELECT
		date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS WEEK,
		COUNT(posts.id) AS num_likes_for_posts,
		COUNT(comments.id) AS num_likes_for_comments
	FROM likes
	LEFT JOIN posts ON posts.id = likes.post_id
	LEFT JOIN comments ON comments.id = likes.comment_id
	GROUP BY week
	ORDER BY week
) WITH DATA;
