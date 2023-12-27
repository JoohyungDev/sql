select first_half.flavor from first_half, icecream_info
where first_half.flavor = icecream_info.flavor
and ingredient_type = 'fruit_based'
and total_order >= 3000
order by total_order desc