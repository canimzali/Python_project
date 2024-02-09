--2. Kaç farklý müþterinin alýþveriþ yaptýðýný gösterecek sorguyu yazýnýz.
SELECT 
     COUNT(DISTINCT(master_id)) Toplam_kiþi_sayýsý 


FROM flo_data_20K

--3. Toplam yapýlan alýþveriþ sayýsý ve ciroyu getirecek sorguyu yazýnýz.
SELECT 

     SUM(order_num_total_ever_online + order_num_total_ever_offline) AS TOPLAM_SIPARIS_SAYISI,
	 ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online), 2) AS TOPLAM_CIRO

FROM flo_data_20K    

--4. Alýþveriþ baþýna ortalama ciroyu getirecek sorguyu yazýnýz
SELECT 
      ROUND((SUM(customer_value_total_ever_offline + customer_value_total_ever_online) / SUM(order_num_total_ever_online + order_num_total_ever_offline)), 2) AS SIPARIS_ORT_CIRO

FROM flo_data_20K


--5.En son alýþveriþ yapýlan kanal (last_order_channel) üzerinden yapýlan alýþveriþlerin toplam ciro ve alýþveriþ sayýlarýný getirecek sorguyu yazýnýz.

SELECT
	last_order_channel AS SON_ALISVERIS_KANALI,
	SUM(customer_value_total_ever_offline + customer_value_total_ever_online) AS TOPLAM_CIRO,
	SUM(order_num_total_ever_online + order_num_total_ever_offline) AS TOPLAM_SIPARIS_SAYISI
FROM flo_data_20K
GROUP BY last_order_channel


--6.Store type kýrýlýmýnda elde edilen toplam ciroyu getiren sorguyu yazýnýz.
SELECT 
	store_type MAGZA_TURU,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online), 2) Toplam_CIRO
FROM flo_data_20K
GROUP BY store_type

--7. Yýl kýrýlýmýnda alýþveriþ sayýlarýný getirecek sorguyu yazýnýz (Yýl olarak müþterinin ilk alýþveriþ tarihi (first_order_date) yýlýn bazýný alýnýz)
SELECT 
	YEAR(first_order_date) AS YIL,
	SUM(order_num_total_ever_online + order_num_total_ever_offline) AS SIPARIS_SAYISI
FROM CUSTOMERS.dbo.flo_data_20K
Group by YEAR(first_order_date)
--ORDER BY 2

--8. En son alýþveriþ yapýlan kanal kýrýlýmýnda alýþveriþ baþýna ortalama ciroyu hesaplayacak sorguyu yazýnýz.
SELECT last_order_channel,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online),2) TOPLAM_CIRO,
	SUM(order_num_total_ever_offline + order_num_total_ever_online) TOPLAM_SIPARIS_SAYISI,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online) / SUM(order_num_total_ever_online + order_num_total_ever_offline), 2) AS VERIMLILIK
FROM flo_data_20K
GROUP BY last_order_channel

--9. Son 12 ayda en çok ilgi gören kategoriyi getiren sorguyu yazýnýz.
SELECT interested_in_categories_12,
	COUNT(*) AS FREAKANS_BILGISI
FROM flo_data_20K
group by interested_in_categories_12
order by 2 desc

--10. En çok tercih edilen store_type bilgisini getiren sorguyu yazýnýz.
SELECT TOP 1
	store_type,
	COUNT(*) FREKANS_BILGISI
FROM flo_data_20K
GROUP BY store_type
ORDER BY 2 DESC 


--11.En çok alýþveriþ yapan kiþinin ID’ sini getiren sorguyu yazýnýz.

SELECT TOP 1
	master_id
FROM CUSTOMERS.dbo.flo_data_20k
GROUP BY master_id
ORDER BY SUM(customer_value_total_ever_offline + customer_value_total_ever_online) DESC
	

--12.En son alýþveriþ yapan kiþinin ID’ sini getiren sorguyu yazýnýz. (Max son tarihte birden fazla alýþveriþ yapan ID bulunmakta.Bunlarý da getiriniz.)
SELECT
	master_id,
	last_order_date
FROM CUSTOMERS.dbo.flo_data_20K
WHERE last_order_date= (SELECT MAX(last_order_date)
						FROM CUSTOMERS.dbo.flo_data_20K)


