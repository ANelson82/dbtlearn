select 
    f.listing_id, 
    f.review_date,
    l.created_at
from {{ ref('fct_reviews') }} f
join {{ ref('dim_listings_cleansed') }} l on f.listing_id = l.listing_id
where l.created_at > f.review_date