SELECT C.CountryName, C.CountryCode, 
CASE 
	WHEN C.CurrencyCode = 'EUR' THEN 'Euro'
	WHEN C.CurrencyCode != 'EUR' OR C.CurrencyCode IS NULL THEN 'Not Euro'
END
	AS "Currency" 
FROM [dbo].Countries AS C
ORDER BY C.CountryName ASC