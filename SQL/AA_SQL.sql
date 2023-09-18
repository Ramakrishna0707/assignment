SHOW databases;

use Rfam;

-- 1. a) How many types of tigers can be found in the taxonomy table of the dataset(Hint: use the biological name of the tiger)?

-- count() function is used to find the total number of tigers in the taxonomy table 
-- like operator is a regrex expression used for specific pattern 
SELECT COUNT(*) AS Total_no_of_Tigers FROM taxonomy
WHERE species LIKE '%tigris%';

--  b) what is the 'ncbi_id" of the sumatran Tiger?

SELECT ncbi_id, species FROM taxonomy
WHERE species LIKE "%sumatran Tiger%";

-- 2. Find all the columns that can be used to connect the tables in the given database?
-- answer:
-- from table rfamseq it is ncbi_id
-- from table family it is rfam_acc, rfam_id
-- from table taxonomy it is ncbi_id
-- from table clan_membership it is rfam_acc, clan_acc
-- from table clan it is clan_acc
-- from table full_region it is rfam_acc,rfamdeq_acc
 
-- 3. Which type of rice has the longest DNA sequence? (hint: use the rfamseq and the taxonomy tables)?

select t.ncbi_id,max(r.length) as max_l, t.species from rfamseq as r
join taxonomy as t 
on r.ncbi_id = t.ncbi_id
where species like '%Oryza sativa%'
group by t.species
order by max_l desc 
limit 1;


-- 4. We want to paginate a list of the family names and their longest DNA sequence lengths (in 
-- descending order of length) where only families that have DNA sequence lengths greater than 
-- 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per 
-- page. (hint: we need the family accession ID, family name and the maximum length in the 
-- results)?

SELECT f.description, fam.* FROM family f 
JOIN (SELECT rf.rfamseq_acc, MAX(rf.length) length, fr.rfam_acc 
	  FROM rfamseq rf JOIN full_region fr 
	  			ON rf.rfamseq_acc = fr.rfamseq_acc 
	  WHERE rf.length > 1000000
	  GROUP BY fr.rfam_acc) fam
ON fam.rfam_acc = f.rfam_acc
ORDER BY fam.length DESC
LIMIT 121, 15; #each page contains 15 rows, from the limit 121 , 15 it will redirect to 9th page page.




