--2. Ka� farkl� m��terinin al��veri� yapt���n� g�sterecek sorguyu yaz�n�z.
SELECT 
     COUNT(DISTINCT(master_id)) Toplam_ki�i_say�s� 


FROM flo_data_20K

--3. Toplam yap�lan al��veri� say�s� ve ciroyu getirecek sorguyu yaz�n�z.
SELECT 

     SUM(order_num_total_ever_online + order_num_total_ever_offline) AS TOPLAM_SIPARIS_SAYISI,
	 ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online), 2) AS TOPLAM_CIRO

FROM flo_data_20K    

--4. Al��veri� ba��na ortalama ciroyu getirecek sorguyu yaz�n�z
SELECT 
      ROUND((SUM(customer_value_total_ever_offline + customer_value_total_ever_online) / SUM(order_num_total_ever_online + order_num_total_ever_offline)), 2) AS SIPARIS_ORT_CIRO

FROM flo_data_20K


--5.En son al��veri� yap�lan kanal (last_order_channel) �zerinden yap�lan al��veri�lerin toplam ciro ve al��veri� say�lar�n� getirecek sorguyu yaz�n�z.

SELECT
	last_order_channel AS SON_ALISVERIS_KANALI,
	SUM(customer_value_total_ever_offline + customer_value_total_ever_online) AS TOPLAM_CIRO,
	SUM(order_num_total_ever_online + order_num_total_ever_offline) AS TOPLAM_SIPARIS_SAYISI
FROM flo_data_20K
GROUP BY last_order_channel


--6.Store type k�r�l�m�nda elde edilen toplam ciroyu getiren sorguyu yaz�n�z.
SELECT 
	store_type MAGZA_TURU,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online), 2) Toplam_CIRO
FROM flo_data_20K
GROUP BY store_type

--7. Y�l k�r�l�m�nda al��veri� say�lar�n� getirecek sorguyu yaz�n�z (Y�l olarak m��terinin ilk al��veri� tarihi (first_order_date) y�l�n baz�n� al�n�z)
SELECT 
	YEAR(first_order_date) AS YIL,
	SUM(order_num_total_ever_online + order_num_total_ever_offline) AS SIPARIS_SAYISI
FROM CUSTOMERS.dbo.flo_data_20K
Group by YEAR(first_order_date)
--ORDER BY 2

--8. En son al��veri� yap�lan kanal k�r�l�m�nda al��veri� ba��na ortalama ciroyu hesaplayacak sorguyu yaz�n�z.
SELECT last_order_channel,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online),2) TOPLAM_CIRO,
	SUM(order_num_total_ever_offline + order_num_total_ever_online) TOPLAM_SIPARIS_SAYISI,
	ROUND(SUM(customer_value_total_ever_offline + customer_value_total_ever_online) / SUM(order_num_total_ever_online + order_num_total_ever_offline), 2) AS VERIMLILIK
FROM flo_data_20K
GROUP BY last_order_channel

--9. Son 12 ayda en �ok ilgi g�ren kategoriyi getiren sorguyu yaz�n�z.
SELECT interested_in_categories_12,
	COUNT(*) AS FREAKANS_BILGISI
FROM flo_data_20K
group by interested_in_categories_12
order by 2 desc

--10. En �ok tercih edilen store_type bilgisini getiren sorguyu yaz�n�z.
SELECT TOP 1
	store_type,
	COUNT(*) FREKANS_BILGISI
FROM flo_data_20K
GROUP BY store_type
ORDER BY 2 DESC 


--11.En �ok al��veri� yapan ki�inin ID� sini getiren sorguyu yaz�n�z.

SELECT TOP 1
	master_id
FROM CUSTOMERS.dbo.flo_data_20k
GROUP BY master_id
ORDER BY SUM(customer_value_total_ever_offline + customer_value_total_ever_online) DESC
	

--12.En son al��veri� yapan ki�inin ID� sini getiren sorguyu yaz�n�z. (Max son tarihte birden fazla al��veri� yapan ID bulunmakta.Bunlar� da getiriniz.)
SELECT
	master_id,
	last_order_date
FROM CUSTOMERS.dbo.flo_data_20K
WHERE last_order_date= (SELECT MAX(last_order_date)
						FROM CUSTOMERS.dbo.flo_data_20K)


