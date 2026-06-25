# Nädal 2: SQL Cleaning -- UrbanStyle'i andmete puhastamine

## Mida ma tegin [ROLL C - Tooteandmete Puhastamine]
- Tooteandmete eelpuhastusse anlüüsi "test" andmebaasi põhjal
- Leidsin, et tooteandmetes on 12 tootenime duplikaatidega
- Osalesin meeskonna andmemaastiku koostamisel

## Peamised õpid
- Tuvastasin ja eemaldasin duplikaate, kasutades GROUP BY + HAVING ja ROW_NUMBER()
- Leidsin ja käsitlesin NULL väärtusi, kasutades IS NULL, COALESCE() ja NULLIF()
- Puhastasin ja ühtlustasin andmevälju, kasutades CAST, TRIM(), UPPER()/LOWER() ja kuupäevafunktsioone


## Failid
- week2_products_cleaning.sql -- minu SQL päringud

## Meeskonna töö
- https://docs.google.com/presentation/d/1BcnNsggshzlO7VPdt3HL2pVNQ6fUf51dU6TCUTvWZsI/edit?slide=id.g3e18c6c8996_2_75#slide=id.g3e18c6c8996_2_75
