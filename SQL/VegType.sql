




USE HTLN_LandBirds;

SELECT L.LocationName AS Plot, Left(E.EventDateTime,11) AS EventDate,  T.NAME AS VegType, V.PlotVegetationCoverClassID AS CovClass

FROM dbo.Plot AS L 

  JOIN dbo.VegetationSamplingEvent AS E
  ON L.ID = E.PlotID
  JOIN dbo.PlotVegetation AS V
  ON E.ID = V.VegetationSamplingEventID 
  JOIN LU.PlotVegetationType AS T
  ON T.ID = V.PlotVegetationTypeID

WHERE (E.EventDateTime < '20230101')

ORDER BY Plot, EventDate, VegType
