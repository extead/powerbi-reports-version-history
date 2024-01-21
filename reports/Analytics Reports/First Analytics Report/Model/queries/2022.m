let
    Источник = Csv.Document(File.Contents("C:\Users\extea\Downloads\archive\2022.csv"),[Delimiter=",", Columns=8, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Повышенные заголовки" = Table.PromoteHeaders(Источник, [PromoteAllScalars=true]),
    #"Измененный тип" = Table.TransformColumnTypes(#"Повышенные заголовки",{{"Date", type date}, {"ProductName", type text}, {"TagLine", type text}, {"Topic", type text}, {"Comments", Int64.Type}, {"Upvotes", type number}, {"ShortUrl", type text}, {"PricingType", type text}})
in
    #"Измененный тип"