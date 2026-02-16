WITH top_paying_jobs as (

    SELECT 
        job_id,
        job_title,
        salary_year_avg,
        name as comapny_name

    FROM 
        job_postings_fact
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title_short = 'Data Analyst' AND 
        job_location = 'India' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM
     top_paying_jobs
INNER JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id=skills_dim.skill_id

ORDER BY 
    salary_year_avg DESC


/*
⭐ Top 5 Skills in Highest Paying Data Analyst Jobs (2023)

SQL (7 mentions)
The #1 must-have skill — every top job expects strong querying and database work.

Excel (7 mentions)
Still essential for business reporting, quick analysis, and dashboards.

Python (5 mentions)
Highly valued for automation, analytics, and advanced data work.

R (3 mentions)
Common in statistics-heavy and research-focused analyst roles.

Word (3 mentions)
Important because high-paying roles want clear documentation and communication.

[
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank",
    "skills": "sql"
  },
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank",
    "skills": "excel"
  },
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank",
    "skills": "visio"
  },
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank",
    "skills": "jira"
  },
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank",
    "skills": "confluence"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group",
    "skills": "sql"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group",
    "skills": "azure"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group",
    "skills": "excel"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group",
    "skills": "power bi"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group",
    "skills": "flow"
  },
  {
    "job_id": 591307,
    "job_title": "HR Data Operations Analyst",
    "salary_year_avg": "104550.0",
    "comapny_name": "Clarivate",
    "skills": "excel"
  },
  {
    "job_id": 591307,
    "job_title": "HR Data Operations Analyst",
    "salary_year_avg": "104550.0",
    "comapny_name": "Clarivate",
    "skills": "word"
  },
  {
    "job_id": 591307,
    "job_title": "HR Data Operations Analyst",
    "salary_year_avg": "104550.0",
    "comapny_name": "Clarivate",
    "skills": "powerpoint"
  },
  {
    "job_id": 1218280,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "93600.0",
    "comapny_name": "Loop Health",
    "skills": "sql"
  },
  {
    "job_id": 1218280,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "93600.0",
    "comapny_name": "Loop Health",
    "skills": "python"
  },
  {
    "job_id": 1218280,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "93600.0",
    "comapny_name": "Loop Health",
    "skills": "r"
  },
  {
    "job_id": 1218280,
    "job_title": "Financial Data Analyst",
    "salary_year_avg": "93600.0",
    "comapny_name": "Loop Health",
    "skills": "sheets"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate",
    "skills": "sql"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate",
    "skills": "python"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate",
    "skills": "excel"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate",
    "skills": "tableau"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate",
    "skills": "word"
  },
  {
    "job_id": 152699,
    "job_title": "Ai Research Engineer",
    "salary_year_avg": "79200.0",
    "comapny_name": "AlphaSense",
    "skills": "python"
  },
  {
    "job_id": 152699,
    "job_title": "Ai Research Engineer",
    "salary_year_avg": "79200.0",
    "comapny_name": "AlphaSense",
    "skills": "tensorflow"
  },
  {
    "job_id": 152699,
    "job_title": "Ai Research Engineer",
    "salary_year_avg": "79200.0",
    "comapny_name": "AlphaSense",
    "skills": "pytorch"
  },
  {
    "job_id": 733296,
    "job_title": "Data Integration and Business Intelligence Analyst",
    "salary_year_avg": "79200.0",
    "comapny_name": "Miratech",
    "skills": "sql"
  },
  {
    "job_id": 733296,
    "job_title": "Data Integration and Business Intelligence Analyst",
    "salary_year_avg": "79200.0",
    "comapny_name": "Miratech",
    "skills": "unix"
  },
  {
    "job_id": 733296,
    "job_title": "Data Integration and Business Intelligence Analyst",
    "salary_year_avg": "79200.0",
    "comapny_name": "Miratech",
    "skills": "windows"
  },
  {
    "job_id": 733296,
    "job_title": "Data Integration and Business Intelligence Analyst",
    "salary_year_avg": "79200.0",
    "comapny_name": "Miratech",
    "skills": "tableau"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "sql"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "oracle"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "excel"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "word"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "outlook"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill",
    "skills": "flow"
  },
  {
    "job_id": 1018519,
    "job_title": "Data Analyst I",
    "salary_year_avg": "71600.0",
    "comapny_name": "Bristol Myers Squibb",
    "skills": "python"
  },
  {
    "job_id": 1018519,
    "job_title": "Data Analyst I",
    "salary_year_avg": "71600.0",
    "comapny_name": "Bristol Myers Squibb",
    "skills": "r"
  },
  {
    "job_id": 1018519,
    "job_title": "Data Analyst I",
    "salary_year_avg": "71600.0",
    "comapny_name": "Bristol Myers Squibb",
    "skills": "excel"
  },
  {
    "job_id": 306376,
    "job_title": "Project Associate - Data Analytics (Contract)",
    "salary_year_avg": "64800.0",
    "comapny_name": "Array",
    "skills": "sql"
  },
  {
    "job_id": 306376,
    "job_title": "Project Associate - Data Analytics (Contract)",
    "salary_year_avg": "64800.0",
    "comapny_name": "Array",
    "skills": "python"
  },
  {
    "job_id": 306376,
    "job_title": "Project Associate - Data Analytics (Contract)",
    "salary_year_avg": "64800.0",
    "comapny_name": "Array",
    "skills": "r"
  },
  {
    "job_id": 306376,
    "job_title": "Project Associate - Data Analytics (Contract)",
    "salary_year_avg": "64800.0",
    "comapny_name": "Array",
    "skills": "excel"
  }
]

/*