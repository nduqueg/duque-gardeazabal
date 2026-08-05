---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
kernelspec:
  display_name: Python 3
  language: python
  name: python3
title: Climate Services - Servicios Climáticos
# abstract: ""
authors:
  - name: Dr. Nicolás Duque Gardeazábal
exports:
  - format: typst
    template: lapreprint-typst
    output: _build/exports/typst/
---

# Forecast to improve business processes and management

```{figure} ../images/Nino_forecast.png
:name: fig-ENSO-forecast
:alt: 
ECMWF-SEAS5 Forecast plumes for temperature in the Niño 3.4 region, other variables can be predicted. Taken from [ECWMF](https://charts.ecmwf.int/products/seasonal_system5_nino_plumes?base_time=202305010000&nino_area=NINO3-4).
```

Many business operations can be impacted by weather variability or extremes. Then, preparing for future situations can reduce disruption risk of vulnerable supply chains and optimize resources in coping strategies. Examples of disruptions can go from undelivered commodities because of weather-related trasport issues, reduction of available energy because of droughts or reduced wind speed, or reduction of yields because of droughts as well. {numref}`fig-ENSO-forecast` shows the prediction of an El Niño event which is known to cause droughts in South America; hence the prediction of the event and drought variablies is useful for many sectors. Since individual risks depend on the socio-economic sector, the co-creation climate services - look at https://doi.org/10.1016/j.cliser.2025.100607 - is essential for business improvement.

```{figure} ../images/Forecast_subsampling.png
:name: fig-forecast-subsampling
:alt: 
Improvement of seasonal forecast skills based on certain techniques (sketch). Left, climate forecast ensemble spread compared to observations for winter in several years. Right, the forecast subensemble of 10 selected members that fulfill certain conditions at the moment of computing. Cortesy of Jan Wandel.
```

Forecasts are uncertain and sometimes biased. Although many meterological agencies provide free forecast, their accuracy can be insufficient for certain objectives. However, it is possible to improve e.g. seasonal forecast using certain techniques. {numref}`fig-forecast-subsampling` shows the improvement of wind predictions by subsampling members from a climate model ensemble. With the improved forecast, some businesses can take better decisions for their operations. This improvement can be done for many different variables.