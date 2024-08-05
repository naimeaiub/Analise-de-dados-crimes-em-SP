--Furtos e Roubos
    WITH data AS ( 
    SELECT
        Ano,
        Delegacia,
        'Furtos na região' AS Tipo_Crime,
        ROUND(SUM(Furtos_na_regiao), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Roubo de carga' AS Tipo_Crime,
        ROUND(SUM(Roubo_de_carga), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Roubos' AS Tipo_Crime,
        ROUND(SUM(Roubos), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Roubo de veículos' AS Tipo_Crime,
        ROUND(SUM(Roubo_de_Veiculo + Roubo_de_Veiculos), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Furto de veículo' AS Tipo_Crime,
        ROUND(SUM(Furto_de_veiculo), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Latrocínios' AS Tipo_Crime,
        ROUND(SUM(Latrocinios), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Homicídio doloso por acidente de trânsito' AS Tipo_Crime,
        ROUND(SUM(Homicidio_doloso_por_acidente_de_transito), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Homicídio culposo por acidente de trânsito' AS Tipo_Crime,
        ROUND(SUM(Homicidio_Culposo_por_acidente_de_Transito), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Homicídio culposo' AS Tipo_Crime,
        ROUND(SUM(Homicidio_Culposo), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Tentativa de homicídio' AS Tipo_Crime,
        ROUND(SUM(Tentativa_de_Homicidio), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Lesão corporal seguida de morte' AS Tipo_Crime,
        ROUND(SUM(Lesao_Corporal_seguida_de_morte), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Lesão corporal dolosa' AS Tipo_Crime,
        ROUND(SUM(Lesao_Corporal_Dolosa), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Lesão corporal culposa por acidente de trânsito' AS Tipo_Crime,
        ROUND(SUM(Lesao_Corporal_Culposa_por_acidente_de_transito), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Lesão corporal culposa' AS Tipo_Crime,
        ROUND(SUM(Lesao_Corporal_Culposa), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Estupro' AS Tipo_Crime,
        ROUND(SUM(Estupro), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Estupro de vulnerável' AS Tipo_Crime,
        ROUND(SUM(Estupro_de_vulneravel), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    UNION ALL

    SELECT
        Ano,
        Delegacia,
        'Roubo a banco' AS Tipo_Crime,
        ROUND(SUM(Roubo_a_Banco), 2) AS Total,
        ST_GEOGPOINT(loc.longitude, loc.latitude) AS Geo_point
    FROM `curso-big-query-0508.projeto_pratico_3.crime_sp` AS d
    INNER JOIN `curso-big-query-0508.projeto_pratico_3.loc_delegacias` AS loc
    ON loc.name = d.Delegacia
    GROUP BY Ano, Delegacia, loc.longitude, loc.latitude

    )
    , total AS (
    SELECT 
        Ano, Delegacia, Tipo_Crime, ROUND(Total) AS Total
    FROM data
    WHERE Tipo_Crime LIKE ('%urto%') OR Tipo_Crime LIKE ('%oubo%') OR Tipo_Crime LIKE ('%atrocínio%')
    ORDER BY Tipo_Crime
    )
    SELECT * FROM total
    ORDER BY 1