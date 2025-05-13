-- 2–11: Dotazy s WHERE
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

-- 14-19: Dotazy s JOIN ON
SELECT f.jmeno, f.prijmeni, s.nazev FROM fitkari f JOIN skupinovelekce s ON f.skupinovelekce_id = s.id; -- vybere jmeno a prijmeni fitkare a nazev skupinove lekce, na kterou chodi
SELECT f.jmeno, f.prijmeni, b.druh FROM fitkari f JOIN bojovesporty b ON f.bojovesporty_id = b.id; -- vybere jmeno a prijmeni fitkare a druh bojového sportu, kteremu se venuje
SELECT b.druh, z.jmeno, z.prijmeni FROM bojovesporty b JOIN zamestnanci z ON b.trener = CONCAT(z.jmeno, ' ', z.prijmeni); -- vybere druh bojoveho sportu a jmeno + prijmeni trenera, ktery ho vede
SELECT s.nazev, z.jmeno, z.prijmeni FROM skupinovelekce s JOIN zamestnanci z ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni); -- vybere nazev skupinove lekce a jmeno + prijmeni trenera, ktery ji vede
SELECT f.jmeno AS fitkar, b.trener FROM fitkari f JOIN bojovesporty b ON f.bojovesporty_id = b.id; -- vybere jmeno fitkare a jmeno trenera bojoveho sportu, kteremu se fitkar venuje
SELECT f.jmeno, f.prijmeni, s.nazev, s.trener FROM fitkari f JOIN skupinovelekce s ON f.skupinovelekce_id = s.id; -- vybere jmeno a prijmeni fitkare, nazev skupinove lekce a jmeno trenera teto lekce

-- 22-23: Dotazy s LEFT JOIN a RIGHT JOIN
SELECT z.jmeno, z.prijmeni, s.nazev FROM zamestnanci z LEFT JOIN skupinovelekce s ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni);
SELECT s.nazev, z.jmeno, z.prijmeni FROM zamestnanci z RIGHT JOIN skupinovelekce s ON s.trener = CONCAT(z.jmeno, ' ', z.prijmeni);

-- 26: Agregační funkce
SELECT AVG(vek) AS prumerny_vek FROM zamestnanci;

-- 29: GROUP BY + HAVING
SELECT pohlavi, COUNT(*) AS pocet FROM zamestnanci GROUP BY pohlavi HAVING COUNT(*) > 3;
