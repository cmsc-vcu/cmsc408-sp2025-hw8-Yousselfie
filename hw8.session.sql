WITH income_totals AS (
    SELECT
        `Income Group`,
        COUNT(*) AS country_count
    FROM
        WDI_country
    GROUP BY
        `Income Group`
),
total_countries AS (
    SELECT
        COUNT(*) AS total
    FROM
        WDI_country
)

SELECT
    it.`Income Group`,
    it.country_count,
    tc.total,
    ROUND((it.country_count / tc.total) * 100, 1) AS percent_of_total
FROM
    income_totals it
CROSS JOIN
    total_countries tc
ORDER BY
    percent_of_total DESC;