# Instalación de paquetes

install.packages("tidyverse")

# Carga de paquetes

library(tidyverse)

# Exploración inicial

as_tibble(read.csv("co2_data.csv"))

str(read_csv("co2_data.csv"))

col(read_csv("co2_data.csv"))

print(read_csv("co2_data.csv"))

# Carga de variables

co2_df <- read.csv("co2_data.csv")

# Renombrado de columnas y formateo a numéricas (agregando NAs)
co2_df <- co2_df %>%
  rename(Pais=Country.Name,
         Cod_Pais=Country.Code,
         Serie=Series.Name,
         Cod_Serie=Series.Code,
         Año_1960=X1960..YR1960.,
         Año_1961=X1961..YR1961.,
         Año_1962=X1962..YR1962.,
         Año_1963=X1963..YR1963.,
         Año_1964=X1964..YR1964.,
         Año_1965=X1965..YR1965.,
         Año_1966=X1966..YR1966.,
         Año_1967=X1967..YR1967.,
         Año_1968=X1968..YR1968.,
         Año_1969=X1969..YR1969.,
         Año_1970=X1970..YR1970.,
         Año_1971=X1971..YR1971.,
         Año_1972=X1972..YR1972.,
         Año_1973=X1973..YR1973.,
         Año_1974=X1974..YR1974.,
         Año_1975=X1975..YR1975.,
         Año_1976=X1976..YR1976.,
         Año_1977=X1977..YR1977.,
         Año_1978=X1978..YR1978.,
         Año_1979=X1979..YR1979.,
         Año_1980=X1980..YR1980.,
         Año_1981=X1981..YR1981.,
         Año_1982=X1982..YR1982.,
         Año_1983=X1983..YR1983.,
         Año_1984=X1984..YR1984.,
         Año_1985=X1985..YR1985.,
         Año_1986=X1986..YR1986.,
         Año_1987=X1987..YR1987.,
         Año_1988=X1988..YR1988.,
         Año_1989=X1989..YR1989.,
         Año_1990=X1990..YR1990.,
         Año_1991=X1991..YR1991.,
         Año_1992=X1992..YR1992.,
         Año_1993=X1993..YR1993.,
         Año_1994=X1994..YR1994.,
         Año_1995=X1995..YR1995.,
         Año_1996=X1996..YR1996.,
         Año_1997=X1997..YR1997.,
         Año_1998=X1998..YR1998.,
         Año_1999=X1999..YR1999.,
         Año_2000=X2000..YR2000.,
         Año_2001=X2001..YR2001.,
         Año_2002=X2002..YR2002.,
         Año_2003=X2003..YR2003.,
         Año_2004=X2004..YR2004.,
         Año_2005=X2005..YR2005.,
         Año_2006=X2006..YR2006.,
         Año_2007=X2007..YR2007.,
         Año_2008=X2008..YR2008.,
         Año_2009=X2009..YR2009.,
         Año_2010=X2010..YR2010.,
         Año_2011=X2011..YR2011.,
         Año_2012=X2012..YR2012.,
         Año_2013=X2013..YR2013.,
         Año_2014=X2014..YR2014.,
         Año_2015=X2015..YR2015.,
         Año_2016=X2016..YR2016.,
         Año_2017=X2017..YR2017.,
         Año_2018=X2018..YR2018.,
         Año_2019=X2019..YR2019.,
         Año_2020=X2020..YR2020.,
         Año_2021=X2021..YR2021.,
         Año_2022=X2022..YR2022.) %>% 
  mutate(Año_1960=as.numeric(Año_1960),
         Año_1960=as.numeric(Año_1960),
         Año_1961=as.numeric(Año_1961),
         Año_1962=as.numeric(Año_1962),
         Año_1963=as.numeric(Año_1963),
         Año_1964=as.numeric(Año_1964),
         Año_1965=as.numeric(Año_1965),
         Año_1966=as.numeric(Año_1966),
         Año_1967=as.numeric(Año_1967),
         Año_1968=as.numeric(Año_1968),
         Año_1969=as.numeric(Año_1969),
         Año_1970=as.numeric(Año_1970),
         Año_1971=as.numeric(Año_1971),
         Año_1972=as.numeric(Año_1972),
         Año_1973=as.numeric(Año_1973),
         Año_1974=as.numeric(Año_1974),
         Año_1975=as.numeric(Año_1975),
         Año_1976=as.numeric(Año_1976),
         Año_1977=as.numeric(Año_1977),
         Año_1978=as.numeric(Año_1978),
         Año_1979=as.numeric(Año_1979),
         Año_1980=as.numeric(Año_1980),
         Año_1981=as.numeric(Año_1981),
         Año_1982=as.numeric(Año_1982),
         Año_1983=as.numeric(Año_1983),
         Año_1984=as.numeric(Año_1984),
         Año_1985=as.numeric(Año_1985),
         Año_1986=as.numeric(Año_1986),
         Año_1987=as.numeric(Año_1987),
         Año_1988=as.numeric(Año_1988),
         Año_1989=as.numeric(Año_1989),
         Año_1990=as.numeric(Año_1990),
         Año_1991=as.numeric(Año_1991),
         Año_1992=as.numeric(Año_1992),
         Año_1993=as.numeric(Año_1993),
         Año_1994=as.numeric(Año_1994),
         Año_1995=as.numeric(Año_1995),
         Año_1996=as.numeric(Año_1996),
         Año_1997=as.numeric(Año_1997),
         Año_1998=as.numeric(Año_1998),
         Año_1999=as.numeric(Año_1999),
         Año_2000=as.numeric(Año_2000),
         Año_2001=as.numeric(Año_2001),
         Año_2002=as.numeric(Año_2002),
         Año_2003=as.numeric(Año_2003),
         Año_2004=as.numeric(Año_2004),
         Año_2005=as.numeric(Año_2005),
         Año_2006=as.numeric(Año_2006),
         Año_2007=as.numeric(Año_2007),
         Año_2008=as.numeric(Año_2008),
         Año_2009=as.numeric(Año_2009),
         Año_2010=as.numeric(Año_2010),
         Año_2011=as.numeric(Año_2011),
         Año_2012=as.numeric(Año_2012),
         Año_2013=as.numeric(Año_2013),
         Año_2014=as.numeric(Año_2014),
         Año_2015=as.numeric(Año_2015),
         Año_2016=as.numeric(Año_2016),
         Año_2017=as.numeric(Año_2017),
         Año_2018=as.numeric(Año_2018),
         Año_2019=as.numeric(Año_2019),
         Año_2020=as.numeric(Año_2020),
         Año_2021=as.numeric(Año_2021),
         Año_2022=as.numeric(Año_2022))

co2_2020 <- co2_df %>% 
  select(Pais,
         Serie,
         Año_2020)

# Seleccion de variables

## C02 (kt)

co2_emissions_2020 <- co2_2020 %>% 
  filter(Serie == "CO2 emissions (kt)")

## C02 por producción de electricidad (devuelve todos NAs)

co2_electricity_heat_2020 <- co2_2020 %>% 
  filter(Serie == "CO2 emissions from electricity and heat production, total (% of total fuel combustion)")

## C02 consumo de combustible gaseoso (devuelve todos NAs)

co2_gaseous_2020 <- co2_2020 %>% 
  filter(Serie == "CO2 emissions from gaseous fuel consumption (% of total)")

## C02 por consumo de combustible líquido (devuelve todos NAs)

co2_liquid_2020 <- co2_2020 %>% 
  filter(Serie == "CO2 emissions from liquid fuel consumption (kt)")