-- 1–10: Dotazy s WHERE
SELECT * FROM zamestnanci WHERE vek > 40; --vybere vsechny zamestnance s vekem vetsim nez 40
SELECT * FROM zamestnanci WHERE pohlavi = 'F'; --vybere vsechny zamestnance zeny
SELECT * FROM zamestnanci WHERE jmeno = 'Tomáš'; --vybere vsechny tomase
SELECT * FROM zamestnanci WHERE vek BETWEEN 30 AND 40;--vybere vsechny mezi vekem 30-40
SELECT * FROM zamestnanci WHERE jmeno LIKE 'P%';--vybere jmena co zacinaji na pismeno: P
SELECT * FROM zamestnanci WHERE pohlavi = 'M' AND vek < 45;--vybere muze co jsou mladsi nez 45
SELECT * FROM zamestnanci WHERE prijmeni LIKE '%ová%';--vybere vsechny kdo ma ve prijmeni ová
SELECT * FROM zamestnanci WHERE pohlavi != 'F';--vybere vsechny pohlavi krome F
SELECT * FROM zamestnanci WHERE jmeno IN ('Petra', 'Tereza');--vybere vsechny co maj ve jmene Petra,Tereza
SELECT * FROM zamestnanci WHERE vek = 42;--vybere vsechny komu je 42

-- 11–16: Dotazy s JOIN ON
SELECT f.jmeno, f.prijmeni, s.nazev FROM fitkari f JOIN skupinovelekce s ON f.skupinovelekce_id = s.id;
SELECT f.jmeno, f.prijmeni, b.druh FROM fitkari f JOIN bojovesporty b ON f.bojovesporty_id = b.id;
SELECT b.druh, z.jmeno, z.prijmeni FROM bojovesporty b JOIN zamestnanci z ON b.trener = CONCAT(z.jmeno, ' ', z.prijmeni);
SELECT s.nazev, z.jmeno, z.prijmeni FROM skupinovelekce s JOIN zamestnanci z ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni);
SELECT f.jmeno AS fitkar, b.trener FROM fitkari f JOIN bojovesporty b ON f.bojovesporty_id = b.id;
SELECT f.jmeno, f.prijmeni, s.nazev, s.trener FROM fitkari f JOIN skupinovelekce s ON f.skupinovelekce_id = s.id;

-- 17–18: Dotazy s LEFT JOIN a RIGHT JOIN
SELECT z.jmeno, z.prijmeni, s.nazev FROM zamestnanci z LEFT JOIN skupinovelekce s ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni);
SELECT s.nazev, z.jmeno, z.prijmeni FROM zamestnanci z RIGHT JOIN skupinovelekce s ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni);

-- 19: Agregační funkce
SELECT AVG(vek) AS prumerny_vek FROM zamestnanci;

-- 20: GROUP BY + HAVING
SELECT pohlavi, COUNT(*) AS pocet FROM zamestnanci GROUP BY pohlavi HAVING COUNT(*) > 3;
