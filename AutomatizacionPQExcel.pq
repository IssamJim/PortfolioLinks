let
    Origen = Excel.CurrentWorkbook(){[Name="SalesByCityMonthly"]}[Content],
    #"Tipo cambiado" = Table.TransformColumnTypes(Origen,{{"YearMonth", type date}, {"City", type text}, {"TotalSales", type number}})
in
    #"Tipo cambiado"