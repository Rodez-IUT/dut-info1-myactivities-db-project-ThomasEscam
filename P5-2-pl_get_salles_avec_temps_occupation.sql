CREATE OR REPLACE FUNCTION gds.pl_get_salles_avec_temps_occupation(curs refcursor) RETURNS refcursor AS $$
BEGIN 
    OPEN curs FOR SELECT nom, gds.pl_calcule_temps_occupation(nom) AS occupation
                  FROM gds.salle 
                  ORDER BY occupation DESC, nom;
    RETURN curs;
END;
$$ LANGUAGE plpgsql;