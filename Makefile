LATEXMK=latexmk

default: stockholm

triumf: triumf.pdf

ecr: ecr-appraisal.pdf

caltechlanl: caltech-lanl.pdf

int: int1 int2

overview: nubhlight-overview.pdf

astrocoffee: astrocoffee.pdf

teams2: scidac_2020.pdf

teams: teams.pdf

cta1: cta1.pdf

cta2: astro_jun_2019.pdf

cta3: friday_morning_astro_oct_2019.pdf

cnls: cnls.pdf

tcan: tcan_2019.pdf

ua: ua_days.pdf

ua2: lanl_ua_days_2020.pdf

skype: skype-a-scientist.pdf

laastro1: la_astro_2019.pdf

dr: dr_review_2019.pdf

FRIB: frib.pdf

ICERM: ICERM.pdf

dr2: dr_review_2020.pdf

aas: aas.pdf

ecstar: ecstar_2020.pdf

rit: rit_tcan_2020.pdf

unam: unam.pdf

fusion: fusion-in-space.pdf

erice: erice.pdf

gsi: gsi.pdf

badhonnef: bad_honnef_2022.pdf

hamburg: hamburg.pdf

int1: int-1-kn.pdf

int2: int-2-modeling.pdf

et24: et-2024-modeling.pdf

icerm24: icerm-2024-boltzmann.pdf

school24: lanl-caltech-school-24.pdf

ncstate: ncstate.pdf

stockholm: stockholm.pdf

%.pdf: %.tex
	${LATEXMK} -pdf $<

.phony: astrocoffee teams teams2 cta1 cta2 cta3 dr cnls tcan ua laastro1 skype ICERM FRIB ICERM dr2 aas ecstar rit unam fusion erice gsi badhonnef hamburg int1 int2 int caltechlanl ecr triumf et24 icerm24 school24 ncstate stockholm all clean

clean:
	rm -f ./*.aux ./*.bbl ./*.blg ./*.log ./*.nav ./*.out ./*.pdf ./*.snm ./*.toc ./*.fls ./*.fdb_latexmk ./*-blx.bib ./*.run.xml
