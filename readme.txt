Task (1)-
Solution - 
	

	1) select gp.product_name, gp.product_url, gp.product_price_min, gp.product_short_description, gp.product_img_url from grommet_products gp left join grommet_product_categories gpc on gp.id = gpc.product_id left join grommet_gifts_categories ggc on ggc.id = gpc.product_category_id where gc.sub_category = "Jewelry" AND gp.is_sold_out IS FALSE;


	2) select gp.product_name, gp.product_url, gp.product_price_min, gp.product_short_description, gp.product_img_url from grommet_products gp left join grommet_product_to_keyword gptk on gp.id = gptk.product_id left join grommet_product_keywords gpk on gpk.id = gptk.keyword_id where gpk.keyword = "Hair accessor" AND gp.is_sold_out IS FALSE; 


	3) select gp.product_name, gp.product_url, gp.product_price_min, gp.product_short_description, gp.product_img_url from grommet_products gp left join grommet_product_categories gpc on gp.id = gpc.product_id left join grommet_gifts_categories ggc on ggc.id = gpc.product_category_id left join grommet_product_to_keyword gptk on gp.id = gptk.product_id left join grommet_product_keywords gpk on gpk.id = gptk.keyword_id where ggc.sub_category = "Beauty & Personal Care" OR gpk.keyword = "Aromatherapy" OR  ggc.sub_category = "Skincare" AND gp.is_sold_out IS FALSE;


Task (2)-
Solution -
	
	a) Firstly do "bundle install" in root of this folder.
	b) Than run "ruby web_scraping.rb" in root of this folder.


Task (3)-
Solution -
	
	a) Firstly do "bundle install" in root of this folder.
	b) Than run "ruby pdf_scraping.rb" in root of this folder.