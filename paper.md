---
title: 'dbfishR: An R package and database for fish and water quality data access and entry'
tags:
  - R
  - ecology
  - watershed
  - fish
  - stream
authors:
  - name: Matthew J. Wilson
    orcid: 0000-0001-6110-8734
    affiliation: 1
  - name: Daniel E. Ressler
    affiliation: 1
  - name: Sara A. Ashcraft
    affiliation: 1
  - name: Mark A. Newman
    orcid: 0000-0001-6155-438X
    affiliation: 2
affiliations:
 - name: Susquehanna University, USA
   index: 1
 - name: Development InfoStructure Inc., USA
   index: 2
date: 12 August 2024
bibliography: paper.bib

---

# Summary

The dbfishR package was designed to access ecological data collected as part of Pennsylvania’s Unassessed Waters Initiative [@UWI], a state-wide program to sample fish communities in headwater streams. In the initial release, the dbfishR package makes 15,000 fish records and water quality data from over 1,000 streams across Pennsylvania (USA) publicly accessible. Package functions also format these data for ease of use with other R packages and public datasets, such as the vegan [@vegan] and dataRetrieval [@dataRetrieval] packages. With the package database, we have also released a robust database template in Microsoft Access to facilitate collaboration through data standardization for in-stream collection of data related to water quality; discharge; substrate structure [*sensu* @Wolman1954]; site metadata; amphibians; and fish counts, lengths, and weights. The database template includes structured forms with value limits (e.g., pH between 0 and 14) for data entry to support efficiency, accessibility, and quality control. The package is structured with eight functions for tidy import from the relational database structure for ease of data analysis and comparison with external data in both spatial and non-spatial formats (e.g., the included Stream Flashiness vignette). As a result of these data and query structures, the package and database can be expanded to include data from any aquatic research involving substrate, water quality, fish, or amphibians.

# Statement of need

Across watershed ecology, management, and conservation there are significant gaps between the parties involved in long-term research, monitoring, and policy for data use and access, despite the benefits of connecting these groups [@Durden2017]. For instance, there are environmental and ecological monitoring professionals who are often tasked with collection and storage of data assets, there are policy makers and legislators who are tasked with developing and accessing regulatory mechanisms, and finally there are scientists continually attempting to expand our understanding of these systems. From these diverse drivers of data collection it can be difficult to translate data from one initial purpose to another, such as management to research [@Wilson2015]. The dbfishR  package focuses on three critical problems that are present across these fields: the relative dearth of publicly available data, democratization of data analysis, and the sharing of standardized data. In addressing these challenges, our standardized database template serves two purposes: it both provides a flexible yet robust foundation to adapt for other ecological data collection, and it allows for ease of data entry and appending to the dbfishR package for future releases. This can either be additional data from the Unassessed Waters Initiative or any stream data from individual researchers willing to contribute to the package. While there has been a rapid growth in research surrounding citizen science data collection and collaboration [@R-K:2023; @Millar2023], there has been limited focus on making professionally collected data available by comparison, particularly in aquatic ecosystems. The dbfishR package is designed to begin to address this gap. 

In addition to the broad applicability and utility of dbfishR, regionally to Pennsylvania these data can be a valuable resource for university and non-profit organizations. Extending the original initiative intent for policy changes based on trout population presence/absence, the data can be used to understand patterns and posit processes for the distribution of native brook trout (*Salvelinus fontinalis*) and invasive brown trout (*Salmo trutta*), as well as distributions of common non-game species, and patterns of stream size relative to watershed area and slope. Importantly, most R packages that support fish and fisheries related data accessibility, such as FSA [@FSA] and TropFishR [@TropFishR], are designed for economically important analyses such as stock assessments. The database and functions in dbfishR take an ecological approach to aquatic data that include fish sampling, enabling more broad applications.  

# Acknowledgements

Funding for this work was provided by the Richard King Mellon Foundation and the Freshwater Research Institute at Susquehanna University. We also thank Leslie Rieck and Mark Kirk for testing package and database functionality as well as Kevin Purcell for package and manuscript review.

# References