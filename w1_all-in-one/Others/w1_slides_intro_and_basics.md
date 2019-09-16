---
title: "SCR lecture 1"
subtitle: "Intro & Basics"
date: "06 September, 2019"
output:
  ioslides_presentation:
    css: 0_css/SCR1718.css
    highlight: tango
    keep_md: yes
    logo: 0_css/logo.png
    template: 0_template/R1718style.html
    mode: standalone
---



# Welcome!


## Just in case...

Wifi:

* mi-guest / mileiden
* eduroam: ULCN@leidenuniv.nl / ULCN_password

Software:

* R: https://cran.r-project.org
* Rstudio: https://www.rstudio.com/products/rstudio/download/#download


## Topics for today

Setting Expectations for this course

A little bit of project management in RStudio

Basics in `R`     



# Expectation Management


## Final Grade


* One assignment (1/3 of your final grade)

* Two exams (2/3 of your final grade) (average of both, unless the second one is highest, than only the last)

Each week the class meetings consists of a mixture of:

* Lectures
* Live-coding
* Exercises



## Let's have a vote:

[SCR Exam](https://www.student.universiteitleiden.nl/en/study--studying/study/educational-information/schedules/science/statistical-science-for-the-life-and-behavioural-sciences-msc?cf=science&cd=statistical-science-for-the-life-and-behavioural-sciences-msc#tab-2) on January 06, 2020, or...

swap the SCR Exam with resit Mathematics for Statisticians? For example,      
 - Resit Math for Stat is on January 06;        
 - SCR Exam on January 16.       
 



## Course structure

Participation is extremely important: programming is a skill, which you need to develop. 

Q&A is extremely important: curiosity drives learning (how does this work? how do I solve this problem?)

A reason to come to the lecture: Slides are NOT standalone, but are supposed to support the storyline in the lecture... 


## Why `R`?

1. Using `R` for statistical and data analysis procedures
    + [Data Camp Mostly](https://www.datacamp.com/home), [PluralSight](https://www.pluralsight.com), [`swirl`](https://swirlstats.com)
    
2. Adjust code for statistical procedures: Understanding `R`
    + R at [CourseRa](www.coursera.org), Semester 2
    
3. Translate Statistical / Data Science problems into a solution with `R` code: Understanding `R` and Statistics.
    + for your / Internship / thesis / career...

**This course focusses on 2 and 3**


## Learning `R`

* Like learning a language
* Learn by doing (trial and error)
* Many "Quirks and Perks" that you have to get to know
* Building an `R` vocabulary:

    http://adv-r.had.co.nz/Vocabulary.html

## Learning `R` requires autonomy!

Stressing Autonomy

* Understanding errors and warnings
* `R` helpfiles
* Search engines
* [Stackoverflow](https://stackoverflow.com)
* Other community resources (such as Github)

Being able to read / use these takes practice


## You're not alone!

- Your Lecturer (Maarten Kampert) / Teaching Assistant (Kevin Kloos)

- Class Colleagues      

- the Elders (Year 2 and beyond)    

- A selection of Communities:
    + [Amst-R-dam](https://www.meetup.com/amst-R-dam/)   
    + [R Conferences](https://www.r-project.org/conferences/)   
    + [RStudio Webinars](https://www.rstudio.com/resources/webinars/)   
    + [rladies.org](https://www.meetup.com/rladies-amsterdam/?_cookie-check=UsgA24c_ofq0UUH9)   
    


## `R`, in this course

The first half of the course will be about the basics in `R`:

* We'll start with the more programming oriented content: data types and structures and control flow
* We'll continue with the basics of statistics in `R`: analyses and visualization

The second half will deal with statistical computation:

* Statistical procedures and tests that have become feasible, *because* of computational power
* (Statistical) Algorithms


## Incremental

We'll build knowledge incrementally

We'll start off easy, **using** some of all the different tools in `R`

In the following weeks we'll deepen your knowledge of `R` such that you can also apply it to a specialized (data science) topic    

and eventually can translate Statistical (Data) Science problems into `R` code solutions. 



# Cool Stuff | The upsides...


## Networks D3

<!--html_preserve--><div id="htmlwidget-a73cfeca8e1772a43139" style="width:720px;height:432px;" class="forceNetwork html-widget"></div>
<script type="application/json" data-for="htmlwidget-a73cfeca8e1772a43139">{"x":{"links":{"source":[1,2,3,3,4,5,6,7,8,9,11,11,11,11,12,13,14,15,17,18,18,19,19,19,20,20,20,20,21,21,21,21,21,22,22,22,22,22,22,23,23,23,23,23,23,23,23,23,24,24,25,25,25,26,26,26,26,27,27,27,27,27,28,28,29,29,29,30,31,31,31,31,32,33,33,34,34,35,35,35,36,36,36,36,37,37,37,37,37,38,38,38,38,38,38,39,40,41,41,42,42,42,43,43,43,44,44,45,47,48,48,48,48,49,49,50,50,51,51,51,52,52,53,54,54,54,55,55,55,55,55,55,55,55,55,55,56,56,57,57,57,58,58,58,58,58,59,59,59,59,60,60,60,61,61,61,61,61,61,62,62,62,62,62,62,62,62,63,63,63,63,63,63,63,63,64,64,64,64,64,64,64,64,64,64,65,65,65,65,65,65,65,65,65,65,66,66,66,66,66,66,66,66,66,67,68,68,68,68,68,68,69,69,69,69,69,69,69,70,70,70,70,70,70,70,70,71,71,71,71,71,71,71,71,72,72,72,73,74,74,75,75,75,75,75,75,75,76,76,76,76,76,76,76],"target":[0,0,0,2,0,0,0,0,0,0,10,3,2,0,11,11,11,11,16,16,17,16,17,18,16,17,18,19,16,17,18,19,20,16,17,18,19,20,21,16,17,18,19,20,21,22,12,11,23,11,24,23,11,24,11,16,25,11,23,25,24,26,11,27,23,27,11,23,30,11,23,27,11,11,27,11,29,11,34,29,34,35,11,29,34,35,36,11,29,34,35,36,37,11,29,25,25,24,25,41,25,24,11,26,27,28,11,28,46,47,25,27,11,26,11,49,24,49,26,11,51,39,51,51,49,26,51,49,39,54,26,11,16,25,41,48,49,55,55,41,48,55,48,27,57,11,58,55,48,57,48,58,59,48,58,60,59,57,55,55,58,59,48,57,41,61,60,59,48,62,57,58,61,60,55,55,62,48,63,58,61,60,59,57,11,63,64,48,62,58,61,60,59,57,55,64,58,59,62,65,48,63,61,60,57,25,11,24,27,48,41,25,68,11,24,27,48,41,25,69,68,11,24,27,41,58,27,69,68,70,11,48,41,25,26,27,11,48,48,73,69,68,25,48,41,70,71,64,65,66,63,62,48,58],"value":[1,8,10,6,1,1,1,1,2,1,1,3,3,5,1,1,1,1,4,4,4,4,4,4,3,3,3,4,3,3,3,3,5,3,3,3,3,4,4,3,3,3,3,4,4,4,2,9,2,7,13,1,12,4,31,1,1,17,5,5,1,1,8,1,1,1,2,1,2,3,2,1,1,2,1,3,2,3,3,2,2,2,2,1,2,2,2,2,1,2,2,2,2,2,1,1,1,2,3,2,2,1,3,1,1,3,1,2,1,2,1,1,1,3,2,1,1,9,2,2,1,1,1,2,1,1,6,12,1,1,21,19,1,2,5,4,1,1,1,1,1,7,7,6,1,4,15,5,6,2,1,4,2,2,6,2,5,1,1,9,17,13,7,2,1,6,3,5,5,6,2,4,3,2,1,5,12,5,4,10,6,2,9,1,1,5,7,3,5,5,5,2,5,1,2,3,3,1,2,2,1,1,1,1,3,5,1,1,1,1,1,6,6,1,1,2,1,1,4,4,4,1,1,1,1,1,1,2,2,2,1,1,1,1,2,1,1,2,2,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1],"colour":["#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666","#666"]},"nodes":{"name":["Myriel","Napoleon","Mlle.Baptistine","Mme.Magloire","CountessdeLo","Geborand","Champtercier","Cravatte","Count","OldMan","Labarre","Valjean","Marguerite","Mme.deR","Isabeau","Gervais","Tholomyes","Listolier","Fameuil","Blacheville","Favourite","Dahlia","Zephine","Fantine","Mme.Thenardier","Thenardier","Cosette","Javert","Fauchelevent","Bamatabois","Perpetue","Simplice","Scaufflaire","Woman1","Judge","Champmathieu","Brevet","Chenildieu","Cochepaille","Pontmercy","Boulatruelle","Eponine","Anzelma","Woman2","MotherInnocent","Gribier","Jondrette","Mme.Burgon","Gavroche","Gillenormand","Magnon","Mlle.Gillenormand","Mme.Pontmercy","Mlle.Vaubois","Lt.Gillenormand","Marius","BaronessT","Mabeuf","Enjolras","Combeferre","Prouvaire","Feuilly","Courfeyrac","Bahorel","Bossuet","Joly","Grantaire","MotherPlutarch","Gueulemer","Babet","Claquesous","Montparnasse","Toussaint","Child1","Child2","Brujon","Mme.Hucheloup"],"group":[1,1,1,1,1,1,1,1,1,1,2,2,3,2,2,2,3,3,3,3,3,3,3,3,4,4,5,4,0,2,3,2,2,2,2,2,2,2,2,4,6,4,4,5,0,0,7,7,8,5,5,5,5,5,5,8,5,8,8,8,8,8,8,8,8,8,8,9,4,4,4,4,5,10,10,4,8]},"options":{"NodeID":"name","Group":"group","colourScale":"d3.scaleOrdinal(d3.schemeCategory20);","fontSize":7,"fontFamily":"serif","clickTextSize":17.5,"linkDistance":50,"linkWidth":"function(d) { return Math.sqrt(d.value); }","charge":-30,"opacity":0.4,"zoom":false,"legend":false,"arrows":false,"nodesize":false,"radiusCalculation":" Math.sqrt(d.nodesize)+6","bounded":false,"opacityNoHover":0,"clickAction":null}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->


## Google Visualization: [Gapminder](http://www.gapminder.org/world/#$majorMode=chart$is;shi=t;ly=2003;lb=f;il=t;fs=11;al=30;stl=t;st=t;nsl=t;se=t$wst;tts=C$ts;sp=5.59290322580644;ti=2013$zpv;v=0$inc_x;mmid=XCOORDS;iid=phAwcNAVuyj1jiMAkmq1iMg;by=ind$inc_y;mmid=YCOORDS;iid=phAwcNAVuyj2tPLxKvvnNPA;by=ind$inc_s;uniValue=8.21;iid=phAwcNAVuyj0XOoBL_n5tAQ;by=ind$inc_c;uniValue=255;gid=CATID0;by=grp$map_x;scale=log;dataMin=194;dataMax=96846$map_y;scale=lin;dataMin=23;dataMax=86$map_s;sma=49;smi=2.65$cd;bd=0$inds=;modified=60)
<!-- MotionChart generated in R 3.6.0 by googleVis 0.6.4 package -->
<!-- Fri Sep  6 08:36:50 2019 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartID127c52fe05bb4 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
"Albania",
1995,
"Europe & Central Asia",
3141102,
71.87029268,
28.22458703
],
[
"Algeria",
1995,
"Middle East & North Africa",
28291591,
68.46587805,
62.05589356
],
[
"Angola",
1995,
"Sub-Saharan Africa",
12105105,
42.05092683,
20.74862862
],
[
"Argentina",
1995,
"Latin America & Caribbean",
34855160,
72.62363415,
615.4142626
],
[
"Armenia",
1995,
"Europe & Central Asia",
3223173,
68.62046341,
25.73810058
],
[
"Australia",
1995,
"East Asia & Pacific",
18072000,
77.82926829,
1564.944285
],
[
"Austria",
1995,
"Europe & Central Asia",
7948278,
76.71560976,
2876.079792
],
[
"Azerbaijan",
1995,
"Europe & Central Asia",
7685000,
64.57582927,
18.03309964
],
[
"Bahamas, The",
1995,
"Latin America & Caribbean",
279774,
70.05636585,
839.6062536
],
[
"Bahrain",
1995,
"Middle East & North Africa",
559069,
73.14702439,
481.8814347
],
[
"Bangladesh",
1995,
"South Asia",
117486952,
62.12268293,
11.37605806
],
[
"Barbados",
1995,
"Latin America & Caribbean",
263416,
74.95936585,
450.1055365
],
[
"Belarus",
1995,
"Europe & Central Asia",
10194000,
68.46097561,
69.12993509
],
[
"Belgium",
1995,
"Europe & Central Asia",
10136811,
76.84073171,
2136.333514
],
[
"Belize",
1995,
"Latin America & Caribbean",
216500,
73.12760976,
120.4951841
],
[
"Benin",
1995,
"Sub-Saharan Africa",
5651141,
50.94126829,
18.01648902
],
[
"Bhutan",
1995,
"South Asia",
518584,
56.72339024,
22.42654267
],
[
"Bolivia",
1995,
"Latin America & Caribbean",
7470925,
61.09587805,
40.17792593
],
[
"Bosnia and Herzegovina",
1995,
"Europe & Central Asia",
3332098,
68.06819512,
63.79041661
],
[
"Botswana",
1995,
"Sub-Saharan Africa",
1585637,
59.19780488,
124.7782423
],
[
"Brazil",
1995,
"Latin America & Caribbean",
161848162,
68.34063415,
316.0568547
],
[
"Brunei Darussalam",
1995,
"East Asia & Pacific",
289614,
74.96741463,
481.6751383
],
[
"Bulgaria",
1995,
"Europe & Central Asia",
8406067,
71.05341463,
81.61512375
],
[
"Burkina Faso",
1995,
"Sub-Saharan Africa",
10692138,
48.9797561,
10.7241997
],
[
"Burundi",
1995,
"Sub-Saharan Africa",
6086751,
44.5885122,
9.0893498
],
[
"Cambodia",
1995,
"East Asia & Pacific",
11169233,
56.06526829,
18.97864601
],
[
"Cameroon",
1995,
"Sub-Saharan Africa",
13940337,
51.99190244,
25.1337447
],
[
"Canada",
1995,
"North America",
29354000,
77.97756098,
1820.609018
],
[
"Cape Verde",
1995,
"Sub-Saharan Africa",
394946,
67.18231707,
65.67099483
],
[
"Central African Republic",
1995,
"Sub-Saharan Africa",
3327710,
46.10629268,
13.03604562
],
[
"Chad",
1995,
"Sub-Saharan Africa",
6998108,
49.84973171,
11.93950919
],
[
"Chile",
1995,
"Latin America & Caribbean",
14409416,
75.04146341,
331.1584012
],
[
"China",
1995,
"East Asia & Pacific",
1204855000,
70.42473171,
21.14285568
],
[
"Colombia",
1995,
"Latin America & Caribbean",
36453337,
69.43668293,
171.4598483
],
[
"Comoros",
1995,
"Sub-Saharan Africa",
494486,
56.70980488,
21.87714413
],
[
"Congo, Dem. Rep.",
1995,
"Sub-Saharan Africa",
44067369,
45.87880488,
4.601678261
],
[
"Congo, Rep.",
1995,
"Sub-Saharan Africa",
2732706,
54.60939024,
24.49238466
],
[
"Costa Rica",
1995,
"Latin America & Caribbean",
3468918,
76.80880488,
219.9462904
],
[
"Cote d'Ivoire",
1995,
"Sub-Saharan Africa",
14677200,
51.05136585,
37.92612511
],
[
"Croatia",
1995,
"Europe & Central Asia",
4669000,
72.08439024,
323.3719068
],
[
"Cuba",
1995,
"Latin America & Caribbean",
10900795,
75.2067561,
111.8448017
],
[
"Cyprus",
1995,
"Europe & Central Asia",
855424,
77.26231707,
706.3804455
],
[
"Czech Republic",
1995,
"Europe & Central Asia",
10327253,
73.07487805,
374.4310488
],
[
"Denmark",
1995,
"Europe & Central Asia",
5233373,
75.21268293,
2827.299759
],
[
"Djibouti",
1995,
"Middle East & North Africa",
626537,
52.62419512,
31.99253183
],
[
"Dominican Republic",
1995,
"Latin America & Caribbean",
7916309,
69.59173171,
108.3197485
],
[
"Ecuador",
1995,
"Latin America & Caribbean",
11384506,
71.252,
72.90344452
],
[
"Egypt, Arab Rep.",
1995,
"Middle East & North Africa",
62063810,
65.59346341,
37.44267234
],
[
"El Salvador",
1995,
"Latin America & Caribbean",
5733401,
68.91380488,
105.6978223
],
[
"Equatorial Guinea",
1995,
"Sub-Saharan Africa",
442527,
48.24260976,
21.83153613
],
[
"Eritrea",
1995,
"Sub-Saharan Africa",
3212503,
52.40460976,
8.433300418
],
[
"Estonia",
1995,
"Europe & Central Asia",
1436634,
67.54390244,
164.7858513
],
[
"Ethiopia",
1995,
"Sub-Saharan Africa",
57042197,
49.31363415,
3.805632427
],
[
"Fiji",
1995,
"East Asia & Pacific",
775651,
66.63890244,
77.74015923
],
[
"Finland",
1995,
"Europe & Central Asia",
5107790,
76.4095122,
2010.204221
],
[
"France",
1995,
"Europe & Central Asia",
59555439,
77.75121951,
2741.333692
],
[
"Gabon",
1995,
"Sub-Saharan Africa",
1087327,
61.09760976,
136.3501403
],
[
"Gambia, The",
1995,
"Sub-Saharan Africa",
1126183,
53.71353659,
22.73855825
],
[
"Georgia",
1995,
"Europe & Central Asia",
4734000,
70.49026829,
29.01632333
],
[
"Germany",
1995,
"Europe & Central Asia",
81678051,
76.42195122,
3124.275511
],
[
"Ghana",
1995,
"Sub-Saharan Africa",
16996901,
57.99292683,
19.96894909
],
[
"Greece",
1995,
"Europe & Central Asia",
10634385,
77.58536585,
1063.911422
],
[
"Grenada",
1995,
"Latin America & Caribbean",
100163,
71.68536585,
190.5235207
],
[
"Guatemala",
1995,
"Latin America & Caribbean",
10015675,
64.98639024,
53.7335983
],
[
"Guinea",
1995,
"Sub-Saharan Africa",
7565235,
45.65185366,
27.0584614
],
[
"Guinea-Bissau",
1995,
"Sub-Saharan Africa",
1125392,
43.67529268,
25.50951017
],
[
"Guyana",
1995,
"Latin America & Caribbean",
727979,
62.2924878,
43.26337355
],
[
"Haiti",
1995,
"Latin America & Caribbean",
7877569,
57.14607317,
22.59973072
],
[
"Honduras",
1995,
"Latin America & Caribbean",
5575099,
68.607,
37.91905487
],
[
"Hungary",
1995,
"Europe & Central Asia",
10328965,
69.79170732,
323.2269577
],
[
"Iceland",
1995,
"Europe & Central Asia",
267468,
77.98439024,
2213.016501
],
[
"India",
1995,
"South Asia",
964486155,
59.83156098,
15.73572481
],
[
"Indonesia",
1995,
"East Asia & Pacific",
199400339,
63.97770732,
19.8062839
],
[
"Iran, Islamic Rep.",
1995,
"Middle East & North Africa",
59757114,
68.15446341,
68.23097353
],
[
"Ireland",
1995,
"Europe & Central Asia",
3608841,
75.57085366,
1237.505598
],
[
"Israel",
1995,
"Middle East & North Africa",
5545000,
77.45121951,
1324.920705
],
[
"Italy",
1995,
"Europe & Central Asia",
56844303,
78.01439024,
1437.511637
],
[
"Jamaica",
1995,
"Latin America & Caribbean",
2480000,
70.26346341,
96.62362412
],
[
"Japan",
1995,
"East Asia & Pacific",
125439000,
79.53634146,
2891.413366
],
[
"Jordan",
1995,
"Middle East & North Africa",
4195000,
71.4124878,
127.1383081
],
[
"Kazakhstan",
1995,
"Europe & Central Asia",
15815626.38,
64.9195122,
48.24822076
],
[
"Kenya",
1995,
"Sub-Saharan Africa",
27425720,
56.14921951,
14.03375221
],
[
"Kiribati",
1995,
"East Asia & Pacific",
77248,
59.43902439,
70.39449176
],
[
"Korea, Rep.",
1995,
"East Asia & Pacific",
45093000,
73.39439024,
441.894088
],
[
"Kuwait",
1995,
"Middle East & North Africa",
1627911,
73.29421951,
628.1961821
],
[
"Kyrgyz Republic",
1995,
"Europe & Central Asia",
4560400,
65.7902439,
22.32242556
],
[
"Lao PDR",
1995,
"East Asia & Pacific",
4795112,
58.18214634,
15.25084643
],
[
"Latvia",
1995,
"Europe & Central Asia",
2485056,
66.39121951,
115.3385002
],
[
"Lebanon",
1995,
"Middle East & North Africa",
3462974,
69.84007317,
360.9360079
],
[
"Lesotho",
1995,
"Sub-Saharan Africa",
1794531,
56.93787805,
36.62989499
],
[
"Liberia",
1995,
"Sub-Saharan Africa",
2094591,
42.247,
0
],
[
"Libya",
1995,
"Middle East & North Africa",
4775009,
70.65312195,
187.0684146
],
[
"Lithuania",
1995,
"Europe & Central Asia",
3629102,
69.00634146,
99.68036152
],
[
"Luxembourg",
1995,
"Europe & Central Asia",
408625,
76.51219512,
2815.880294
],
[
"Macedonia, FYR",
1995,
"Europe & Central Asia",
1963484,
72.0875122,
200.7193262
],
[
"Madagascar",
1995,
"Sub-Saharan Africa",
13129227,
54.85473171,
6.736196001
],
[
"Malawi",
1995,
"Sub-Saharan Africa",
9883350,
46.64268293,
7.134838273
],
[
"Malaysia",
1995,
"East Asia & Pacific",
20720810,
71.16343902,
124.0931647
],
[
"Maldives",
1995,
"South Asia",
248712,
65.25373171,
90.72809102
],
[
"Mali",
1995,
"Sub-Saharan Africa",
9824510,
45.6975122,
14.41308033
],
[
"Malta",
1995,
"Middle East & North Africa",
370433,
77.14390244,
591.2562821
],
[
"Mauritania",
1995,
"Sub-Saharan Africa",
2292053,
56.65270732,
29.44986431
],
[
"Mauritius",
1995,
"Sub-Saharan Africa",
1122457,
70.32585366,
128.5976076
],
[
"Mexico",
1995,
"Latin America & Caribbean",
92272749,
72.73763415,
177.2120845
],
[
"Micronesia, Fed. Sts.",
1995,
"East Asia & Pacific",
107233,
66.7597561,
189.069848
],
[
"Moldova",
1995,
"Europe & Central Asia",
3675099,
66.71587805,
30.02743236
],
[
"Mongolia",
1995,
"East Asia & Pacific",
2306131,
61.26156098,
19.83732627
],
[
"Montenegro",
1995,
"Europe & Central Asia",
643227,
75.80412195,
134.2495574
],
[
"Morocco",
1995,
"Middle East & North Africa",
26928600,
66.61331707,
47.87337522
],
[
"Mozambique",
1995,
"Sub-Saharan Africa",
15933452,
45.41095122,
7.621471708
],
[
"Myanmar",
1995,
"East Asia & Pacific",
42133199,
60.07834146,
2.559207131
],
[
"Namibia",
1995,
"Sub-Saharan Africa",
1651352,
60.36073171,
131.3904283
],
[
"Nepal",
1995,
"South Asia",
21594872,
57.46863415,
10.3941506
],
[
"Netherlands",
1995,
"Europe & Central Asia",
15459006,
77.40463415,
2256.667297
],
[
"New Zealand",
1995,
"East Asia & Pacific",
3673400,
76.73414634,
1188.858081
],
[
"Nicaragua",
1995,
"Latin America & Caribbean",
4637040,
67.30419512,
57.76637932
],
[
"Niger",
1995,
"Sub-Saharan Africa",
9178575,
44.4775122,
7.027463053
],
[
"Nigeria",
1995,
"Sub-Saharan Africa",
110014688,
45.11570732,
37.62323656
],
[
"Norway",
1995,
"Europe & Central Asia",
4359184,
77.73658537,
3122.078999
],
[
"Oman",
1995,
"Middle East & North Africa",
2232018,
73.04302439,
222.8874855
],
[
"Pakistan",
1995,
"South Asia",
127346713,
62.04573171,
15.16170985
],
[
"Palau",
1995,
"East Asia & Pacific",
17254,
71.84463415,
724.5260282
],
[
"Panama",
1995,
"Latin America & Caribbean",
2676926,
73.28321951,
228.0227395
],
[
"Papua New Guinea",
1995,
"East Asia & Pacific",
4715617,
57.35195122,
35.95514202
],
[
"Paraguay",
1995,
"Latin America & Caribbean",
4795365,
68.88021951,
111.9301481
],
[
"Peru",
1995,
"Latin America & Caribbean",
23827163,
67.98478049,
100.8185044
],
[
"Philippines",
1995,
"East Asia & Pacific",
69255386,
66.01853659,
36.91565447
],
[
"Poland",
1995,
"Europe & Central Asia",
38594998,
71.89268293,
198.9525321
],
[
"Portugal",
1995,
"Europe & Central Asia",
10030376,
75.31219512,
873.8012851
],
[
"Qatar",
1995,
"Middle East & North Africa",
501371,
75.28273171,
601.2919169
],
[
"Romania",
1995,
"Europe & Central Asia",
22684270,
69.45609756,
53.46326946
],
[
"Russian Federation",
1995,
"Europe & Central Asia",
148141000,
65.22121951,
112.9984123
],
[
"Rwanda",
1995,
"Sub-Saharan Africa",
5570206,
30.47317073,
10.3458127
],
[
"Samoa",
1995,
"East Asia & Pacific",
168257,
67.51502439,
55.92837495
],
[
"Sao Tome and Principe",
1995,
"Sub-Saharan Africa",
127935,
61.6612439,
58.91974358
],
[
"Saudi Arabia",
1995,
"Middle East & North Africa",
18491845,
70.47268293,
227.993044
],
[
"Senegal",
1995,
"Sub-Saharan Africa",
8369125,
54.36307317,
22.93506421
],
[
"Sierra Leone",
1995,
"Sub-Saharan Africa",
3898363,
37.20870732,
34.18819945
],
[
"Singapore",
1995,
"East Asia & Pacific",
3524500,
76.39512195,
379.1411429
],
[
"Slovak Republic",
1995,
"Europe & Central Asia",
5361999,
72.25365854,
221.4541447
],
[
"Slovenia",
1995,
"Europe & Central Asia",
1989872,
73.95853659,
785.0682234
],
[
"Solomon Islands",
1995,
"East Asia & Pacific",
356404,
59.69595122,
47.31181921
],
[
"Somalia",
1995,
"Sub-Saharan Africa",
6524697,
44.71217073,
4.617992892
],
[
"South Africa",
1995,
"Sub-Saharan Africa",
39120000,
59.88741463,
270.9442208
],
[
"Spain",
1995,
"Europe & Central Asia",
39387017,
77.98073171,
1127.904409
],
[
"Sri Lanka",
1995,
"South Asia",
18136000,
69.22885366,
24.50414947
],
[
"St. Lucia",
1995,
"Latin America & Caribbean",
145437,
71.43414634,
181.0605384
],
[
"St. Vincent and the Grenadines",
1995,
"Latin America & Caribbean",
108087,
70.01841463,
109.9173002
],
[
"Sudan",
1995,
"Sub-Saharan Africa",
24538815,
54.29097561,
15.50589319
],
[
"Suriname",
1995,
"Latin America & Caribbean",
435920,
67.80585366,
82.49559126
],
[
"Swaziland",
1995,
"Sub-Saharan Africa",
963591,
56.39373171,
87.45248949
],
[
"Sweden",
1995,
"Europe & Central Asia",
8826939,
78.7404878,
2288.950104
],
[
"Switzerland",
1995,
"Europe & Central Asia",
7040687,
78.41707317,
4270.824645
],
[
"Syrian Arab Republic",
1995,
"Middle East & North Africa",
14171130,
72.83553659,
51.69369976
],
[
"Tajikistan",
1995,
"Europe & Central Asia",
5775404,
62.37460976,
3.05721148
],
[
"Tanzania",
1995,
"Sub-Saharan Africa",
29943732,
49.5737561,
6.282208132
],
[
"Thailand",
1995,
"East Asia & Pacific",
59650157,
72.26117073,
99.47389707
],
[
"Togo",
1995,
"Sub-Saharan Africa",
4085492,
54.05009756,
17.29147986
],
[
"Tonga",
1995,
"East Asia & Pacific",
95907,
70.11926829,
87.23481575
],
[
"Trinidad and Tobago",
1995,
"Latin America & Caribbean",
1261443,
68.99709756,
198.1865467
],
[
"Tunisia",
1995,
"Middle East & North Africa",
8957500,
71.35365854,
129.5635684
],
[
"Turkey",
1995,
"Europe & Central Asia",
58864649,
66.07309756,
95.49118806
],
[
"Turkmenistan",
1995,
"Europe & Central Asia",
4188010,
63.03073171,
43.02047946
],
[
"Uganda",
1995,
"Sub-Saharan Africa",
20831075,
44.86529268,
15.30524819
],
[
"Ukraine",
1995,
"Europe & Central Asia",
51512298.61,
67.11707317,
49.06154122
],
[
"United Arab Emirates",
1995,
"Middle East & North Africa",
2348539,
73.43485366,
737.9431078
],
[
"United Kingdom",
1995,
"Europe & Central Asia",
58019030,
76.83658537,
1362.195446
],
[
"United States",
1995,
"North America",
266278000,
75.62195122,
3747.692121
],
[
"Uruguay",
1995,
"Latin America & Caribbean",
3223401,
73.47626829,
934.1144209
],
[
"Uzbekistan",
1995,
"Europe & Central Asia",
22785000,
66.31760976,
28.65832202
],
[
"Vanuatu",
1995,
"East Asia & Pacific",
168263,
65.45934146,
43.21763981
],
[
"Venezuela, RB",
1995,
"Latin America & Caribbean",
22043000,
72.1695122,
143.865097
],
[
"Vietnam",
1995,
"East Asia & Pacific",
71995500,
69.43168293,
14.53484289
],
[
"Yemen, Rep.",
1995,
"Middle East & North Africa",
15148172,
57.37890244,
39.47933316
],
[
"Zambia",
1995,
"Sub-Saharan Africa",
8919456,
43.51526829,
21.83678219
],
[
"Zimbabwe",
1995,
"Sub-Saharan Africa",
11684693,
53.09839024,
97.73810755
],
[
"Albania",
1996,
"Europe & Central Asia",
3112597,
72.24107317,
43.04585912
],
[
"Algeria",
1996,
"Middle East & North Africa",
28786855,
68.7344878,
61.7699582
],
[
"Angola",
1996,
"Sub-Saharan Africa",
12452725,
42.50160976,
18.53179493
],
[
"Argentina",
1996,
"Latin America & Caribbean",
35287113,
72.84629268,
619.1318441
],
[
"Armenia",
1996,
"Europe & Central Asia",
3172185,
69.02943902,
29.26083051
],
[
"Australia",
1996,
"East Asia & Pacific",
18311000,
78.07804878,
1760.462837
],
[
"Austria",
1996,
"Europe & Central Asia",
7959017,
76.98365854,
2811.081798
],
[
"Azerbaijan",
1996,
"Europe & Central Asia",
7763000,
64.994,
24.80044296
],
[
"Bahamas, The",
1996,
"Latin America & Caribbean",
283677,
70.34804878,
879.8801445
],
[
"Bahrain",
1996,
"Middle East & North Africa",
574914,
73.2802439,
485.8072241
],
[
"Bangladesh",
1996,
"South Asia",
119928682,
62.66212195,
11.49715689
],
[
"Barbados",
1996,
"Latin America & Caribbean",
264237,
75.04263415,
464.9801692
],
[
"Belarus",
1996,
"Europe & Central Asia",
10160000,
68.61219512,
88.26239934
],
[
"Belgium",
1996,
"Europe & Central Asia",
10156637,
77.18731707,
2148.286059
],
[
"Belize",
1996,
"Latin America & Caribbean",
222000,
73.22114634,
103.8966353
],
[
"Benin",
1996,
"Sub-Saharan Africa",
5821985,
51.3245122,
18.60061854
],
[
"Bhutan",
1996,
"South Asia",
520529,
57.62943902,
37.46879672
],
[
"Bolivia",
1996,
"Latin America & Caribbean",
7637622,
61.48729268,
44.82368206
],
[
"Bosnia and Herzegovina",
1996,
"Europe & Central Asia",
3305672,
69.71419512,
93.97065382
],
[
"Botswana",
1996,
"Sub-Saharan Africa",
1623704,
57.47765854,
124.9455052
],
[
"Brazil",
1996,
"Latin America & Caribbean",
164342524,
68.73156098,
349.931989
],
[
"Brunei Darussalam",
1996,
"East Asia & Pacific",
297188,
75.22392683,
637.7559702
],
[
"Bulgaria",
1996,
"Europe & Central Asia",
8362826,
70.89731707,
55.27925164
],
[
"Burkina Faso",
1996,
"Sub-Saharan Africa",
10992170,
49.15943902,
11.86230176
],
[
"Burundi",
1996,
"Sub-Saharan Africa",
6140258,
44.75841463,
8.055769405
],
[
"Cambodia",
1996,
"East Asia & Pacific",
11458858,
56.25726829,
29.06056863
],
[
"Cameroon",
1996,
"Sub-Saharan Africa",
14287475,
51.59990244,
34.47433331
],
[
"Canada",
1996,
"North America",
29671900,
78.2304878,
1828.837371
],
[
"Cape Verde",
1996,
"Sub-Saharan Africa",
404166,
67.60319512,
60.25957229
],
[
"Central African Republic",
1996,
"Sub-Saharan Africa",
3406451,
45.48017073,
11.83849103
],
[
"Chad",
1996,
"Sub-Saharan Africa",
7219081,
49.58585366,
12.22629272
],
[
"Chile",
1996,
"Latin America & Caribbean",
14630769,
75.33963415,
373.0966799
],
[
"China",
1996,
"East Asia & Pacific",
1217550000,
70.59902439,
26.43395356
],
[
"Colombia",
1996,
"Latin America & Caribbean",
37112621,
69.75760976,
213.6164725
],
[
"Comoros",
1996,
"Sub-Saharan Africa",
507062,
56.94214634,
20.60519301
],
[
"Congo, Dem. Rep.",
1996,
"Sub-Saharan Africa",
45295039,
45.59668293,
4.249300939
],
[
"Congo, Rep.",
1996,
"Sub-Saharan Africa",
2810118,
54.42146341,
25.88431619
],
[
"Costa Rica",
1996,
"Latin America & Caribbean",
3557095,
77.02165854,
221.457935
],
[
"Cote d'Ivoire",
1996,
"Sub-Saharan Africa",
15089912,
50.74712195,
44.70398662
],
[
"Croatia",
1996,
"Europe & Central Asia",
4494000,
72.36536585,
369.1260043
],
[
"Cuba",
1996,
"Latin America & Caribbean",
10949206,
75.4572439,
119.355224
],
[
"Cyprus",
1996,
"Europe & Central Asia",
873277,
77.4057561,
754.9958554
],
[
"Czech Republic",
1996,
"Europe & Central Asia",
10315241,
73.71463415,
403.3384441
],
[
"Denmark",
1996,
"Europe & Central Asia",
5263074,
75.59146341,
2878.187882
],
[
"Djibouti",
1996,
"Middle East & North Africa",
644434,
52.86539024,
30.67193109
],
[
"Dominican Republic",
1996,
"Latin America & Caribbean",
8054768,
69.85960976,
112.4990954
],
[
"Ecuador",
1996,
"Latin America & Caribbean",
11584074,
71.70946341,
80.84272201
],
[
"Egypt, Arab Rep.",
1996,
"Middle East & North Africa",
63120498,
66.33558537,
45.61968968
],
[
"El Salvador",
1996,
"Latin America & Caribbean",
5791403,
69.11129268,
134.993196
],
[
"Equatorial Guinea",
1996,
"Sub-Saharan Africa",
457321,
48.4,
26.50892425
],
[
"Eritrea",
1996,
"Sub-Saharan Africa",
3263016,
53.227,
7.760802627
],
[
"Estonia",
1996,
"Europe & Central Asia",
1415594,
69.61219512,
218.0862889
],
[
"Ethiopia",
1996,
"Sub-Saharan Africa",
58774378,
49.77526829,
4.222360416
],
[
"Fiji",
1996,
"East Asia & Pacific",
784713,
66.8402439,
87.28135888
],
[
"Finland",
1996,
"Europe & Central Asia",
5124573,
76.69341463,
2011.353485
],
[
"France",
1996,
"Europe & Central Asia",
59798609,
77.95365854,
2738.562538
],
[
"Gabon",
1996,
"Sub-Saharan Africa",
1118215,
60.87943902,
150.2005121
],
[
"Gambia, The",
1996,
"Sub-Saharan Africa",
1158308,
53.95963415,
24.65505556
],
[
"Georgia",
1996,
"Europe & Central Asia",
4616100,
70.62929268,
45.96064889
],
[
"Germany",
1996,
"Europe & Central Asia",
81914831,
76.67317073,
3100.753783
],
[
"Ghana",
1996,
"Sub-Saharan Africa",
17429209,
57.9684878,
20.44699322
],
[
"Greece",
1996,
"Europe & Central Asia",
10709173,
77.68536585,
1112.598367
],
[
"Grenada",
1996,
"Latin America & Caribbean",
100707,
72.05968293,
203.4322866
],
[
"Guatemala",
1996,
"Latin America & Caribbean",
10246429,
65.54380488,
55.67396767
],
[
"Guinea",
1996,
"Sub-Saharan Africa",
7805735,
46.04882927,
27.78160698
],
[
"Guinea-Bissau",
1996,
"Sub-Saharan Africa",
1147908,
43.8855122,
20.2808109
],
[
"Guyana",
1996,
"Latin America & Caribbean",
728990,
62.64787805,
47.86845951
],
[
"Haiti",
1996,
"Latin America & Caribbean",
8031903,
57.46107317,
23.84424143
],
[
"Honduras",
1996,
"Latin America & Caribbean",
5706605,
69.05453659,
35.48307283
],
[
"Hungary",
1996,
"Europe & Central Asia",
10311238,
70.32878049,
315.3165681
],
[
"Iceland",
1996,
"Europe & Central Asia",
268916,
78.77780488,
2274.576366
],
[
"India",
1996,
"South Asia",
982553253,
60.17860976,
15.85800609
],
[
"Indonesia",
1996,
"East Asia & Pacific",
202257039,
64.32780488,
22.45919155
],
[
"Iran, Islamic Rep.",
1996,
"Middle East & North Africa",
60815686,
68.60319512,
86.20833046
],
[
"Iraq",
1996,
"Middle East & North Africa",
21545638,
71.31178049,
8.532080636
],
[
"Ireland",
1996,
"Europe & Central Asia",
3637510,
75.78536585,
1328.207138
],
[
"Israel",
1996,
"Middle East & North Africa",
5692000,
78.10487805,
1421.778459
],
[
"Italy",
1996,
"Europe & Central Asia",
56860281,
78.33195122,
1634.46979
],
[
"Jamaica",
1996,
"Latin America & Caribbean",
2509923.425,
70.25526829,
123.0235648
],
[
"Japan",
1996,
"East Asia & Pacific",
125761000,
80.2002439,
2600.126773
],
[
"Jordan",
1996,
"Middle East & North Africa",
4325045,
71.56109756,
132.2225268
],
[
"Kazakhstan",
1996,
"Europe & Central Asia",
15577894.26,
64.1097561,
58.14490015
],
[
"Kenya",
1996,
"Sub-Saharan Africa",
28191597,
55.23631707,
17.72541265
],
[
"Korea, Rep.",
1996,
"East Asia & Pacific",
45525000,
73.82109756,
493.5892529
],
[
"Kuwait",
1996,
"Middle East & North Africa",
1628120,
73.39565854,
670.2866372
],
[
"Kyrgyz Republic",
1996,
"Europe & Central Asia",
4628400,
66.54390244,
24.751517
],
[
"Lao PDR",
1996,
"East Asia & Pacific",
4907960,
58.89558537,
17.57613179
],
[
"Latvia",
1996,
"Europe & Central Asia",
2457222,
68.77658537,
140.7090756
],
[
"Lebanon",
1996,
"Middle East & North Africa",
3539137,
70.0154878,
414.4023495
],
[
"Lesotho",
1996,
"Sub-Saharan Africa",
1829222,
55.25160976,
34.41202173
],
[
"Liberia",
1996,
"Sub-Saharan Africa",
2203809,
42.62707317,
0
],
[
"Libya",
1996,
"Middle East & North Africa",
4862665,
71.13378049,
190.2346902
],
[
"Lithuania",
1996,
"Europe & Central Asia",
3601613,
70.10804878,
130.6363838
],
[
"Luxembourg",
1996,
"Europe & Central Asia",
414225,
76.5195122,
2810.233395
],
[
"Macedonia, FYR",
1996,
"Europe & Central Asia",
1973283,
72.25019512,
202.2720334
],
[
"Madagascar",
1996,
"Sub-Saharan Africa",
13547271,
55.80307317,
9.302407353
],
[
"Malawi",
1996,
"Sub-Saharan Africa",
10070605,
46.41214634,
10.45025529
],
[
"Malaysia",
1996,
"East Asia & Pacific",
21247102,
71.3685122,
136.7372325
],
[
"Maldives",
1996,
"South Asia",
253960,
66.25185366,
112.0258252
],
[
"Mali",
1996,
"Sub-Saharan Africa",
10092753,
46.01304878,
21.58289635
],
[
"Malta",
1996,
"Middle East & North Africa",
372687,
77.2902439,
639.5736176
],
[
"Mauritania",
1996,
"Sub-Saharan Africa",
2357678,
56.73146341,
23.30843362
],
[
"Mauritius",
1996,
"Sub-Saharan Africa",
1133996,
70.32292683,
135.4311103
],
[
"Mexico",
1996,
"Latin America & Caribbean",
93858373,
73.09429268,
184.1060703
],
[
"Micronesia, Fed. Sts.",
1996,
"East Asia & Pacific",
107904,
66.86770732,
174.5158354
],
[
"Moldova",
1996,
"Europe & Central Asia",
3667748,
66.61812195,
40.14913409
],
[
"Mongolia",
1996,
"East Asia & Pacific",
2325369,
61.49907317,
20.53055637
],
[
"Montenegro",
1996,
"Europe & Central Asia",
644121,
75.68431707,
98.48825995
],
[
"Morocco",
1996,
"Middle East & North Africa",
27323664,
67.04836585,
51.5572843
],
[
"Mozambique",
1996,
"Sub-Saharan Africa",
16412893,
45.91082927,
8.458423576
],
[
"Myanmar",
1996,
"East Asia & Pacific",
42735941,
60.52641463,
2.530114667
],
[
"Namibia",
1996,
"Sub-Saharan Africa",
1700975,
59.95790244,
134.7092741
],
[
"Nepal",
1996,
"South Asia",
22137784,
58.2735122,
10.7466985
],
[
"Netherlands",
1996,
"Europe & Central Asia",
15530498,
77.43560976,
2210.615552
],
[
"New Zealand",
1996,
"East Asia & Pacific",
3732000,
76.78780488,
1277.928324
],
[
"Nicaragua",
1996,
"Latin America & Caribbean",
4733164,
67.78190244,
58.33204443
],
[
"Niger",
1996,
"Sub-Saharan Africa",
9499892,
45.22534146,
6.759058726
],
[
"Nigeria",
1996,
"Sub-Saharan Africa",
112618306,
45.13321951,
52.92157555
],
[
"Norway",
1996,
"Europe & Central Asia",
4381336,
78.1504878,
3180.385132
],
[
"Oman",
1996,
"Middle East & North Africa",
2258730,
73.29053659,
237.8275928
],
[
"Pakistan",
1996,
"South Asia",
130737306,
62.282,
15.0987552
],
[
"Panama",
1996,
"Latin America & Caribbean",
2731717,
73.46585366,
245.12047
],
[
"Papua New Guinea",
1996,
"East Asia & Pacific",
4840693,
57.63085366,
38.85140858
],
[
"Paraguay",
1996,
"Latin America & Caribbean",
4905150,
69.07980488,
121.2468697
],
[
"Peru",
1996,
"Latin America & Caribbean",
24248671,
68.49209756,
103.7652118
],
[
"Philippines",
1996,
"East Asia & Pacific",
70831419,
66.18063415,
41.42704153
],
[
"Poland",
1996,
"Europe & Central Asia",
38624370,
72.24634146,
240.4704645
],
[
"Portugal",
1996,
"Europe & Central Asia",
10057861,
75.26097561,
938.9258094
],
[
"Qatar",
1996,
"Middle East & North Africa",
512422,
75.49580488,
640.648455
],
[
"Romania",
1996,
"Europe & Central Asia",
22619004,
69.10487805,
52.87103678
],
[
"Russian Federation",
1996,
"Europe & Central Asia",
147739000,
66.19414634,
146.6043859
],
[
"Rwanda",
1996,
"Sub-Saharan Africa",
5803830,
33.97580488,
10.99523552
],
[
"Samoa",
1996,
"East Asia & Pacific",
169969,
67.95426829,
69.31246841
],
[
"San Marino",
1996,
"Europe & Central Asia",
25897,
79.1195122,
2929.517227
],
[
"Sao Tome and Principe",
1996,
"Sub-Saharan Africa",
130499,
61.80363415,
69.78489687
],
[
"Saudi Arabia",
1996,
"Middle East & North Africa",
18786467,
70.69560976,
248.3618144
],
[
"Senegal",
1996,
"Sub-Saharan Africa",
8591861,
54.60453659,
24.08110977
],
[
"Sierra Leone",
1996,
"Sub-Saharan Africa",
3898177,
37.41887805,
37.00160833
],
[
"Singapore",
1996,
"East Asia & Pacific",
3670700,
76.74634146,
769.7657191
],
[
"Slovak Republic",
1996,
"Europe & Central Asia",
5373361,
72.65365854,
253.4417282
],
[
"Slovenia",
1996,
"Europe & Central Asia",
1988628,
74.45853659,
811.8607602
],
[
"Solomon Islands",
1996,
"East Asia & Pacific",
366363,
60.29658537,
46.57937916
],
[
"Somalia",
1996,
"Sub-Saharan Africa",
6628554,
45.42792683,
4.93193825
],
[
"South Africa",
1996,
"Sub-Saharan Africa",
40000246.95,
59.06270732,
271.1459139
],
[
"Spain",
1996,
"Europe & Central Asia",
39478186,
78.1204878,
1176.675537
],
[
"Sri Lanka",
1996,
"South Asia",
18336000,
69.1782439,
26.13269018
],
[
"St. Lucia",
1996,
"Latin America & Caribbean",
147062,
71.54878049,
208.6694843
],
[
"St. Vincent and the Grenadines",
1996,
"Latin America & Caribbean",
108049,
70.10019512,
115.8503481
],
[
"Sudan",
1996,
"Sub-Saharan Africa",
25160191,
54.71034146,
11.47487823
],
[
"Suriname",
1996,
"Latin America & Caribbean",
441896,
67.83597561,
144.347836
],
[
"Swaziland",
1996,
"Sub-Saharan Africa",
984632,
55.008,
87.95654767
],
[
"Sweden",
1996,
"Europe & Central Asia",
8840998,
78.95902439,
2564.233203
],
[
"Switzerland",
1996,
"Europe & Central Asia",
7071850,
78.89609756,
4266.357113
],
[
"Syrian Arab Republic",
1996,
"Middle East & North Africa",
14518843,
73.11295122,
59.48382827
],
[
"Tajikistan",
1996,
"Europe & Central Asia",
5860334,
62.56131707,
5.52973549
],
[
"Tanzania",
1996,
"Sub-Saharan Africa",
30783155,
49.56763415,
7.227818606
],
[
"Thailand",
1996,
"East Asia & Pacific",
60258113,
72.25392683,
115.9729658
],
[
"Togo",
1996,
"Sub-Saharan Africa",
4208738,
54.21117073,
18.21428139
],
[
"Tonga",
1996,
"East Asia & Pacific",
96196,
70.2385122,
96.20535153
],
[
"Trinidad and Tobago",
1996,
"Latin America & Caribbean",
1268851,
68.91290244,
196.5735109
],
[
"Tunisia",
1996,
"Middle East & North Africa",
9089300,
71.55365854,
128.4128387
],
[
"Turkey",
1996,
"Europe & Central Asia",
59821978,
66.74597561,
116.6936064
],
[
"Turkmenistan",
1996,
"Europe & Central Asia",
4267690,
63.2077561,
18.099747
],
[
"Uganda",
1996,
"Sub-Saharan Africa",
21473592,
44.7917561,
14.90511467
],
[
"Ukraine",
1996,
"Europe & Central Asia",
51057188.98,
67.31073171,
53.81212448
],
[
"United Arab Emirates",
1996,
"Middle East & North Africa",
2473983,
73.68009756,
731.2627993
],
[
"United Kingdom",
1996,
"Europe & Central Asia",
58166950,
77.08780488,
1435.140089
],
[
"United States",
1996,
"North America",
269394000,
75.99658537,
3899.976933
],
[
"Uruguay",
1996,
"Latin America & Caribbean",
3235549,
73.52804878,
821.8951744
],
[
"Uzbekistan",
1996,
"Europe & Central Asia",
23225000,
66.43263415,
40.74676417
],
[
"Vanuatu",
1996,
"East Asia & Pacific",
171783,
65.8994878,
38.92579119
],
[
"Venezuela, RB",
1996,
"Latin America & Caribbean",
22502000,
72.3795122,
105.9768924
],
[
"Vietnam",
1996,
"East Asia & Pacific",
73156700,
69.98985366,
16.58291879
],
[
"Yemen, Rep.",
1996,
"Middle East & North Africa",
15710211,
57.72378049,
25.0885402
],
[
"Zambia",
1996,
"Sub-Saharan Africa",
9161931,
43.0084878,
21.01976226
],
[
"Zimbabwe",
1996,
"Sub-Saharan Africa",
11891290,
51.12426829,
98.85423058
],
[
"Albania",
1997,
"Europe & Central Asia",
3091902,
72.69607317,
36.13520839
],
[
"Algeria",
1997,
"Middle East & North Africa",
29242917,
69.02565854,
66.89333634
],
[
"Angola",
1997,
"Sub-Saharan Africa",
12792237,
43.06163415,
28.4047932
],
[
"Antigua and Barbuda",
1997,
"Latin America & Caribbean",
72322,
74.73170732,
372.3061575
],
[
"Argentina",
1997,
"Latin America & Caribbean",
35714929,
73.06739024,
685.9666339
],
[
"Armenia",
1997,
"Europe & Central Asia",
3134836,
69.49163415,
30.28430879
],
[
"Australia",
1997,
"East Asia & Pacific",
18517000,
78.4804878,
1761.073558
],
[
"Austria",
1997,
"Europe & Central Asia",
7968041,
77.38756098,
2559.309244
],
[
"Azerbaijan",
1997,
"Europe & Central Asia",
7838250,
65.46239024,
27.29444862
],
[
"Bahamas, The",
1997,
"Latin America & Caribbean",
287217,
70.66270732,
958.6658311
],
[
"Bahrain",
1997,
"Middle East & North Africa",
592986,
73.41346341,
504.1904908
],
[
"Bangladesh",
1997,
"South Asia",
122370403,
63.19656098,
9.267028798
],
[
"Barbados",
1997,
"Latin America & Caribbean",
265088,
75.12739024,
493.8718695
],
[
"Belarus",
1997,
"Europe & Central Asia",
10117000,
68.46097561,
91.07781094
],
[
"Belgium",
1997,
"Europe & Central Asia",
10181245,
77.37073171,
1905.237829
],
[
"Belize",
1997,
"Latin America & Caribbean",
230000,
73.30070732,
111.3801848
],
[
"Benin",
1997,
"Sub-Saharan Africa",
5988093,
51.67407317,
16.33317897
],
[
"Bhutan",
1997,
"South Asia",
528222,
58.56214634,
49.6307364
],
[
"Bolivia",
1997,
"Latin America & Caribbean",
7804333,
61.86573171,
44.90497412
],
[
"Bosnia and Herzegovina",
1997,
"Europe & Central Asia",
3365616,
71.34795122,
88.86015434
],
[
"Botswana",
1997,
"Sub-Saharan Africa",
1660538,
55.65153659,
137.5418759
],
[
"Brazil",
1997,
"Latin America & Caribbean",
166869168,
69.10909756,
355.4743668
],
[
"Brunei Darussalam",
1997,
"East Asia & Pacific",
304726,
75.48090244,
633.8904842
],
[
"Bulgaria",
1997,
"Europe & Central Asia",
8312068,
70.35121951,
63.86652878
],
[
"Burkina Faso",
1997,
"Sub-Saharan Africa",
11301608,
49.36997561,
10.91257905
],
[
"Burundi",
1997,
"Sub-Saharan Africa",
6181493,
45.02670732,
8.143476438
],
[
"Cambodia",
1997,
"East Asia & Pacific",
11731187,
56.49226829,
23.44717788
],
[
"Cameroon",
1997,
"Sub-Saharan Africa",
14631908,
51.19153659,
28.93214797
],
[
"Canada",
1997,
"North America",
29987200,
78.4804878,
1873.002802
],
[
"Cape Verde",
1997,
"Sub-Saharan Africa",
412893,
68.03704878,
56.58519381
],
[
"Central African Republic",
1997,
"Sub-Saharan Africa",
3484027,
44.89163415,
10.55410828
],
[
"Chad",
1997,
"Sub-Saharan Africa",
7448585,
49.3045122,
11.49602723
],
[
"Chile",
1997,
"Latin America & Caribbean",
14840038,
75.66980488,
401.7580375
],
[
"China",
1997,
"East Asia & Pacific",
1230075000,
70.76631707,
30.98156881
],
[
"Colombia",
1997,
"Latin America & Caribbean",
37775054,
70.0852439,
252.8904836
],
[
"Comoros",
1997,
"Sub-Saharan Africa",
520151,
57.17646341,
18.55093041
],
[
"Congo, Dem. Rep.",
1997,
"Sub-Saharan Africa",
46369335,
45.41002439,
5.221841737
],
[
"Congo, Rep.",
1997,
"Sub-Saharan Africa",
2890841,
54.28341463,
24.89716034
],
[
"Costa Rica",
1997,
"Latin America & Caribbean",
3648263,
77.2295122,
223.3170198
],
[
"Cote d'Ivoire",
1997,
"Sub-Saharan Africa",
15492127,
50.48992683,
46.61407703
],
[
"Croatia",
1997,
"Europe & Central Asia",
4572000,
72.49512195,
301.8071096
],
[
"Cuba",
1997,
"Latin America & Caribbean",
10992290,
75.70641463,
126.0632008
],
[
"Cyprus",
1997,
"Europe & Central Asia",
890758,
77.54717073,
716.3966026
],
[
"Czech Republic",
1997,
"Europe & Central Asia",
10304131,
73.82487805,
369.4187991
],
[
"Denmark",
1997,
"Europe & Central Asia",
5284991,
75.94512195,
2628.595542
],
[
"Djibouti",
1997,
"Middle East & North Africa",
665755,
53.10365854,
34.00650267
],
[
"Dominica",
1997,
"Latin America & Caribbean",
70846,
75.95121951,
212.7724088
],
[
"Dominican Republic",
1997,
"Latin America & Caribbean",
8190620,
70.11560976,
132.7623532
],
[
"Ecuador",
1997,
"Latin America & Caribbean",
11774005,
72.15739024,
88.45520801
],
[
"Egypt, Arab Rep.",
1997,
"Middle East & North Africa",
64199588,
67.06531707,
58.54985856
],
[
"El Salvador",
1997,
"Latin America & Caribbean",
5839103,
69.25595122,
155.2978257
],
[
"Equatorial Guinea",
1997,
"Sub-Saharan Africa",
472486,
48.51153659,
43.91661079
],
[
"Eritrea",
1997,
"Sub-Saharan Africa",
3335157,
54.00653659,
9.100875563
],
[
"Estonia",
1997,
"Europe & Central Asia",
1399535,
69.8097561,
222.2847278
],
[
"Ethiopia",
1997,
"Sub-Saharan Africa",
60481739,
50.23895122,
4.40261611
],
[
"Fiji",
1997,
"East Asia & Pacific",
793165,
67.03756098,
91.78065376
],
[
"Finland",
1997,
"Europe & Central Asia",
5139835,
76.87853659,
1845.954734
],
[
"France",
1997,
"Europe & Central Asia",
60042230,
78.30487805,
2436.760865
],
[
"Gabon",
1997,
"Sub-Saharan Africa",
1148416,
60.60495122,
117.0776865
],
[
"Gambia, The",
1997,
"Sub-Saharan Africa",
1191155,
54.24026829,
21.01281985
],
[
"Georgia",
1997,
"Europe & Central Asia",
4531600,
70.81395122,
56.9572553
],
[
"Germany",
1997,
"Europe & Central Asia",
82034771,
77.07317073,
2699.173708
],
[
"Ghana",
1997,
"Sub-Saharan Africa",
17855250,
57.95512195,
20.50530228
],
[
"Greece",
1997,
"Europe & Central Asia",
10776504,
78.13658537,
1063.95734
],
[
"Grenada",
1997,
"Latin America & Caribbean",
101039,
72.40587805,
218.9316296
],
[
"Guatemala",
1997,
"Latin America & Caribbean",
10481515,
66.10614634,
63.94203473
],
[
"Guinea",
1997,
"Sub-Saharan Africa",
7982155,
46.48834146,
26.33577699
],
[
"Guinea-Bissau",
1997,
"Sub-Saharan Africa",
1170619,
44.11519512,
16.04042881
],
[
"Guyana",
1997,
"Latin America & Caribbean",
729743,
63.04443902,
52.81766472
],
[
"Haiti",
1997,
"Latin America & Caribbean",
8187204,
57.7314878,
24.56111299
],
[
"Honduras",
1997,
"Latin America & Caribbean",
5835607,
69.464,
39.46951577
],
[
"Hungary",
1997,
"Europe & Central Asia",
10290486,
70.70243902,
308.8204975
],
[
"Iceland",
1997,
"Europe & Central Asia",
271128,
78.88536585,
2649.209856
],
[
"India",
1997,
"South Asia",
1000558144,
60.53573171,
18.35357479
],
[
"Indonesia",
1997,
"East Asia & Pacific",
205063468,
64.66943902,
20.33183162
],
[
"Iran, Islamic Rep.",
1997,
"Middle East & North Africa",
61955730,
68.91965854,
110.0599748
],
[
"Iraq",
1997,
"Middle East & North Africa",
22206597,
71.2642439,
8.886019315
],
[
"Ireland",
1997,
"Europe & Central Asia",
3674171,
75.9697561,
1402.208425
],
[
"Israel",
1997,
"Middle East & North Africa",
5836000,
78,
1469.741181
],
[
"Italy",
1997,
"Europe & Central Asia",
56890372,
78.62853659,
1604.371601
],
[
"Jamaica",
1997,
"Latin America & Caribbean",
2534068.675,
70.27129268,
177.8400943
],
[
"Japan",
1997,
"East Asia & Pacific",
126091000,
80.42414634,
2361.916497
],
[
"Jordan",
1997,
"Middle East & North Africa",
4459121.395,
71.69860976,
145.6612301
],
[
"Kazakhstan",
1997,
"Europe & Central Asia",
15333703.04,
64.46341463,
66.88588569
],
[
"Kenya",
1997,
"Sub-Saharan Africa",
28944780,
54.33712195,
18.65780976
],
[
"Kiribati",
1997,
"East Asia & Pacific",
79713,
60.43902439,
81.59640936
],
[
"Korea, Rep.",
1997,
"East Asia & Pacific",
45954000,
74.24780488,
454.3835714
],
[
"Kuwait",
1997,
"Middle East & North Africa",
1678812,
73.49104878,
667.9092418
],
[
"Kyrgyz Republic",
1997,
"Europe & Central Asia",
4696400,
66.89268293,
20.65968797
],
[
"Lao PDR",
1997,
"East Asia & Pacific",
5016576,
59.56956098,
21.99465889
],
[
"Latvia",
1997,
"Europe & Central Asia",
2432851,
69.34926829,
160.0927278
],
[
"Lebanon",
1997,
"Middle East & North Africa",
3597350,
70.17719512,
501.5643981
],
[
"Lesotho",
1997,
"Sub-Saharan Africa",
1865218,
53.32817073,
32.07624869
],
[
"Liberia",
1997,
"Sub-Saharan Africa",
2360511,
43.19934146,
0
],
[
"Libya",
1997,
"Middle East & North Africa",
4951076,
71.56809756,
192.5804196
],
[
"Lithuania",
1997,
"Europe & Central Asia",
3575137,
70.90902439,
162.5783173
],
[
"Luxembourg",
1997,
"Europe & Central Asia",
419450,
76.8804878,
2470.736401
],
[
"Macedonia, FYR",
1997,
"Europe & Central Asia",
1982994,
72.4147561,
177.9357822
],
[
"Madagascar",
1997,
"Sub-Saharan Africa",
13981666,
56.77004878,
8.552608959
],
[
"Malawi",
1997,
"Sub-Saharan Africa",
10319125,
46.19646341,
13.29373536
],
[
"Malaysia",
1997,
"East Asia & Pacific",
21781499,
71.56909756,
123.0825735
],
[
"Maldives",
1997,
"South Asia",
259002,
67.28160976,
124.2929712
],
[
"Mali",
1997,
"Sub-Saharan Africa",
10371338,
46.32653659,
18.23214976
],
[
"Malta",
1997,
"Middle East & North Africa",
375236,
77.43658537,
635.2712074
],
[
"Mauritania",
1997,
"Sub-Saharan Africa",
2425374,
56.8007561,
23.02378341
],
[
"Mauritius",
1997,
"Sub-Saharan Africa",
1148284,
70.40487805,
126.966258
],
[
"Mexico",
1997,
"Latin America & Caribbean",
95441345,
73.42604878,
224.7720762
],
[
"Micronesia, Fed. Sts.",
1997,
"East Asia & Pacific",
107947,
66.97160976,
148.7296704
],
[
"Moldova",
1997,
"Europe & Central Asia",
3659655,
66.58514634,
42.22950815
],
[
"Mongolia",
1997,
"East Asia & Pacific",
2345618,
61.80360976,
18.35656938
],
[
"Montenegro",
1997,
"Europe & Central Asia",
642533,
75.51668293,
97.98453203
],
[
"Morocco",
1997,
"Middle East & North Africa",
27708647,
67.47,
49.33028318
],
[
"Mozambique",
1997,
"Sub-Saharan Africa",
16862385,
46.3554878,
10.46355932
],
[
"Myanmar",
1997,
"East Asia & Pacific",
43352191,
60.9234878,
2.017998965
],
[
"Namibia",
1997,
"Sub-Saharan Africa",
1751872,
59.4344878,
141.8162609
],
[
"Nepal",
1997,
"South Asia",
22691788,
59.09,
11.71842369
],
[
"Netherlands",
1997,
"Europe & Central Asia",
15610650,
77.79439024,
1968.537034
],
[
"New Zealand",
1997,
"East Asia & Pacific",
3781300,
77.33414634,
1297.292874
],
[
"Nicaragua",
1997,
"Latin America & Caribbean",
4824799,
68.2414878,
47.94328417
],
[
"Niger",
1997,
"Sub-Saharan Africa",
9835945,
45.99060976,
6.736440383
],
[
"Nigeria",
1997,
"Sub-Saharan Africa",
115268715,
45.25370732,
53.2666059
],
[
"Norway",
1997,
"Europe & Central Asia",
4405157,
78.14268293,
3017.106791
],
[
"Oman",
1997,
"Middle East & North Africa",
2266469,
73.51482927,
231.7489652
],
[
"Pakistan",
1997,
"South Asia",
134255952,
62.51231707,
14.75536915
],
[
"Panama",
1997,
"Latin America & Caribbean",
2787228,
73.65146341,
257.6036119
],
[
"Papua New Guinea",
1997,
"East Asia & Pacific",
4970478,
57.90629268,
33.72229151
],
[
"Paraguay",
1997,
"Latin America & Caribbean",
5014650,
69.29556098,
123.0334995
],
[
"Peru",
1997,
"Latin America & Caribbean",
24667356,
69.00087805,
104.2181181
],
[
"Philippines",
1997,
"East Asia & Pacific",
72427130,
66.3397561,
41.14854248
],
[
"Poland",
1997,
"Europe & Central Asia",
38649660,
72.64634146,
230.0539002
],
[
"Portugal",
1997,
"Europe & Central Asia",
10091120,
75.41219512,
891.797603
],
[
"Qatar",
1997,
"Middle East & North Africa",
528787,
75.70439024,
680.3402481
],
[
"Romania",
1997,
"Europe & Central Asia",
22553978,
69.00487805,
66.26215849
],
[
"Russian Federation",
1997,
"Europe & Central Asia",
147304000,
66.95073171,
194.0917899
],
[
"Rwanda",
1997,
"Sub-Saharan Africa",
6297733,
37.76419512,
13.50523794
],
[
"Samoa",
1997,
"East Asia & Pacific",
171766,
68.37053659,
77.55515291
],
[
"San Marino",
1997,
"Europe & Central Asia",
26077,
79.47317073,
2730.9492
],
[
"Sao Tome and Principe",
1997,
"Sub-Saharan Africa",
133152,
61.94297561,
54.66907686
],
[
"Saudi Arabia",
1997,
"Middle East & North Africa",
19020639,
70.89912195,
264.804024
],
[
"Senegal",
1997,
"Sub-Saharan Africa",
8812695,
54.86353659,
21.63940694
],
[
"Serbia",
1997,
"Europe & Central Asia",
7649630.752,
72.03902439,
194.3631149
],
[
"Seychelles",
1997,
"Sub-Saharan Africa",
77319,
71.41463415,
431.6224114
],
[
"Sierra Leone",
1997,
"Sub-Saharan Africa",
3913681,
37.79902439,
31.40078214
],
[
"Singapore",
1997,
"East Asia & Pacific",
3796000,
77.04878049,
761.4150797
],
[
"Slovak Republic",
1997,
"Europe & Central Asia",
5383291,
72.70487805,
229.814342
],
[
"Slovenia",
1997,
"Europe & Central Asia",
1985956,
74.70731707,
797.3915308
],
[
"Solomon Islands",
1997,
"East Asia & Pacific",
376511,
60.90860976,
49.5269013
],
[
"Somalia",
1997,
"Sub-Saharan Africa",
6786636,
46.22168293,
5.751916219
],
[
"South Africa",
1997,
"Sub-Saharan Africa",
40926063.04,
58.09112195,
286.5605783
],
[
"Spain",
1997,
"Europe & Central Asia",
39582413,
78.60414634,
1061.00416
],
[
"Sri Lanka",
1997,
"South Asia",
18568000,
69.3162439,
27.26810266
],
[
"St. Kitts and Nevis",
1997,
"Latin America & Caribbean",
40740,
70.03634146,
316.0128211
],
[
"St. Lucia",
1997,
"Latin America & Caribbean",
149666,
71.76,
198.5349141
],
[
"St. Vincent and the Grenadines",
1997,
"Latin America & Caribbean",
107979,
70.1682439,
128.3283848
],
[
"Sudan",
1997,
"Sub-Saharan Africa",
25763173,
55.1925122,
13.74482377
],
[
"Suriname",
1997,
"Latin America & Caribbean",
447957,
67.8555122,
160.3582121
],
[
"Swaziland",
1997,
"Sub-Saharan Africa",
1006824,
53.44180488,
87.26581496
],
[
"Sweden",
1997,
"Europe & Central Asia",
8846062,
79.19756098,
2297.196478
],
[
"Switzerland",
1997,
"Europe & Central Asia",
7088906,
79.0795122,
3701.166083
],
[
"Syrian Arab Republic",
1997,
"Middle East & North Africa",
14856464,
73.36626829,
59.08390422
],
[
"Tajikistan",
1997,
"Europe & Central Asia",
5945181,
62.81295122,
5.633900624
],
[
"Tanzania",
1997,
"Sub-Saharan Africa",
31592450,
49.64453659,
8.045899417
],
[
"Thailand",
1997,
"East Asia & Pacific",
60933752,
72.27929268,
98.96849904
],
[
"Togo",
1997,
"Sub-Saharan Africa",
4349349,
54.36585366,
17.72125213
],
[
"Tonga",
1997,
"East Asia & Pacific",
96551,
70.36368293,
98.41613159
],
[
"Trinidad and Tobago",
1997,
"Latin America & Caribbean",
1275460,
68.79736585,
187.1077979
],
[
"Tunisia",
1997,
"Middle East & North Africa",
9215000,
71.90243902,
116.346389
],
[
"Turkey",
1997,
"Europe & Central Asia",
60783217,
67.43280488,
129.8792197
],
[
"Turkmenistan",
1997,
"Europe & Central Asia",
4335991,
63.3954878,
29.97290712
],
[
"Uganda",
1997,
"Sub-Saharan Africa",
22123185,
44.89019512,
14.77925565
],
[
"Ukraine",
1997,
"Europe & Central Asia",
50594105.02,
67.29536585,
60.54961067
],
[
"United Arab Emirates",
1997,
"Middle East & North Africa",
2611610,
73.92082927,
750.7649941
],
[
"United Kingdom",
1997,
"Europe & Central Asia",
58316954,
77.21097561,
1544.821764
],
[
"United States",
1997,
"North America",
272657000,
76.42926829,
4054.627219
],
[
"Uruguay",
1997,
"Latin America & Caribbean",
3256181.753,
73.66341463,
682.6763602
],
[
"Uzbekistan",
1997,
"Europe & Central Asia",
23667000,
66.57419512,
42.62172034
],
[
"Vanuatu",
1997,
"East Asia & Pacific",
174921,
66.33009756,
48.02180955
],
[
"Venezuela, RB",
1997,
"Latin America & Caribbean",
22959000,
72.5695122,
144.3852079
],
[
"Vietnam",
1997,
"East Asia & Pacific",
74306900,
70.50631707,
17.20205917
],
[
"Yemen, Rep.",
1997,
"Middle East & North Africa",
16226938,
58.13068293,
20.7893129
],
[
"Zambia",
1997,
"Sub-Saharan Africa",
9418120,
42.58960976,
25.78229868
],
[
"Zimbabwe",
1997,
"Sub-Saharan Africa",
12086519,
49.18890244,
92.24324547
],
[
"Albania",
1998,
"Europe & Central Asia",
3079037,
73.19780488,
47.10204775
],
[
"Algeria",
1998,
"Middle East & North Africa",
29673694,
69.33836585,
65.98324148
],
[
"Angola",
1998,
"Sub-Saharan Africa",
13138265,
43.71431707,
24.39985905
],
[
"Argentina",
1998,
"Latin America & Caribbean",
36134642,
73.28646341,
706.5454278
],
[
"Armenia",
1998,
"Europe & Central Asia",
3109101,
69.98553659,
35.16307641
],
[
"Australia",
1998,
"East Asia & Pacific",
18711000,
78.63170732,
1587.242931
],
[
"Austria",
1998,
"Europe & Central Asia",
7976789,
77.57317073,
2666.708917
],
[
"Azerbaijan",
1998,
"Europe & Central Asia",
7913000,
65.92336585,
30.30136087
],
[
"Bahamas, The",
1998,
"Latin America & Caribbean",
290571,
70.98285366,
1029.197884
],
[
"Bahrain",
1998,
"Middle East & North Africa",
611237,
73.54317073,
479.3492731
],
[
"Bangladesh",
1998,
"South Asia",
124803351,
63.72197561,
9.348686969
],
[
"Barbados",
1998,
"Latin America & Caribbean",
265941,
75.21563415,
530.1756391
],
[
"Belarus",
1998,
"Europe & Central Asia",
10069000,
68.40731707,
89.26793042
],
[
"Belgium",
1998,
"Europe & Central Asia",
10203008,
77.47317073,
1975.633825
],
[
"Belize",
1998,
"Latin America & Caribbean",
238500,
73.37263415,
110.7679042
],
[
"Benin",
1998,
"Sub-Saharan Africa",
6154708,
51.99582927,
17.49445419
],
[
"Bhutan",
1998,
"South Asia",
540507,
59.51004878,
49.12651807
],
[
"Bolivia",
1998,
"Latin America & Caribbean",
7971237,
62.2357561,
54.36715287
],
[
"Bosnia and Herzegovina",
1998,
"Europe & Central Asia",
3480285,
72.7164878,
94.70603441
],
[
"Botswana",
1998,
"Sub-Saharan Africa",
1695587,
53.84170732,
126.290675
],
[
"Brazil",
1998,
"Latin America & Caribbean",
169409713,
69.4712439,
335.6478226
],
[
"Brunei Darussalam",
1998,
"East Asia & Pacific",
312216,
75.73636585,
575.3251992
],
[
"Bulgaria",
1998,
"Europe & Central Asia",
8256786,
71.06097561,
82.73043966
],
[
"Burkina Faso",
1998,
"Sub-Saharan Africa",
11621159,
49.61034146,
12.46869997
],
[
"Burundi",
1998,
"Sub-Saharan Africa",
6223515,
45.33843902,
8.041258657
],
[
"Cambodia",
1998,
"East Asia & Pacific",
11986128,
56.76714634,
18.16529413
],
[
"Cameroon",
1998,
"Sub-Saharan Africa",
14976200,
50.7867561,
28.99837299
],
[
"Canada",
1998,
"North America",
30247900,
78.66243902,
1848.571848
],
[
"Cape Verde",
1998,
"Sub-Saharan Africa",
421203,
68.48780488,
65.37565901
],
[
"Central African Republic",
1998,
"Sub-Saharan Africa",
3559604,
44.37256098,
10.26540535
],
[
"Chad",
1998,
"Sub-Saharan Africa",
7689836,
49.01717073,
12.27848879
],
[
"Chile",
1998,
"Latin America & Caribbean",
15039162,
76.03302439,
405.2391002
],
[
"China",
1998,
"East Asia & Pacific",
1241935000,
70.92709756,
35.37793694
],
[
"Colombia",
1998,
"Latin America & Caribbean",
38439099,
70.40519512,
223.6444083
],
[
"Comoros",
1998,
"Sub-Saharan Africa",
533754,
57.41129268,
16.54374174
],
[
"Congo, Dem. Rep.",
1998,
"Sub-Saharan Africa",
47373590,
45.35578049,
6.08807087
],
[
"Congo, Rep.",
1998,
"Sub-Saharan Africa",
2973329,
54.1882439,
24.51089071
],
[
"Costa Rica",
1998,
"Latin America & Caribbean",
3740578,
77.43036585,
267.6700062
],
[
"Cote d'Ivoire",
1998,
"Sub-Saharan Africa",
15878555,
50.29421951,
52.95705936
],
[
"Croatia",
1998,
"Europe & Central Asia",
4501000,
72.31707317,
372.1750565
],
[
"Cuba",
1998,
"Latin America & Caribbean",
11031429,
75.94034146,
133.5850429
],
[
"Cyprus",
1998,
"Europe & Central Asia",
908059,
77.68609756,
764.3722736
],
[
"Czech Republic",
1998,
"Europe & Central Asia",
10294373,
74.51463415,
398.1353259
],
[
"Denmark",
1998,
"Europe & Central Asia",
5304219,
76.13902439,
2670.81276
],
[
"Djibouti",
1998,
"Middle East & North Africa",
688940,
53.3435122,
39.43436941
],
[
"Dominican Republic",
1998,
"Latin America & Caribbean",
8324680,
70.37156098,
142.9201856
],
[
"Ecuador",
1998,
"Latin America & Caribbean",
11959586,
72.59126829,
83.42084538
],
[
"Egypt, Arab Rep.",
1998,
"Middle East & North Africa",
65309201,
67.77358537,
65.78953752
],
[
"El Salvador",
1998,
"Latin America & Caribbean",
5878097,
69.38904878,
168.5070311
],
[
"Equatorial Guinea",
1998,
"Sub-Saharan Africa",
488039,
48.58719512,
48.98317888
],
[
"Eritrea",
1998,
"Sub-Saharan Africa",
3428264,
54.7357561,
9.335497026
],
[
"Estonia",
1998,
"Europe & Central Asia",
1386156,
69.35853659,
223.0885071
],
[
"Ethiopia",
1998,
"Sub-Saharan Africa",
62174171,
50.70868293,
4.541892237
],
[
"Fiji",
1998,
"East Asia & Pacific",
800685,
67.23085366,
65.107814
],
[
"Finland",
1998,
"Europe & Central Asia",
5153498,
77.09073171,
1850.700252
],
[
"France",
1998,
"Europe & Central Asia",
60299148,
78.45609756,
2483.484773
],
[
"Gabon",
1998,
"Sub-Saharan Africa",
1177936,
60.29268293,
133.8171013
],
[
"Gambia, The",
1998,
"Sub-Saharan Africa",
1225044,
54.53741463,
24.25366567
],
[
"Georgia",
1998,
"Europe & Central Asia",
4487300,
71.03812195,
48.6460068
],
[
"Germany",
1998,
"Europe & Central Asia",
82047195,
77.47560976,
2733.39847
],
[
"Ghana",
1998,
"Sub-Saharan Africa",
18281113,
58.0012439,
21.30394722
],
[
"Greece",
1998,
"Europe & Central Asia",
10834880,
77.83902439,
1054.592087
],
[
"Grenada",
1998,
"Latin America & Caribbean",
101219,
72.74368293,
247.3141297
],
[
"Guatemala",
1998,
"Latin America & Caribbean",
10723154,
66.66741463,
74.85687197
],
[
"Guinea",
1998,
"Sub-Saharan Africa",
8112650,
46.97890244,
24.95255017
],
[
"Guinea-Bissau",
1998,
"Sub-Saharan Africa",
1193585,
44.36031707,
12.21491553
],
[
"Guyana",
1998,
"Latin America & Caribbean",
730458,
63.47863415,
51.77273377
],
[
"Haiti",
1998,
"Latin America & Caribbean",
8342233,
57.96487805,
26.99068888
],
[
"Honduras",
1998,
"Latin America & Caribbean",
5963008,
69.82136585,
49.70822413
],
[
"Hungary",
1998,
"Europe & Central Asia",
10266570,
70.55780488,
335.1643859
],
[
"Iceland",
1998,
"Europe & Central Asia",
274047,
79.60243902,
2783.538318
],
[
"India",
1998,
"South Asia",
1018471141,
60.89534146,
18.40910158
],
[
"Indonesia",
1998,
"East Asia & Pacific",
207839287,
65.00356098,
9.549158154
],
[
"Iran, Islamic Rep.",
1998,
"Middle East & North Africa",
63133032,
69.18802439,
134.2348871
],
[
"Iraq",
1998,
"Middle East & North Africa",
22887833,
71.14065854,
9.162486725
],
[
"Ireland",
1998,
"Europe & Central Asia",
3712696,
76.19536585,
1459.447646
],
[
"Israel",
1998,
"Middle East & North Africa",
5971000,
78.14878049,
1429.20243
],
[
"Italy",
1998,
"Europe & Central Asia",
56906744,
78.42682927,
1652.734004
],
[
"Jamaica",
1998,
"Latin America & Caribbean",
2556780.051,
70.31095122,
175.0083629
],
[
"Japan",
1998,
"East Asia & Pacific",
126410000,
80.50146341,
2221.306368
],
[
"Jordan",
1998,
"Middle East & North Africa",
4597400,
71.82902439,
157.302966
],
[
"Kazakhstan",
1998,
"Europe & Central Asia",
15071300.13,
64.56097561,
70.05357115
],
[
"Kenya",
1998,
"Sub-Saharan Africa",
29696410,
53.51197561,
21.32202635
],
[
"Korea, Rep.",
1998,
"East Asia & Pacific",
46287000,
74.81060976,
312.9732008
],
[
"Kuwait",
1998,
"Middle East & North Africa",
1763693,
73.58239024,
652.7316821
],
[
"Kyrgyz Republic",
1998,
"Europe & Central Asia",
4769000,
67.05121951,
23.35560495
],
[
"Lao PDR",
1998,
"East Asia & Pacific",
5120845,
60.20656098,
16.03570555
],
[
"Latvia",
1998,
"Europe & Central Asia",
2410019,
69.01219512,
175.7532848
],
[
"Lebanon",
1998,
"Middle East & North Africa",
3644171,
70.3317561,
541.8962553
],
[
"Lesotho",
1998,
"Sub-Saharan Africa",
1900962,
51.32182927,
29.42292549
],
[
"Liberia",
1998,
"Sub-Saharan Africa",
2540835,
43.9587561,
8.384513752
],
[
"Libya",
1998,
"Middle East & North Africa",
5041233,
71.94412195,
221.5558612
],
[
"Lithuania",
1998,
"Europe & Central Asia",
3549331,
71.2195122,
192.7140563
],
[
"Luxembourg",
1998,
"Europe & Central Asia",
424700,
77.01707317,
2582.976759
],
[
"Macedonia, FYR",
1998,
"Europe & Central Asia",
1992404,
72.57960976,
187.229266
],
[
"Madagascar",
1998,
"Sub-Saharan Africa",
14430739,
57.74612195,
8.253876895
],
[
"Malawi",
1998,
"Sub-Saharan Africa",
10612353,
46.03502439,
9.083430628
],
[
"Malaysia",
1998,
"East Asia & Pacific",
22322448,
71.76470732,
95.88864087
],
[
"Maldives",
1998,
"South Asia",
263867,
68.32573171,
129.7782756
],
[
"Mali",
1998,
"Sub-Saharan Africa",
10662517,
46.63397561,
16.98580959
],
[
"Malta",
1998,
"Middle East & North Africa",
377516,
77.1804878,
661.9677648
],
[
"Mauritania",
1998,
"Sub-Saharan Africa",
2495316,
56.86607317,
23.85779556
],
[
"Mauritius",
1998,
"Sub-Saharan Africa",
1160421,
70.60731707,
126.8903968
],
[
"Mexico",
1998,
"Latin America & Caribbean",
97001933,
73.73187805,
236.9586742
],
[
"Micronesia, Fed. Sts.",
1998,
"East Asia & Pacific",
107605,
67.07290244,
141.9688865
],
[
"Moldova",
1998,
"Europe & Central Asia",
3652771,
66.62192683,
35.72680964
],
[
"Mongolia",
1998,
"East Asia & Pacific",
2366895,
62.1757561,
19.18377166
],
[
"Montenegro",
1998,
"Europe & Central Asia",
639309,
75.31965854,
100.370122
],
[
"Morocco",
1998,
"Middle East & North Africa",
28082684,
67.88117073,
55.0906224
],
[
"Mozambique",
1998,
"Sub-Saharan Africa",
17295521,
46.72753659,
11.30332187
],
[
"Myanmar",
1998,
"East Asia & Pacific",
43952526,
61.27658537,
2.006590952
],
[
"Namibia",
1998,
"Sub-Saharan Africa",
1802579,
58.83185366,
128.9050772
],
[
"Nepal",
1998,
"South Asia",
23255046,
59.90609756,
12.96135253
],
[
"Netherlands",
1998,
"Europe & Central Asia",
15707209,
77.88292683,
2067.169206
],
[
"New Zealand",
1998,
"East Asia & Pacific",
3815000,
78.08536585,
1124.060572
],
[
"Nicaragua",
1998,
"Latin America & Caribbean",
4911886,
68.70165854,
53.09833551
],
[
"Niger",
1998,
"Sub-Saharan Africa",
10185812,
46.76034146,
7.498752318
],
[
"Nigeria",
1998,
"Sub-Saharan Africa",
117983368,
45.48614634,
60.83266871
],
[
"Norway",
1998,
"Europe & Central Asia",
4431464,
78.32926829,
3154.94523
],
[
"Oman",
1998,
"Middle East & North Africa",
2262969,
73.73080488,
227.8212552
],
[
"Pakistan",
1998,
"South Asia",
137808222,
62.73517073,
15.58586312
],
[
"Panama",
1998,
"Latin America & Caribbean",
2843276,
73.84,
272.4673933
],
[
"Papua New Guinea",
1998,
"East Asia & Pacific",
5104153,
58.1895122,
28.08690072
],
[
"Paraguay",
1998,
"Latin America & Caribbean",
5124050,
69.53097561,
110.6986856
],
[
"Peru",
1998,
"Latin America & Caribbean",
25079136,
69.50463415,
101.8482499
],
[
"Philippines",
1998,
"East Asia & Pacific",
74040838,
66.49539024,
31.19610385
],
[
"Poland",
1998,
"Europe & Central Asia",
38663481,
72.99756098,
266.7368401
],
[
"Portugal",
1998,
"Europe & Central Asia",
10129290,
75.71219512,
933.3498427
],
[
"Qatar",
1998,
"Middle East & North Africa",
548828,
75.90797561,
637.0159346
],
[
"Romania",
1998,
"Europe & Central Asia",
22507344,
69.80731707,
69.97729854
],
[
"Russian Federation",
1998,
"Europe & Central Asia",
146899000,
66.78390244,
121.400976
],
[
"Rwanda",
1998,
"Sub-Saharan Africa",
6944116,
41.27392683,
15.06582855
],
[
"Samoa",
1998,
"East Asia & Pacific",
173543,
68.76480488,
72.13023609
],
[
"San Marino",
1998,
"Europe & Central Asia",
26271,
80.17317073,
2860.82074
],
[
"Sao Tome and Principe",
1998,
"Sub-Saharan Africa",
135838,
62.08026829,
37.23789815
],
[
"Saudi Arabia",
1998,
"Middle East & North Africa",
19256649,
71.09426829,
253.064996
],
[
"Senegal",
1998,
"Sub-Saharan Africa",
9035367,
55.13856098,
22.8442625
],
[
"Sierra Leone",
1998,
"Sub-Saharan Africa",
3953705,
38.3254878,
23.85936145
],
[
"Singapore",
1998,
"East Asia & Pacific",
3927200,
77.4,
705.5371836
],
[
"Slovak Republic",
1998,
"Europe & Central Asia",
5390516,
72.55121951,
234.7571824
],
[
"Slovenia",
1998,
"Europe & Central Asia",
1981629,
74.80731707,
856.7603299
],
[
"Solomon Islands",
1998,
"East Asia & Pacific",
386906,
61.54363415,
42.96869995
],
[
"Somalia",
1998,
"Sub-Saharan Africa",
6982940,
46.99497561,
7.426448762
],
[
"South Africa",
1998,
"Sub-Saharan Africa",
41899682.78,
57.01760976,
264.723672
],
[
"Spain",
1998,
"Europe & Central Asia",
39721108,
78.66585366,
1107.1403
],
[
"Sri Lanka",
1998,
"South Asia",
18784000,
69.67714634,
31.45238882
],
[
"St. Lucia",
1998,
"Latin America & Caribbean",
151952,
71.45365854,
220.6272498
],
[
"St. Vincent and the Grenadines",
1998,
"Latin America & Caribbean",
107907,
70.23158537,
122.7818164
],
[
"Sudan",
1998,
"Sub-Saharan Africa",
26356626,
55.74002439,
13.74915072
],
[
"Suriname",
1998,
"Latin America & Caribbean",
454124,
67.87104878,
178.3811671
],
[
"Swaziland",
1998,
"Sub-Saharan Africa",
1008143,
51.79453659,
84.4031706
],
[
"Sweden",
1998,
"Europe & Central Asia",
8850974,
79.33902439,
2335.529544
],
[
"Switzerland",
1998,
"Europe & Central Asia",
7110001,
79.32439024,
3850.618791
],
[
"Syrian Arab Republic",
1998,
"Middle East & North Africa",
15200324,
73.60002439,
56.6897248
],
[
"Tajikistan",
1998,
"Europe & Central Asia",
6027676,
63.10426829,
7.794116989
],
[
"Tanzania",
1998,
"Sub-Saharan Africa",
32388671,
49.80085366,
9.554286256
],
[
"Thailand",
1998,
"East Asia & Pacific",
61660383,
72.33029268,
67.76276579
],
[
"Togo",
1998,
"Sub-Saharan Africa",
4500173,
54.51707317,
16.43061073
],
[
"Tonga",
1998,
"East Asia & Pacific",
96966,
70.49285366,
91.98495531
],
[
"Trinidad and Tobago",
1998,
"Latin America & Caribbean",
1281396,
68.66104878,
173.5608627
],
[
"Tunisia",
1998,
"Middle East & North Africa",
9333300,
72.05121951,
127.1539241
],
[
"Turkey",
1998,
"Europe & Central Asia",
61742674,
68.11904878,
154.9018222
],
[
"Turkmenistan",
1998,
"Europe & Central Asia",
4395293,
63.5772439,
32.75255874
],
[
"Uganda",
1998,
"Sub-Saharan Africa",
22788843,
45.14487805,
14.79745216
],
[
"Ukraine",
1998,
"Europe & Central Asia",
50143939.13,
67.96829268,
55.47668855
],
[
"United Arab Emirates",
1998,
"Middle East & North Africa",
2755497,
74.15704878,
720.5852478
],
[
"United Kingdom",
1998,
"Europe & Central Asia",
58487141,
77.1902439,
1662.880602
],
[
"United States",
1998,
"North America",
275854000,
76.5804878,
4235.837199
],
[
"Uruguay",
1998,
"Latin America & Caribbean",
3273776.897,
73.95414634,
775.7000479
],
[
"Uzbekistan",
1998,
"Europe & Central Asia",
24051000,
66.7147561,
39.78945956
],
[
"Vanuatu",
1998,
"East Asia & Pacific",
177946,
66.75119512,
57.56341739
],
[
"Venezuela, RB",
1998,
"Latin America & Caribbean",
23413000,
72.72926829,
175.9668205
],
[
"Vietnam",
1998,
"East Asia & Pacific",
75456300,
71.00156098,
17.46661904
],
[
"Yemen, Rep.",
1998,
"Middle East & North Africa",
16716850,
58.59658537,
21.64078979
],
[
"Zambia",
1998,
"Sub-Saharan Africa",
9682058,
42.25507317,
21.83129799
],
[
"Zimbabwe",
1998,
"Sub-Saharan Africa",
12261742,
47.39956098,
53.3478824
],
[
"Albania",
1999,
"Europe & Central Asia",
3072725,
73.72182927,
65.02421307
],
[
"Algeria",
1999,
"Middle East & North Africa",
30099010,
69.67304878,
55.4928705
],
[
"Angola",
1999,
"Sub-Saharan Africa",
13511575,
44.43909756,
25.85126804
],
[
"Argentina",
1999,
"Latin America & Caribbean",
36541029,
73.50346341,
726.2321112
],
[
"Armenia",
1999,
"Europe & Central Asia",
3090624,
70.4924878,
34.03030962
],
[
"Australia",
1999,
"East Asia & Pacific",
18926000,
78.93170732,
1744.914063
],
[
"Austria",
1999,
"Europe & Central Asia",
7992324,
77.77560976,
2698.29707
],
[
"Azerbaijan",
1999,
"Europe & Central Asia",
7982750,
66.3554878,
30.52841235
],
[
"Bahamas, The",
1999,
"Latin America & Caribbean",
293988,
71.30343902,
1070.995612
],
[
"Bahrain",
1999,
"Middle East & North Africa",
626765,
73.67136585,
495.9627031
],
[
"Bangladesh",
1999,
"South Asia",
127214841,
64.23390244,
9.707999641
],
[
"Barbados",
1999,
"Latin America & Caribbean",
266758,
75.30941463,
569.0039736
],
[
"Belarus",
1999,
"Europe & Central Asia",
10035000,
67.90731707,
74.01814266
],
[
"Belgium",
1999,
"Europe & Central Asia",
10226419,
77.6195122,
2010.913339
],
[
"Belize",
1999,
"Latin America & Caribbean",
243100,
73.44431707,
111.0270883
],
[
"Benin",
1999,
"Sub-Saharan Africa",
6329476,
52.2917561,
18.03650781
],
[
"Bhutan",
1999,
"South Asia",
555377,
60.45609756,
49.64121943
],
[
"Bolivia",
1999,
"Latin America & Caribbean",
8138802,
62.60087805,
63.07862518
],
[
"Bosnia and Herzegovina",
1999,
"Europe & Central Asia",
3601438,
73.714,
113.5965174
],
[
"Botswana",
1999,
"Sub-Saharan Africa",
1728179,
52.15895122,
130.6674725
],
[
"Brazil",
1999,
"Latin America & Caribbean",
171936271,
69.81446341,
242.0004213
],
[
"Brunei Darussalam",
1999,
"East Asia & Pacific",
319654,
75.98834146,
589.1790199
],
[
"Bulgaria",
1999,
"Europe & Central Asia",
8210624,
71.41219512,
96.3090366
],
[
"Burkina Faso",
1999,
"Sub-Saharan Africa",
11951701,
49.8854878,
13.28007691
],
[
"Burundi",
1999,
"Sub-Saharan Africa",
6283662,
45.67056098,
7.031611954
],
[
"Cambodia",
1999,
"East Asia & Pacific",
12224414,
57.08882927,
17.76706611
],
[
"Cameroon",
1999,
"Sub-Saharan Africa",
15324051,
50.4065122,
28.97119901
],
[
"Canada",
1999,
"North America",
30499200,
78.88292683,
1936.587877
],
[
"Cape Verde",
1999,
"Sub-Saharan Africa",
429278,
68.95639024,
64.65687342
],
[
"Central African Republic",
1999,
"Sub-Saharan Africa",
3632287,
43.95334146,
11.37410212
],
[
"Chad",
1999,
"Sub-Saharan Africa",
7946982,
48.73882927,
11.3289682
],
[
"Chile",
1999,
"Latin America & Caribbean",
15231557,
76.42282927,
376.9523862
],
[
"China",
1999,
"East Asia & Pacific",
1252735000,
71.08339024,
38.60216862
],
[
"Colombia",
1999,
"Latin America & Caribbean",
39102653,
70.71182927,
191.392469
],
[
"Comoros",
1999,
"Sub-Saharan Africa",
547864,
57.64509756,
15.94531646
],
[
"Congo, Dem. Rep.",
1999,
"Sub-Saharan Africa",
48429878,
45.44241463,
11.19072684
],
[
"Congo, Rep.",
1999,
"Sub-Saharan Africa",
3055437,
54.14090244,
23.61276795
],
[
"Costa Rica",
1999,
"Latin America & Caribbean",
3831504,
77.62273171,
281.619973
],
[
"Cote d'Ivoire",
1999,
"Sub-Saharan Africa",
16242889,
50.17890244,
42.93138892
],
[
"Croatia",
1999,
"Europe & Central Asia",
4554000,
72.64195122,
371.989493
],
[
"Cuba",
1999,
"Latin America & Caribbean",
11068382,
76.158,
152.5986894
],
[
"Cyprus",
1999,
"Europe & Central Asia",
925504,
77.8235122,
781.0988625
],
[
"Czech Republic",
1999,
"Europe & Central Asia",
10283860,
74.66829268,
383.8318353
],
[
"Denmark",
1999,
"Europe & Central Asia",
5321799,
76.34146341,
2926.94835
],
[
"Djibouti",
1999,
"Middle East & North Africa",
711573,
53.58941463,
46.89280721
],
[
"Dominican Republic",
1999,
"Latin America & Caribbean",
8458164,
70.63082927,
150.2650576
],
[
"Ecuador",
1999,
"Latin America & Caribbean",
12148188,
73.00614634,
64.90718762
],
[
"Egypt, Arab Rep.",
1999,
"Middle East & North Africa",
66457136,
68.44936585,
72.76411955
],
[
"El Salvador",
1999,
"Latin America & Caribbean",
5911094,
69.5332439,
168.0738232
],
[
"Equatorial Guinea",
1999,
"Sub-Saharan Africa",
504001,
48.64095122,
39.85587706
],
[
"Eritrea",
1999,
"Sub-Saharan Africa",
3539885,
55.40758537,
9.083265123
],
[
"Estonia",
1999,
"Europe & Central Asia",
1375654,
70.06341463,
240.6151746
],
[
"Ethiopia",
1999,
"Sub-Saharan Africa",
63868806,
51.19292683,
4.510650641
],
[
"Fiji",
1999,
"East Asia & Pacific",
806927,
67.42012195,
74.54145408
],
[
"Finland",
1999,
"Europe & Central Asia",
5165474,
77.29121951,
1860.192885
],
[
"France",
1999,
"Europe & Central Asia",
60495363,
78.60731707,
2451.718945
],
[
"Gabon",
1999,
"Sub-Saharan Africa",
1206862,
59.97204878,
115.5448818
],
[
"Gambia, The",
1999,
"Sub-Saharan Africa",
1260283,
54.84507317,
23.03773625
],
[
"Georgia",
1999,
"Europe & Central Asia",
4452500,
71.29319512,
36.67806407
],
[
"Germany",
1999,
"Europe & Central Asia",
82100243,
77.72682927,
2689.947948
],
[
"Ghana",
1999,
"Sub-Saharan Africa",
18715676,
58.13480488,
20.48603084
],
[
"Greece",
1999,
"Europe & Central Asia",
10882580,
77.98780488,
1113.659828
],
[
"Grenada",
1999,
"Latin America & Caribbean",
101354,
73.07746341,
291.5232412
],
[
"Guatemala",
1999,
"Latin America & Caribbean",
10974314,
67.21812195,
82.17687084
],
[
"Guinea",
1999,
"Sub-Saharan Africa",
8226138,
47.522,
23.66370889
],
[
"Guinea-Bissau",
1999,
"Sub-Saharan Africa",
1216902,
44.61936585,
10.61591667
],
[
"Guyana",
1999,
"Latin America & Caribbean",
731496,
63.94643902,
44.45069672
],
[
"Haiti",
1999,
"Latin America & Caribbean",
8495358,
58.17185366,
27.20068471
],
[
"Honduras",
1999,
"Latin America & Caribbean",
6090164,
70.12568293,
55.34164331
],
[
"Hungary",
1999,
"Europe & Central Asia",
10237530,
70.67707317,
345.1602902
],
[
"Iceland",
1999,
"Europe & Central Asia",
277381,
79.35121951,
3218.816511
],
[
"India",
1999,
"South Asia",
1036258683,
61.25587805,
18.22737214
],
[
"Indonesia",
1999,
"East Asia & Pacific",
210610776,
65.33070732,
15.15809449
],
[
"Iran, Islamic Rep.",
1999,
"Middle East & North Africa",
64278307,
69.45182927,
177.9086546
],
[
"Iraq",
1999,
"Middle East & North Africa",
23589967,
70.96887805,
15.19664608
],
[
"Ireland",
1999,
"Europe & Central Asia",
3754786,
76.07365854,
1558.217226
],
[
"Israel",
1999,
"Middle East & North Africa",
6125000,
78.65853659,
1359.453079
],
[
"Italy",
1999,
"Europe & Central Asia",
56916317,
78.82682927,
1643.31301
],
[
"Jamaica",
1999,
"Latin America & Caribbean",
2574289.364,
70.37626829,
161.7347031
],
[
"Japan",
1999,
"East Asia & Pacific",
126650000,
80.57073171,
2603.802091
],
[
"Jordan",
1999,
"Middle East & North Africa",
4680500,
71.95331707,
160.5234482
],
[
"Kazakhstan",
1999,
"Europe & Central Asia",
14928425.85,
65.5195122,
48.95029296
],
[
"Kenya",
1999,
"Sub-Saharan Africa",
30462154,
52.81321951,
17.76716234
],
[
"Korea, Rep.",
1999,
"East Asia & Pacific",
46617000,
75.37341463,
422.4800071
],
[
"Kuwait",
1999,
"Middle East & North Africa",
1857217,
73.66970732,
594.9855949
],
[
"Kyrgyz Republic",
1999,
"Europe & Central Asia",
4840400,
67.00243902,
15.27470778
],
[
"Lao PDR",
1999,
"East Asia & Pacific",
5220920,
60.81107317,
10.36693736
],
[
"Latvia",
1999,
"Europe & Central Asia",
2390482,
69.74292683,
196.2894465
],
[
"Lebanon",
1999,
"Middle East & North Africa",
3690033,
70.48368293,
490.3069948
],
[
"Lesotho",
1999,
"Sub-Saharan Africa",
1934337,
49.35782927,
27.64706657
],
[
"Liberia",
1999,
"Sub-Saharan Africa",
2710963,
44.8887561,
9.838410555
],
[
"Libya",
1999,
"Middle East & North Africa",
5134324,
72.26285366,
229.4919311
],
[
"Lithuania",
1999,
"Europe & Central Asia",
3524238,
71.57073171,
193.093468
],
[
"Luxembourg",
1999,
"Europe & Central Asia",
430475,
77.77073171,
2867.509124
],
[
"Macedonia, FYR",
1999,
"Europe & Central Asia",
2001178,
72.74421951,
162.0933001
],
[
"Madagascar",
1999,
"Sub-Saharan Africa",
14892172,
58.71629268,
7.994966691
],
[
"Malawi",
1999,
"Sub-Saharan Africa",
10922265,
45.96368293,
10.59809435
],
[
"Malaysia",
1999,
"East Asia & Pacific",
22867698,
71.95634146,
106.7412226
],
[
"Maldives",
1999,
"South Asia",
268600,
69.36421951,
142.9182886
],
[
"Mali",
1999,
"Sub-Saharan Africa",
10969725,
46.93839024,
16.20183555
],
[
"Malta",
1999,
"Middle East & North Africa",
379360,
77.14878049,
656.1427591
],
[
"Marshall Islands",
1999,
"East Asia & Pacific",
52080,
67.50487805,
374.4021469
],
[
"Mauritania",
1999,
"Sub-Saharan Africa",
2567741,
56.93141463,
27.66104384
],
[
"Mauritius",
1999,
"Sub-Saharan Africa",
1175267,
70.96097561,
126.2702754
],
[
"Mexico",
1999,
"Latin America & Caribbean",
98513690,
74.0132439,
278.3587806
],
[
"Micronesia, Fed. Sts.",
1999,
"East Asia & Pacific",
107237,
67.17263415,
155.53255
],
[
"Moldova",
1999,
"Europe & Central Asia",
3646999,
66.72697561,
18.90233611
],
[
"Mongolia",
1999,
"East Asia & Pacific",
2388862,
62.6165122,
17.87467717
],
[
"Montenegro",
1999,
"Europe & Central Asia",
635689,
75.10704878,
98.39231361
],
[
"Morocco",
1999,
"Middle East & North Africa",
28444414,
68.28390244,
55.66948385
],
[
"Mozambique",
1999,
"Sub-Saharan Africa",
17735992,
47.02097561,
13.51834616
],
[
"Myanmar",
1999,
"East Asia & Pacific",
44496687,
61.58714634,
2.586128908
],
[
"Namibia",
1999,
"Sub-Saharan Africa",
1851034,
58.20585366,
127.499502
],
[
"Nepal",
1999,
"South Asia",
23825372,
60.71580488,
12.35461941
],
[
"Netherlands",
1999,
"Europe & Central Asia",
15812088,
77.83658537,
2105.041776
],
[
"New Zealand",
1999,
"East Asia & Pacific",
3835100,
77.8902439,
1153.423832
],
[
"Nicaragua",
1999,
"Latin America & Caribbean",
4994730,
69.16853659,
51.67504819
],
[
"Niger",
1999,
"Sub-Saharan Africa",
10548219,
47.52202439,
7.029463429
],
[
"Nigeria",
1999,
"Sub-Saharan Africa",
120784408,
45.82953659,
16.12939287
],
[
"Norway",
1999,
"Europe & Central Asia",
4461913,
78.28292683,
3325.038621
],
[
"Oman",
1999,
"Middle East & North Africa",
2259398,
73.93826829,
243.6037078
],
[
"Pakistan",
1999,
"South Asia",
141261069,
62.95253659,
15.65990011
],
[
"Panama",
1999,
"Latin America & Caribbean",
2899636,
74.03090244,
270.8268167
],
[
"Papua New Guinea",
1999,
"East Asia & Pacific",
5240560,
58.48487805,
26.82914829
],
[
"Paraguay",
1999,
"Latin America & Caribbean",
5233615,
69.78253659,
108.9547404
],
[
"Peru",
1999,
"Latin America & Caribbean",
25478577,
69.99892683,
98.40778965
],
[
"Philippines",
1999,
"East Asia & Pacific",
75669587,
66.64802439,
35.44030456
],
[
"Poland",
1999,
"Europe & Central Asia",
38660271,
73.04390244,
251.4396865
],
[
"Portugal",
1999,
"Europe & Central Asia",
10171949,
75.96341463,
986.2939684
],
[
"Qatar",
1999,
"Middle East & North Africa",
569870,
76.10707317,
631.726043
],
[
"Romania",
1999,
"Europe & Central Asia",
22472040,
70.51219512,
67.63565043
],
[
"Russian Federation",
1999,
"Europe & Central Asia",
146309000,
66.04365854,
77.08947458
],
[
"Rwanda",
1999,
"Sub-Saharan Africa",
7582861,
44.23480488,
11.15048066
],
[
"Samoa",
1999,
"East Asia & Pacific",
175169,
69.13704878,
82.34506461
],
[
"San Marino",
1999,
"Europe & Central Asia",
26551,
80.52439024,
3014.889301
],
[
"Sao Tome and Principe",
1999,
"Sub-Saharan Africa",
138475,
62.21753659,
45.07716414
],
[
"Saudi Arabia",
1999,
"Middle East & North Africa",
19578923,
71.28907317,
339.2429231
],
[
"Senegal",
1999,
"Sub-Saharan Africa",
9265135,
55.43112195,
24.22335738
],
[
"Sierra Leone",
1999,
"Sub-Saharan Africa",
4028260,
38.97468293,
28.49585248
],
[
"Singapore",
1999,
"East Asia & Pacific",
3958700,
77.55121951,
631.853266
],
[
"Slovak Republic",
1999,
"Europe & Central Asia",
5396020,
72.90243902,
218.3197989
],
[
"Slovenia",
1999,
"Europe & Central Asia",
1983045,
75.0097561,
877.1188791
],
[
"Solomon Islands",
1999,
"East Asia & Pacific",
397627,
62.19087805,
46.14111243
],
[
"Somalia",
1999,
"Sub-Saharan Africa",
7193120,
47.69934146,
7.43116333
],
[
"South Africa",
1999,
"Sub-Saharan Africa",
42923484.53,
55.89253659,
268.3314331
],
[
"Spain",
1999,
"Europe & Central Asia",
39926268,
78.71707317,
1132.175344
],
[
"Sri Lanka",
1999,
"South Asia",
19056000,
70.25170732,
30.50359703
],
[
"St. Lucia",
1999,
"Latin America & Caribbean",
153703,
71.30487805,
247.0194669
],
[
"St. Vincent and the Grenadines",
1999,
"Latin America & Caribbean",
107869,
70.29807317,
127.7600953
],
[
"Sudan",
1999,
"Sub-Saharan Africa",
26949878,
56.34226829,
12.10386323
],
[
"Suriname",
1999,
"Latin America & Caribbean",
460419,
67.89263415,
134.8853274
],
[
"Swaziland",
1999,
"Sub-Saharan Africa",
1009464,
50.16207317,
78.70331478
],
[
"Sweden",
1999,
"Europe & Central Asia",
8857874,
79.44146341,
2395.176136
],
[
"Switzerland",
1999,
"Europe & Central Asia",
7143991,
79.5804878,
3818.179445
],
[
"Syrian Arab Republic",
1999,
"Middle East & North Africa",
15572833,
73.81621951,
58.74934097
],
[
"Tajikistan",
1999,
"Europe & Central Asia",
6104268,
63.42070732,
6.901757233
],
[
"Tanzania",
1999,
"Sub-Saharan Africa",
33197305,
50.04097561,
9.228105579
],
[
"Thailand",
1999,
"East Asia & Pacific",
62408639,
72.40946341,
68.69954362
],
[
"Togo",
1999,
"Sub-Saharan Africa",
4650754,
54.66729268,
15.94178176
],
[
"Tonga",
1999,
"East Asia & Pacific",
97431,
70.62507317,
102.7812337
],
[
"Trinidad and Tobago",
1999,
"Latin America & Caribbean",
1286871,
68.51997561,
225.0078446
],
[
"Tunisia",
1999,
"Middle East & North Africa",
9455900,
72.5,
132.9480763
],
[
"Turkey",
1999,
"Europe & Central Asia",
62692616,
68.79473171,
187.8423256
],
[
"Turkmenistan",
1999,
"Europe & Central Asia",
4449427,
63.74546341,
33.81459404
],
[
"Uganda",
1999,
"Sub-Saharan Africa",
23482533,
45.54814634,
16.04639488
],
[
"Ukraine",
1999,
"Europe & Central Asia",
49673349.99,
68.19390244,
37.69349048
],
[
"United Arab Emirates",
1999,
"Middle East & North Africa",
2897038,
74.38873171,
722.0457528
],
[
"United Kingdom",
1999,
"Europe & Central Asia",
58682466,
77.3902439,
1770.716821
],
[
"United States",
1999,
"North America",
279040000,
76.58292683,
4450.044994
],
[
"Uruguay",
1999,
"Latin America & Caribbean",
3288819.058,
74.15390244,
811.2557523
],
[
"Uzbekistan",
1999,
"Europe & Central Asia",
24311700,
66.84431707,
41.9317052
],
[
"Vanuatu",
1999,
"East Asia & Pacific",
181239,
67.15982927,
52.11783395
],
[
"Venezuela, RB",
1999,
"Latin America & Caribbean",
23867000,
72.86414634,
231.8761737
],
[
"Vietnam",
1999,
"East Asia & Pacific",
76596700,
71.48260976,
17.98377241
],
[
"Yemen, Rep.",
1999,
"Middle East & North Africa",
17208494,
59.1194878,
21.73769153
],
[
"Zambia",
1999,
"Sub-Saharan Africa",
9945115,
42.02121951,
18.24764146
],
[
"Zimbabwe",
1999,
"Sub-Saharan Africa",
12405236,
45.8474878,
35.71190807
],
[
"Albania",
2000,
"Europe & Central Asia",
3071856,
74.23873171,
75.23641319
],
[
"Algeria",
2000,
"Middle East & North Africa",
30533827,
70.02417073,
62.60756271
],
[
"Angola",
2000,
"Sub-Saharan Africa",
13926373,
45.20492683,
18.88834693
],
[
"Argentina",
2000,
"Latin America & Caribbean",
36930709,
73.71797561,
709.3310353
],
[
"Armenia",
2000,
"Europe & Central Asia",
3076098,
70.98943902,
38.97545265
],
[
"Australia",
2000,
"East Asia & Pacific",
19153000,
79.23414634,
1713.138146
],
[
"Austria",
2000,
"Europe & Central Asia",
8011566,
78.02682927,
2403.248441
],
[
"Azerbaijan",
2000,
"Europe & Central Asia",
8048600,
66.75721951,
30.36441181
],
[
"Bahamas, The",
2000,
"Latin America & Caribbean",
297651,
71.62829268,
1107.169134
],
[
"Bahrain",
2000,
"Middle East & North Africa",
638193,
73.79607317,
496.7217566
],
[
"Bangladesh",
2000,
"South Asia",
129592275,
64.73034146,
9.877356404
],
[
"Barbados",
2000,
"Latin America & Caribbean",
267511,
75.40826829,
601.1528498
],
[
"Belarus",
2000,
"Europe & Central Asia",
10005000,
68.91219512,
63.48191769
],
[
"Belgium",
2000,
"Europe & Central Asia",
10251250,
77.72195122,
1844.077377
],
[
"Belize",
2000,
"Latin America & Caribbean",
249800,
73.53112195,
133.2293942
],
[
"Benin",
2000,
"Sub-Saharan Africa",
6517810,
52.56534146,
15.70404125
],
[
"Bhutan",
2000,
"South Asia",
571262,
61.37421951,
51.64428898
],
[
"Bolivia",
2000,
"Latin America & Caribbean",
8307248,
62.96368293,
61.41930474
],
[
"Bosnia and Herzegovina",
2000,
"Europe & Central Asia",
3693698,
74.30812195,
105.6377785
],
[
"Botswana",
2000,
"Sub-Saharan Africa",
1757925,
50.7654878,
151.8056287
],
[
"Brazil",
2000,
"Latin America & Caribbean",
174425387,
70.13826829,
264.8090352
],
[
"Brunei Darussalam",
2000,
"East Asia & Pacific",
327036,
76.23234146,
551.3498816
],
[
"Bulgaria",
2000,
"Europe & Central Asia",
8170172,
71.66341463,
97.67952319
],
[
"Burkina Faso",
2000,
"Sub-Saharan Africa",
12294012,
50.20129268,
10.89793475
],
[
"Burundi",
2000,
"Sub-Saharan Africa",
6374347,
46.00504878,
6.874238235
],
[
"Cambodia",
2000,
"East Asia & Pacific",
12446949,
57.46414634,
18.63949844
],
[
"Cameroon",
2000,
"Sub-Saharan Africa",
15678269,
50.07126829,
26.50890471
],
[
"Canada",
2000,
"North America",
30769700,
79.23658537,
2089.213973
],
[
"Cape Verde",
2000,
"Sub-Saharan Africa",
437238,
69.44826829,
59.30855249
],
[
"Central African Republic",
2000,
"Sub-Saharan Africa",
3701607,
43.66336585,
10.60961703
],
[
"Chad",
2000,
"Sub-Saharan Africa",
8222327,
48.48897561,
10.57307527
],
[
"Chile",
2000,
"Latin America & Caribbean",
15419820,
76.82173171,
386.6430366
],
[
"China",
2000,
"East Asia & Pacific",
1262645000,
71.24170732,
43.40881009
],
[
"Colombia",
2000,
"Latin America & Caribbean",
39764166,
71.00097561,
148.3558773
],
[
"Comoros",
2000,
"Sub-Saharan Africa",
562469,
57.87643902,
12.98030899
],
[
"Congo, Dem. Rep.",
2000,
"Sub-Saharan Africa",
49626200,
45.65190244,
13.00280979
],
[
"Congo, Rep.",
2000,
"Sub-Saharan Africa",
3135773,
54.14585366,
21.82067982
],
[
"Costa Rica",
2000,
"Latin America & Caribbean",
3919180,
77.80407317,
287.9839897
],
[
"Cote d'Ivoire",
2000,
"Sub-Saharan Africa",
16581653,
50.16087805,
31.77351656
],
[
"Croatia",
2000,
"Europe & Central Asia",
4426000,
72.80780488,
377.0591131
],
[
"Cuba",
2000,
"Latin America & Caribbean",
11104313,
76.36580488,
166.334715
],
[
"Cyprus",
2000,
"Europe & Central Asia",
943294,
77.95692683,
743.99543
],
[
"Czech Republic",
2000,
"Europe & Central Asia",
10272322,
74.96829268,
361.4184213
],
[
"Denmark",
2000,
"Europe & Central Asia",
5339616,
76.59268293,
2608.777193
],
[
"Djibouti",
2000,
"Middle East & North Africa",
731930,
53.85034146,
43.73829624
],
[
"Dominican Republic",
2000,
"Latin America & Caribbean",
8591967,
70.89370732,
174.7765324
],
[
"Ecuador",
2000,
"Latin America & Caribbean",
12345023,
73.39204878,
53.5810289
],
[
"Egypt, Arab Rep.",
2000,
"Middle East & North Africa",
67648419,
69.08265854,
78.61307678
],
[
"El Salvador",
2000,
"Latin America & Caribbean",
5940305,
69.70160976,
176.5397568
],
[
"Equatorial Guinea",
2000,
"Sub-Saharan Africa",
520380,
48.69026829,
46.41340987
],
[
"Eritrea",
2000,
"Sub-Saharan Africa",
3667576,
56.02497561,
7.81860408
],
[
"Estonia",
2000,
"Europe & Central Asia",
1369515,
70.41707317,
217.2826535
],
[
"Ethiopia",
2000,
"Sub-Saharan Africa",
65577897,
51.71012195,
5.317679644
],
[
"Fiji",
2000,
"East Asia & Pacific",
811718,
67.60731707,
79.37417838
],
[
"Finland",
2000,
"Europe & Central Asia",
5176209,
77.46585366,
1698.627362
],
[
"France",
2000,
"Europe & Central Asia",
60910922,
78.95853659,
2202.702362
],
[
"Gabon",
2000,
"Sub-Saharan Africa",
1235274,
59.69095122,
102.3652707
],
[
"Gambia, The",
2000,
"Sub-Saharan Africa",
1297084,
55.1567561,
21.81104149
],
[
"Georgia",
2000,
"Europe & Central Asia",
4418300,
71.56309756,
44.7129693
],
[
"Germany",
2000,
"Europe & Central Asia",
82211508,
77.92682927,
2385.892873
],
[
"Ghana",
2000,
"Sub-Saharan Africa",
19165490,
58.3822439,
12.3245178
],
[
"Greece",
2000,
"Europe & Central Asia",
10917482,
77.88780488,
917.2098487
],
[
"Grenada",
2000,
"Latin America & Caribbean",
101522,
73.40770732,
339.3473555
],
[
"Guatemala",
2000,
"Latin America & Caribbean",
11237101,
67.74417073,
96.0240871
],
[
"Guinea",
2000,
"Sub-Saharan Africa",
8344486,
48.11014634,
21.08639557
],
[
"Guinea-Bissau",
2000,
"Sub-Saharan Africa",
1240655,
44.88487805,
16.63613918
],
[
"Guyana",
2000,
"Latin America & Caribbean",
733101,
64.44826829,
56.8446622
],
[
"Haiti",
2000,
"Latin America & Caribbean",
8645371,
58.37207317,
25.67909351
],
[
"Honduras",
2000,
"Latin America & Caribbean",
6218151,
70.38202439,
76.5893405
],
[
"Hungary",
2000,
"Europe & Central Asia",
10210971,
71.24634146,
326.0262016
],
[
"Iceland",
2000,
"Europe & Central Asia",
281205,
79.65365854,
3034.094433
],
[
"India",
2000,
"South Asia",
1053898107,
61.61387805,
19.5695692
],
[
"Indonesia",
2000,
"East Asia & Pacific",
213395411,
65.64636585,
15.13273464
],
[
"Iran, Islamic Rep.",
2000,
"Middle East & North Africa",
65342319,
69.73965854,
231.2898719
],
[
"Iraq",
2000,
"Middle East & North Africa",
24313641,
70.7434878,
34.26055252
],
[
"Ireland",
2000,
"Europe & Central Asia",
3805174,
76.54073171,
1561.436461
],
[
"Israel",
2000,
"Middle East & North Africa",
6289000,
78.95365854,
1494.911049
],
[
"Italy",
2000,
"Europe & Central Asia",
56942108,
79.42682927,
1553.920709
],
[
"Jamaica",
2000,
"Latin America & Caribbean",
2589388.551,
70.47229268,
189.4570814
],
[
"Japan",
2000,
"East Asia & Pacific",
126870000,
81.07609756,
2834.20968
],
[
"Jordan",
2000,
"Middle East & North Africa",
4797500,
72.07502439,
169.2226234
],
[
"Kazakhstan",
2000,
"Europe & Central Asia",
14883626,
65.51707317,
50.88072086
],
[
"Kenya",
2000,
"Sub-Saharan Africa",
31253701,
52.29963415,
19.03641044
],
[
"Kiribati",
2000,
"East Asia & Pacific",
84010,
59.53658537,
64.41649147
],
[
"Korea, Rep.",
2000,
"East Asia & Pacific",
47008000,
75.8554878,
508.4592833
],
[
"Kuwait",
2000,
"Middle East & North Africa",
1940786,
73.7524878,
487.9345442
],
[
"Kyrgyz Republic",
2000,
"Europe & Central Asia",
4898400,
68.55853659,
12.93295436
],
[
"Lao PDR",
2000,
"East Asia & Pacific",
5317060,
61.39460976,
10.82220608
],
[
"Latvia",
2000,
"Europe & Central Asia",
2372985,
70.31463415,
196.8125245
],
[
"Lebanon",
2000,
"Middle East & North Africa",
3742329,
70.63702439,
455.1985072
],
[
"Lesotho",
2000,
"Sub-Saharan Africa",
1963878,
47.58636585,
26.63946574
],
[
"Liberia",
2000,
"Sub-Saharan Africa",
2847290,
45.96431707,
10.98670564
],
[
"Libya",
2000,
"Middle East & North Africa",
5231189,
72.5307561,
243.8362828
],
[
"Lithuania",
2000,
"Europe & Central Asia",
3499536,
72.0195122,
212.2446064
],
[
"Luxembourg",
2000,
"Europe & Central Asia",
436300,
77.87317073,
3473.532246
],
[
"Macedonia, FYR",
2000,
"Europe & Central Asia",
2009091,
72.91021951,
156.7261289
],
[
"Madagascar",
2000,
"Sub-Saharan Africa",
15364272,
59.67456098,
9.37516003
],
[
"Malawi",
2000,
"Sub-Saharan Africa",
11228756,
46.02973171,
9.42469648
],
[
"Malaysia",
2000,
"East Asia & Pacific",
23414909,
72.1424878,
124.5699464
],
[
"Maldives",
2000,
"South Asia",
273236,
70.37412195,
160.3548982
],
[
"Mali",
2000,
"Sub-Saharan Africa",
11295324,
47.24326829,
14.79404198
],
[
"Malta",
2000,
"Middle East & North Africa",
381363,
78.2,
643.3998101
],
[
"Marshall Islands",
2000,
"East Asia & Pacific",
52145,
65.23902439,
465.7676886
],
[
"Mauritania",
2000,
"Sub-Saharan Africa",
2642743,
56.99478049,
24.2798666
],
[
"Mauritius",
2000,
"Sub-Saharan Africa",
1186873,
71.66341463,
144.9859639
],
[
"Mexico",
2000,
"Latin America & Caribbean",
99959594,
74.2742439,
328.4829061
],
[
"Micronesia, Fed. Sts.",
2000,
"East Asia & Pacific",
107103,
67.27373171,
170.4453844
],
[
"Moldova",
2000,
"Europe & Central Asia",
3639588,
66.88826829,
23.52063202
],
[
"Mongolia",
2000,
"East Asia & Pacific",
2411369,
63.12134146,
21.96976666
],
[
"Montenegro",
2000,
"Europe & Central Asia",
632606,
74.89002439,
116.8261351
],
[
"Morocco",
2000,
"Middle East & North Africa",
28793236,
68.67514634,
53.75236432
],
[
"Mozambique",
2000,
"Sub-Saharan Africa",
18200656,
47.23785366,
14.59131231
],
[
"Myanmar",
2000,
"East Asia & Pacific",
44957660,
61.85570732,
3.371136965
],
[
"Namibia",
2000,
"Sub-Saharan Africa",
1895839,
57.65773171,
126.0509575
],
[
"Nepal",
2000,
"South Asia",
24400606,
61.52163415,
11.82240089
],
[
"Netherlands",
2000,
"Europe & Central Asia",
15925513,
77.98780488,
1924.632723
],
[
"New Zealand",
2000,
"East Asia & Pacific",
3857700,
78.63658537,
1051.438727
],
[
"Nicaragua",
2000,
"Latin America & Caribbean",
5073704,
69.64573171,
54.27549775
],
[
"Niger",
2000,
"Sub-Saharan Africa",
10922421,
48.26668293,
5.21646618
],
[
"Nigeria",
2000,
"Sub-Saharan Africa",
123688536,
46.27231707,
17.10887986
],
[
"Norway",
2000,
"Europe & Central Asia",
4490967,
78.63414634,
3155.349233
],
[
"Oman",
2000,
"Middle East & North Africa",
2264163,
74.11029268,
263.9609719
],
[
"Pakistan",
2000,
"South Asia",
144522192,
63.16195122,
14.95037047
],
[
"Palau",
2000,
"East Asia & Pacific",
19172,
70.49365854,
661.0341415
],
[
"Panama",
2000,
"Latin America & Caribbean",
2956126,
74.22314634,
305.1967338
],
[
"Papua New Guinea",
2000,
"East Asia & Pacific",
5378824,
58.79578049,
25.91760575
],
[
"Paraguay",
2000,
"Latin America & Caribbean",
5343539,
70.04519512,
124.2396343
],
[
"Peru",
2000,
"Latin America & Caribbean",
25861887,
70.47626829,
96.8113784
],
[
"Philippines",
2000,
"East Asia & Pacific",
77309965,
66.79514634,
33.63425387
],
[
"Poland",
2000,
"Europe & Central Asia",
38453757,
73.74878049,
247.1863087
],
[
"Portugal",
2000,
"Europe & Central Asia",
10225836,
76.31463415,
1066.375002
],
[
"Qatar",
2000,
"Middle East & North Africa",
590957,
76.30319512,
654.5538623
],
[
"Romania",
2000,
"Europe & Central Asia",
22442971,
71.16341463,
72.27655392
],
[
"Russian Federation",
2000,
"Europe & Central Asia",
146303000,
65.34146341,
95.95046995
],
[
"Rwanda",
2000,
"Sub-Saharan Africa",
8098344,
46.51021951,
9.042109006
],
[
"Samoa",
2000,
"East Asia & Pacific",
176549,
69.48780488,
78.96224429
],
[
"San Marino",
2000,
"Europe & Central Asia",
26967,
80.6195122,
2742.89415
],
[
"Sao Tome and Principe",
2000,
"Sub-Saharan Africa",
141010,
62.35778049,
45.53231003
],
[
"Saudi Arabia",
2000,
"Middle East & North Africa",
20045276,
71.49209756,
400.4213183
],
[
"Senegal",
2000,
"Sub-Saharan Africa",
9505862,
55.7392439,
21.319472
],
[
"Serbia",
2000,
"Europe & Central Asia",
7516346,
72.13658537,
60.01495514
],
[
"Sierra Leone",
2000,
"Sub-Saharan Africa",
4143115,
39.73158537,
26.86698934
],
[
"Singapore",
2000,
"East Asia & Pacific",
4027900,
78.05121951,
662.7288525
],
[
"Slovak Republic",
2000,
"Europe & Central Asia",
5388720,
73.05121951,
207.7368505
],
[
"Slovenia",
2000,
"Europe & Central Asia",
1988925,
75.41219512,
830.0668719
],
[
"Solomon Islands",
2000,
"East Asia & Pacific",
408732,
62.8342439,
48.54700445
],
[
"Somalia",
2000,
"Sub-Saharan Africa",
7399033,
48.29578049,
6.777761295
],
[
"South Africa",
2000,
"Sub-Saharan Africa",
4.4e+07,
54.77631707,
246.1183522
],
[
"Spain",
2000,
"Europe & Central Asia",
40263216,
78.96585366,
1039.894213
],
[
"Sri Lanka",
2000,
"South Asia",
19102000,
70.98429268,
32.5750347
],
[
"St. Lucia",
2000,
"Latin America & Caribbean",
155996,
71.10560976,
264.5020994
],
[
"St. Vincent and the Grenadines",
2000,
"Latin America & Caribbean",
107891,
70.37695122,
137.0552173
],
[
"Sudan",
2000,
"Sub-Saharan Africa",
27556383,
56.97409756,
12.11386541
],
[
"Suriname",
2000,
"Latin America & Caribbean",
466846,
67.93529268,
166.8125989
],
[
"Swaziland",
2000,
"Sub-Saharan Africa",
1010787,
48.67021951,
75.3100636
],
[
"Sweden",
2000,
"Europe & Central Asia",
8872109,
79.64390244,
2279.625321
],
[
"Switzerland",
2000,
"Europe & Central Asia",
7184250,
79.6804878,
3518.970877
],
[
"Syrian Arab Republic",
2000,
"Middle East & North Africa",
15988534,
74.01887805,
59.21796899
],
[
"Tajikistan",
2000,
"Europe & Central Asia",
6172807,
63.75534146,
6.470299091
],
[
"Tanzania",
2000,
"Sub-Saharan Africa",
34038161,
50.37329268,
10.10199549
],
[
"Thailand",
2000,
"East Asia & Pacific",
63155029,
72.51521951,
65.98079752
],
[
"Timor-Leste",
2000,
"East Asia & Pacific",
830089,
56.1902439,
30.29953891
],
[
"Togo",
2000,
"Sub-Saharan Africa",
4793504,
54.8094878,
14.29805678
],
[
"Tonga",
2000,
"East Asia & Pacific",
97935,
70.76092683,
91.57300869
],
[
"Trinidad and Tobago",
2000,
"Latin America & Caribbean",
1292058,
68.39560976,
245.0715601
],
[
"Tunisia",
2000,
"Middle East & North Africa",
9563500,
72.6,
122.5332749
],
[
"Turkey",
2000,
"Europe & Central Asia",
63627862,
69.44687805,
205.3166692
],
[
"Turkmenistan",
2000,
"Europe & Central Asia",
4501419,
63.8955122,
43.85929954
],
[
"Uganda",
2000,
"Sub-Saharan Africa",
24213120,
46.09168293,
15.61499586
],
[
"Ukraine",
2000,
"Europe & Central Asia",
49175847.64,
67.86341463,
35.73579603
],
[
"United Arab Emirates",
2000,
"Middle East & North Africa",
3033491,
74.61590244,
751.676309
],
[
"United Kingdom",
2000,
"Europe & Central Asia",
58892514,
77.74146341,
1765.126832
],
[
"United States",
2000,
"North America",
282162411,
76.63658537,
4703.467344
],
[
"Uruguay",
2000,
"Latin America & Caribbean",
3300847.408,
74.88682927,
773.294517
],
[
"Uzbekistan",
2000,
"Europe & Central Asia",
24650400,
66.95087805,
31.70497883
],
[
"Vanuatu",
2000,
"East Asia & Pacific",
185074,
67.555,
52.49524999
],
[
"Venezuela, RB",
2000,
"Latin America & Caribbean",
24311000,
73.2695122,
273.7819078
],
[
"Vietnam",
2000,
"East Asia & Pacific",
77630900,
71.9455122,
20.89251285
],
[
"Yemen, Rep.",
2000,
"Middle East & North Africa",
17723186,
59.68985366,
25.27741137
],
[
"Zambia",
2000,
"Sub-Saharan Africa",
10201562,
41.92987805,
17.99742234
],
[
"Zimbabwe",
2000,
"Sub-Saharan Africa",
12509477,
44.61797561,
59
],
[
"Albania",
2001,
"Europe & Central Asia",
3077378,
74.72365854,
79.86233284
],
[
"Algeria",
2001,
"Middle East & North Africa",
30982214,
70.38112195,
67.81399457
],
[
"Angola",
2001,
"Sub-Saharan Africa",
14388244,
45.97331707,
30.29481411
],
[
"Argentina",
2001,
"Latin America & Caribbean",
37302116,
73.9295122,
675.7074063
],
[
"Armenia",
2001,
"Europe & Central Asia",
3065810,
71.45804878,
41.13967068
],
[
"Australia",
2001,
"East Asia & Pacific",
19413000,
79.63414634,
1631.917708
],
[
"Austria",
2001,
"Europe & Central Asia",
8042293,
78.52682927,
2405.684807
],
[
"Azerbaijan",
2001,
"Europe & Central Asia",
8111200,
67.14768293,
31.23550084
],
[
"Bahamas, The",
2001,
"Latin America & Caribbean",
301606,
71.96968293,
1111.899844
],
[
"Bahrain",
2001,
"Middle East & North Africa",
642510,
73.91829268,
528.2567765
],
[
"Bangladesh",
2001,
"South Asia",
131944584,
65.20831707,
10.26761116
],
[
"Barbados",
2001,
"Latin America & Caribbean",
268192,
75.50868293,
635.0068981
],
[
"Belarus",
2001,
"Europe & Central Asia",
9928000,
68.50731707,
81.76748168
],
[
"Belgium",
2001,
"Europe & Central Asia",
10286570,
77.97317073,
1875.078284
],
[
"Belize",
2001,
"Latin America & Caribbean",
257300,
73.64892683,
154.2965356
],
[
"Benin",
2001,
"Sub-Saharan Africa",
6721337,
52.81909756,
17.42718515
],
[
"Bhutan",
2001,
"South Asia",
588050,
62.23731707,
50.10947915
],
[
"Bolivia",
2001,
"Latin America & Caribbean",
8476709,
63.32417073,
60.61967065
],
[
"Bosnia and Herzegovina",
2001,
"Europe & Central Asia",
3748370,
74.55317073,
110.5370598
],
[
"Botswana",
2001,
"Sub-Saharan Africa",
1784449,
49.81156098,
174.9486736
],
[
"Brazil",
2001,
"Latin America & Caribbean",
176877135,
70.43963415,
227.749279
],
[
"Brunei Darussalam",
2001,
"East Asia & Pacific",
334348,
76.46490244,
532.5083249
],
[
"Bulgaria",
2001,
"Europe & Central Asia",
8020282,
71.76829268,
129.2324779
],
[
"Burkina Faso",
2001,
"Sub-Saharan Africa",
12648474,
50.56556098,
10.9852869
],
[
"Burundi",
2001,
"Sub-Saharan Africa",
6499653,
46.33639024,
6.761867614
],
[
"Cambodia",
2001,
"East Asia & Pacific",
12653684,
57.89646341,
19.6949777
],
[
"Cameroon",
2001,
"Sub-Saharan Africa",
16039737,
49.79297561,
28.20587508
],
[
"Canada",
2001,
"North America",
31081900,
79.48780488,
2148.976137
],
[
"Cape Verde",
2001,
"Sub-Saharan Africa",
445096,
69.96985366,
65.64996998
],
[
"Central African Republic",
2001,
"Sub-Saharan Africa",
3767068,
43.52353659,
9.88170719
],
[
"Chad",
2001,
"Sub-Saharan Africa",
8517944,
48.28258537,
12.08948487
],
[
"Chile",
2001,
"Latin America & Caribbean",
15604200,
77.20721951,
344.3078321
],
[
"China",
2001,
"East Asia & Pacific",
1271850000,
71.40553659,
47.24745064
],
[
"Colombia",
2001,
"Latin America & Caribbean",
40422597,
71.27365854,
144.8057428
],
[
"Comoros",
2001,
"Sub-Saharan Africa",
577569,
58.09980488,
11.24598691
],
[
"Congo, Dem. Rep.",
2001,
"Sub-Saharan Africa",
50989424,
45.94219512,
5.716249815
],
[
"Congo, Rep.",
2001,
"Sub-Saharan Africa",
3213330,
54.21304878,
21.1859899
],
[
"Costa Rica",
2001,
"Latin America & Caribbean",
4002946,
77.97492683,
291.5534614
],
[
"Cote d'Ivoire",
2001,
"Sub-Saharan Africa",
16892864,
50.25056098,
24.69650358
],
[
"Croatia",
2001,
"Europe & Central Asia",
4440000,
74.51292683,
375.7124859
],
[
"Cuba",
2001,
"Latin America & Caribbean",
11140168,
76.57963415,
177.8751578
],
[
"Cyprus",
2001,
"Europe & Central Asia",
961482,
78.08534146,
776.3148125
],
[
"Czech Republic",
2001,
"Europe & Central Asia",
10236491,
75.17317073,
404.3682423
],
[
"Denmark",
2001,
"Europe & Central Asia",
5358783,
76.79268293,
2726.07502
],
[
"Djibouti",
2001,
"Middle East & North Africa",
749604,
54.1347561,
41.42322494
],
[
"Dominican Republic",
2001,
"Latin America & Caribbean",
8726256,
71.15453659,
174.0533275
],
[
"Ecuador",
2001,
"Latin America & Caribbean",
12552036,
73.73807317,
78.24310417
],
[
"Egypt, Arab Rep.",
2001,
"Middle East & North Africa",
68888032,
69.66743902,
75.77555387
],
[
"El Salvador",
2001,
"Latin America & Caribbean",
5966027,
69.89568293,
181.0417553
],
[
"Equatorial Guinea",
2001,
"Sub-Saharan Africa",
537195,
48.75556098,
64.44617927
],
[
"Eritrea",
2001,
"Sub-Saharan Africa",
3812473,
56.59429268,
7.073781027
],
[
"Estonia",
2001,
"Europe & Central Asia",
1364101,
70.25853659,
220.2050105
],
[
"Ethiopia",
2001,
"Sub-Saharan Africa",
67303731,
52.28221951,
5.654636924
],
[
"Fiji",
2001,
"East Asia & Pacific",
814780,
67.79290244,
66.02155394
],
[
"Finland",
2001,
"Europe & Central Asia",
5188008,
77.96585366,
1783.871216
],
[
"France",
2001,
"Europe & Central Asia",
61355563,
79.05853659,
2234.306957
],
[
"Gabon",
2001,
"Sub-Saharan Africa",
1263165,
59.49778049,
106.6391086
],
[
"Gambia, The",
2001,
"Sub-Saharan Africa",
1335674,
55.4654878,
19.08633983
],
[
"Georgia",
2001,
"Europe & Central Asia",
4386400,
71.82673171,
53.7079071
],
[
"Germany",
2001,
"Europe & Central Asia",
82349925,
78.32926829,
2399.436443
],
[
"Ghana",
2001,
"Sub-Saharan Africa",
19632265,
58.75553659,
15.15861169
],
[
"Greece",
2001,
"Europe & Central Asia",
10949957,
78.38780488,
1053.467328
],
[
"Grenada",
2001,
"Latin America & Caribbean",
101731,
73.727,
392.3534655
],
[
"Guatemala",
2001,
"Latin America & Caribbean",
11512637,
68.22895122,
104.7216722
],
[
"Guinea",
2001,
"Sub-Saharan Africa",
8472339,
48.72982927,
21.0684122
],
[
"Guinea-Bissau",
2001,
"Sub-Saharan Africa",
1264855,
45.14685366,
15.53696444
],
[
"Guyana",
2001,
"Latin America & Caribbean",
735327,
64.98556098,
55.15585868
],
[
"Haiti",
2001,
"Latin America & Caribbean",
8791931,
58.58970732,
22.46962765
],
[
"Honduras",
2001,
"Latin America & Caribbean",
6347272,
70.60097561,
82.91234189
],
[
"Hungary",
2001,
"Europe & Central Asia",
10187576,
72.24878049,
374.7306725
],
[
"Iceland",
2001,
"Europe & Central Asia",
284968,
80.6902439,
2674.090796
],
[
"India",
2001,
"South Asia",
1071374264,
61.96878049,
20.92391547
],
[
"Indonesia",
2001,
"East Asia & Pacific",
216203499,
65.94907317,
16.57182934
],
[
"Iran, Islamic Rep.",
2001,
"Middle East & North Africa",
66313553,
70.05853659,
293.8873481
],
[
"Iraq",
2001,
"Middle East & North Africa",
24937728,
70.43458537,
24.49723094
],
[
"Ireland",
2001,
"Europe & Central Asia",
3866243,
77.1397561,
1831.0002
],
[
"Israel",
2001,
"Middle East & North Africa",
6439000,
79.40731707,
1539.354593
],
[
"Italy",
2001,
"Europe & Central Asia",
56977217,
79.82926829,
1610.536006
],
[
"Jamaica",
2001,
"Latin America & Caribbean",
2604788.619,
70.60560976,
178.3219514
],
[
"Japan",
2001,
"East Asia & Pacific",
127149000,
81.41707317,
2550.518689
],
[
"Jordan",
2001,
"Middle East & North Africa",
4917500,
72.19265854,
181.0138525
],
[
"Kazakhstan",
2001,
"Europe & Central Asia",
14858335,
65.76829268,
51.61292748
],
[
"Kenya",
2001,
"Sub-Saharan Africa",
32076186,
52.01807317,
18.71309129
],
[
"Korea, Rep.",
2001,
"East Asia & Pacific",
47357000,
76.33756098,
538.7910897
],
[
"Kuwait",
2001,
"Middle East & North Africa",
2009588,
73.83078049,
626.9294315
],
[
"Kyrgyz Republic",
2001,
"Europe & Central Asia",
4945100,
68.70731707,
14.65312724
],
[
"Lao PDR",
2001,
"East Asia & Pacific",
5408912,
61.97817073,
13.24508711
],
[
"Latvia",
2001,
"Europe & Central Asia",
2355011,
70.76097561,
215.2411141
],
[
"Lebanon",
2001,
"Middle East & North Africa",
3802903,
70.79531707,
432.8435905
],
[
"Lesotho",
2001,
"Sub-Saharan Africa",
1988983,
46.13558537,
26.74058558
],
[
"Liberia",
2001,
"Sub-Saharan Africa",
2939296,
47.14882927,
11.22629785
],
[
"Libya",
2001,
"Middle East & North Africa",
5331311,
72.76280488,
254.2506326
],
[
"Lithuania",
2001,
"Europe & Central Asia",
3481292,
71.65853659,
219.7454974
],
[
"Luxembourg",
2001,
"Europe & Central Asia",
441525,
77.82439024,
3387.546862
],
[
"Macedonia, FYR",
2001,
"Europe & Central Asia",
2016075,
73.07631707,
144.9672957
],
[
"Madagascar",
2001,
"Sub-Saharan Africa",
15846412,
60.62092683,
10.9521902
],
[
"Malawi",
2001,
"Sub-Saharan Africa",
11529337,
46.2764878,
7.553071464
],
[
"Malaysia",
2001,
"East Asia & Pacific",
23964621,
72.32112195,
138.1741397
],
[
"Maldives",
2001,
"South Asia",
277791,
71.33068293,
152.3526188
],
[
"Mali",
2001,
"Sub-Saharan Africa",
11639798,
47.55265854,
16.57325794
],
[
"Malta",
2001,
"Middle East & North Africa",
393028,
78.44146341,
679.1256314
],
[
"Mauritania",
2001,
"Sub-Saharan Africa",
2720367,
57.05017073,
19.59685772
],
[
"Mauritius",
2001,
"Sub-Saharan Africa",
1199881,
71.76585366,
145.1496542
],
[
"Mexico",
2001,
"Latin America & Caribbean",
101329543,
74.52046341,
372.8344072
],
[
"Micronesia, Fed. Sts.",
2001,
"East Asia & Pacific",
107290,
67.37926829,
189.7119516
],
[
"Moldova",
2001,
"Europe & Central Asia",
3631460,
67.08082927,
28.97753567
],
[
"Mongolia",
2001,
"East Asia & Pacific",
2434515,
63.68197561,
24.04114472
],
[
"Montenegro",
2001,
"Europe & Central Asia",
630299,
74.67517073,
155.4333079
],
[
"Morocco",
2001,
"Middle East & North Africa",
29129204,
69.05487805,
57.48271624
],
[
"Mozambique",
2001,
"Sub-Saharan Africa",
18691461,
47.39565854,
12.30219649
],
[
"Myanmar",
2001,
"East Asia & Pacific",
45323903,
62.08378049,
2.611915261
],
[
"Namibia",
2001,
"Sub-Saharan Africa",
1936399,
57.30121951,
113.1385415
],
[
"Nepal",
2001,
"South Asia",
24980184,
62.33260976,
12.56226742
],
[
"Netherlands",
2001,
"Europe & Central Asia",
16046180,
78.1902439,
2072.178821
],
[
"New Zealand",
2001,
"East Asia & Pacific",
3880500,
78.69268293,
1051.511109
],
[
"Nicaragua",
2001,
"Latin America & Caribbean",
5148635,
70.13090244,
54.66591587
],
[
"Niger",
2001,
"Sub-Saharan Africa",
11308134,
48.99082927,
6.502048057
],
[
"Nigeria",
2001,
"Sub-Saharan Africa",
126704722,
46.79146341,
18.18448026
],
[
"Norway",
2001,
"Europe & Central Asia",
4513751,
78.78536585,
3333.373054
],
[
"Oman",
2001,
"Middle East & North Africa",
2279171,
74.20585366,
263.0325437
],
[
"Pakistan",
2001,
"South Asia",
147557907,
63.36239024,
13.1250025
],
[
"Panama",
2001,
"Latin America & Caribbean",
3012635,
74.41373171,
302.6254425
],
[
"Papua New Guinea",
2001,
"East Asia & Pacific",
5518586,
59.1247561,
25.21572231
],
[
"Paraguay",
2001,
"Latin America & Caribbean",
5453921,
70.30934146,
106.9765542
],
[
"Peru",
2001,
"Latin America & Caribbean",
26228274,
70.93070732,
96.25948772
],
[
"Philippines",
2001,
"East Asia & Pacific",
78964389,
66.9342439,
28.95784845
],
[
"Poland",
2001,
"Europe & Central Asia",
38248076,
74.2,
291.6745473
],
[
"Portugal",
2001,
"Europe & Central Asia",
10292999,
76.81463415,
1082.727933
],
[
"Qatar",
2001,
"Middle East & North Africa",
608057,
76.49639024,
735.6876173
],
[
"Romania",
2001,
"Europe & Central Asia",
22131970,
71.16097561,
79.16501196
],
[
"Russian Federation",
2001,
"Europe & Central Asia",
145949580.3,
65.48780488,
119.0387153
],
[
"Rwanda",
2001,
"Sub-Saharan Africa",
8456968,
48.13670732,
8.642903069
],
[
"Samoa",
2001,
"East Asia & Pacific",
177645,
69.82007317,
77.69300104
],
[
"San Marino",
2001,
"Europe & Central Asia",
27543,
80.97317073,
2770.437871
],
[
"Sao Tome and Principe",
2001,
"Sub-Saharan Africa",
143430,
62.50453659,
51.7583001
],
[
"Saudi Arabia",
2001,
"Middle East & North Africa",
20681576,
71.70795122,
399.4487197
],
[
"Senegal",
2001,
"Sub-Saharan Africa",
9758841,
56.05843902,
22.61693249
],
[
"Serbia",
2001,
"Europe & Central Asia",
7503433,
72.18536585,
115.0614952
],
[
"Sierra Leone",
2001,
"Sub-Saharan Africa",
4303850,
40.57768293,
31.85885787
],
[
"Singapore",
2001,
"East Asia & Pacific",
4138000,
78.35121951,
531.2950731
],
[
"Slovak Republic",
2001,
"Europe & Central Asia",
5378867,
73.40243902,
215.9960406
],
[
"Slovenia",
2001,
"Europe & Central Asia",
1992060,
75.75853659,
881.8176561
],
[
"Solomon Islands",
2001,
"East Asia & Pacific",
420232,
63.45314634,
61.40195648
],
[
"Somalia",
2001,
"Sub-Saharan Africa",
7596920,
48.76636585,
3.860271297
],
[
"South Africa",
2001,
"Sub-Saharan Africa",
44909738,
53.72731707,
224.0370899
],
[
"Spain",
2001,
"Europe & Central Asia",
40720484,
79.36829268,
1082.732628
],
[
"Sri Lanka",
2001,
"South Asia",
18797000,
71.78380488,
31.39856965
],
[
"St. Lucia",
2001,
"Latin America & Caribbean",
157897,
73.95439024,
273.4862597
],
[
"St. Vincent and the Grenadines",
2001,
"Latin America & Caribbean",
107987,
70.47736585,
145.2420164
],
[
"Sudan",
2001,
"Sub-Saharan Africa",
28177967,
57.60026829,
13.38194714
],
[
"Suriname",
2001,
"Latin America & Caribbean",
473431,
68.01760976,
135.4805209
],
[
"Swaziland",
2001,
"Sub-Saharan Africa",
1012111,
47.4397561,
64.60131141
],
[
"Sweden",
2001,
"Europe & Central Asia",
8895960,
79.79512195,
2269.967144
],
[
"Switzerland",
2001,
"Europe & Central Asia",
7229854,
80.1804878,
3706.743496
],
[
"Syrian Arab Republic",
2001,
"Middle East & North Africa",
16454926,
74.21202439,
57.73347493
],
[
"Tajikistan",
2001,
"Europe & Central Asia",
6232587,
64.10485366,
7.952024093
],
[
"Tanzania",
2001,
"Sub-Saharan Africa",
34917073,
50.80473171,
10.50021619
],
[
"Thailand",
2001,
"East Asia & Pacific",
63898879,
72.64143902,
59.94885078
],
[
"Timor-Leste",
2001,
"East Asia & Pacific",
852522,
57.02178049,
33.64965913
],
[
"Togo",
2001,
"Sub-Saharan Africa",
4926142,
54.93409756,
13.93704172
],
[
"Tonga",
2001,
"East Asia & Pacific",
98476,
70.89904878,
95.91322751
],
[
"Trinidad and Tobago",
2001,
"Latin America & Caribbean",
1296962,
68.31439024,
281.1022928
],
[
"Tunisia",
2001,
"Middle East & North Africa",
9673600,
72.84878049,
122.2911302
],
[
"Turkey",
2001,
"Europe & Central Asia",
64544914,
70.064,
155.2870633
],
[
"Turkmenistan",
2001,
"Europe & Central Asia",
4551737,
64.02578049,
58.45456685
],
[
"Uganda",
2001,
"Sub-Saharan Africa",
24984181,
46.76673171,
16.98907547
],
[
"Ukraine",
2001,
"Europe & Central Asia",
48683864.58,
68.28707317,
44.37074077
],
[
"United Arab Emirates",
2001,
"Middle East & North Africa",
3149440,
74.83707317,
814.9195
],
[
"United Kingdom",
2001,
"Europe & Central Asia",
59107960,
77.99268293,
1806.242732
],
[
"United States",
2001,
"North America",
284968955,
76.73658537,
5051.944952
],
[
"Uruguay",
2001,
"Latin America & Caribbean",
3308356.425,
74.87219512,
703.128192
],
[
"Uzbekistan",
2001,
"Europe & Central Asia",
24964400,
67.02892683,
26.57822164
],
[
"Vanuatu",
2001,
"East Asia & Pacific",
189544,
67.93570732,
49.93250072
],
[
"Venezuela, RB",
2001,
"Latin America & Caribbean",
24765000,
73.42926829,
295.2469101
],
[
"Vietnam",
2001,
"East Asia & Pacific",
78621000,
72.38131707,
22.92924677
],
[
"Yemen, Rep.",
2001,
"Middle East & North Africa",
18266008,
60.29314634,
26.88574147
],
[
"Zambia",
2001,
"Sub-Saharan Africa",
10449825,
42.03082927,
20.5979485
],
[
"Zimbabwe",
2001,
"Sub-Saharan Africa",
12575015,
43.76843902,
65.96143954
],
[
"Afghanistan",
2002,
"South Asia",
27465525,
45.83314634,
14.24731572
],
[
"Albania",
2002,
"Europe & Central Asia",
3089778,
75.16121951,
90.26464025
],
[
"Algeria",
2002,
"Middle East & North Africa",
31441848,
70.72990244,
69.92474459
],
[
"Angola",
2002,
"Sub-Saharan Africa",
14890474,
46.71192683,
28.68255971
],
[
"Antigua and Barbuda",
2002,
"Latin America & Caribbean",
80507,
75.2804878,
438.1414039
],
[
"Argentina",
2002,
"Latin America & Caribbean",
37657340,
74.13860976,
225.2861687
],
[
"Armenia",
2002,
"Europe & Central Asia",
3061067,
71.88960976,
41.99232073
],
[
"Australia",
2002,
"East Asia & Pacific",
19651400,
79.93658537,
1846.880949
],
[
"Austria",
2002,
"Europe & Central Asia",
8081957,
78.67804878,
2599.388278
],
[
"Azerbaijan",
2002,
"Europe & Central Asia",
8171950,
67.55485366,
33.63898826
],
[
"Bahamas, The",
2002,
"Latin America & Caribbean",
305801,
72.3384878,
1195.853499
],
[
"Bahrain",
2002,
"Middle East & North Africa",
642070,
74.03753659,
580.1613452
],
[
"Bangladesh",
2002,
"South Asia",
134266428,
65.66831707,
10.87360205
],
[
"Barbados",
2002,
"Latin America & Caribbean",
268813,
75.60819512,
670.9496459
],
[
"Belarus",
2002,
"Europe & Central Asia",
9865000,
68.05609756,
94.7780615
],
[
"Belgium",
2002,
"Europe & Central Asia",
10332785,
78.07560976,
2070.855227
],
[
"Belize",
2002,
"Latin America & Caribbean",
265200,
73.80863415,
156.8694464
],
[
"Benin",
2002,
"Sub-Saharan Africa",
6937985,
53.0615122,
17.29773246
],
[
"Bhutan",
2002,
"South Asia",
606024,
63.02680488,
69.8647438
],
[
"Bolivia",
2002,
"Latin America & Caribbean",
8646659,
63.67880488,
59.69686121
],
[
"Bosnia and Herzegovina",
2002,
"Europe & Central Asia",
3775883,
74.61536585,
124.5030884
],
[
"Botswana",
2002,
"Sub-Saharan Africa",
1808103,
49.33753659,
192.7409167
],
[
"Brazil",
2002,
"Latin America & Caribbean",
179289227,
70.72409756,
203.0640704
],
[
"Brunei Darussalam",
2002,
"East Asia & Pacific",
341585,
76.68104878,
533.2818995
],
[
"Bulgaria",
2002,
"Europe & Central Asia",
7868468,
71.86585366,
153.9808914
],
[
"Burkina Faso",
2002,
"Sub-Saharan Africa",
13015435,
50.97763415,
12.66446702
],
[
"Burundi",
2002,
"Sub-Saharan Africa",
6656071,
46.67307317,
6.452135541
],
[
"Cambodia",
2002,
"East Asia & Pacific",
12845222,
58.37521951,
21.40549537
],
[
"Cameroon",
2002,
"Sub-Saharan Africa",
16408085,
49.57809756,
32.21793374
],
[
"Canada",
2002,
"North America",
31362000,
79.5902439,
2249.068799
],
[
"Cape Verde",
2002,
"Sub-Saharan Africa",
452740,
70.51365854,
70.99249761
],
[
"Central African Republic",
2002,
"Sub-Saharan Africa",
3829238,
43.52882927,
10.9134221
],
[
"Chad",
2002,
"Sub-Saharan Africa",
8831199,
48.12958537,
18.02516798
],
[
"Chile",
2002,
"Latin America & Caribbean",
15783991,
77.55521951,
326.7096428
],
[
"China",
2002,
"East Asia & Pacific",
1280400000,
71.57943902,
54.09261366
],
[
"Colombia",
2002,
"Latin America & Caribbean",
41078136,
71.53402439,
135.1938727
],
[
"Comoros",
2002,
"Sub-Saharan Africa",
593170,
58.31721951,
14.89674608
],
[
"Congo, Dem. Rep.",
2002,
"Sub-Saharan Africa",
52491329,
46.25380488,
4.406580213
],
[
"Congo, Rep.",
2002,
"Sub-Saharan Africa",
3288923,
54.3414878,
22.52207165
],
[
"Costa Rica",
2002,
"Latin America & Caribbean",
4083197,
78.1347561,
331.8628874
],
[
"Cote d'Ivoire",
2002,
"Sub-Saharan Africa",
17180649,
50.44387805,
23.12726358
],
[
"Croatia",
2002,
"Europe & Central Asia",
4440000,
74.71731707,
374.7033533
],
[
"Cuba",
2002,
"Latin America & Caribbean",
11175434,
76.81534146,
194.7966144
],
[
"Cyprus",
2002,
"Europe & Central Asia",
979874,
78.20926829,
881.6694161
],
[
"Czech Republic",
2002,
"Europe & Central Asia",
10204853,
75.22195122,
522.5938126
],
[
"Denmark",
2002,
"Europe & Central Asia",
5375931,
76.89512195,
3018.616414
],
[
"Djibouti",
2002,
"Middle East & North Africa",
765283,
54.44712195,
42.44570964
],
[
"Dominica",
2002,
"Latin America & Caribbean",
69301,
76.59756098,
238.3590211
],
[
"Dominican Republic",
2002,
"Latin America & Caribbean",
8860760,
71.40531707,
177.2231302
],
[
"Ecuador",
2002,
"Latin America & Caribbean",
12767415,
74.04080488,
107.4971837
],
[
"Egypt, Arab Rep.",
2002,
"Middle East & North Africa",
70174632,
70.2032439,
73.60921273
],
[
"El Salvador",
2002,
"Latin America & Caribbean",
5988233,
70.09882927,
183.3094699
],
[
"Equatorial Guinea",
2002,
"Sub-Saharan Africa",
554429,
48.85178049,
145.4983068
],
[
"Eritrea",
2002,
"Sub-Saharan Africa",
3973973,
57.13246341,
6.796524313
],
[
"Estonia",
2002,
"Europe & Central Asia",
1358644,
70.90487805,
259.212765
],
[
"Ethiopia",
2002,
"Sub-Saharan Africa",
69040669,
52.91868293,
5.303208166
],
[
"Fiji",
2002,
"East Asia & Pacific",
816336,
67.97736585,
77.60109453
],
[
"Finland",
2002,
"Europe & Central Asia",
5200598,
78.1195122,
2029.680474
],
[
"France",
2002,
"Europe & Central Asia",
61803045,
79.26097561,
2489.203158
],
[
"Gabon",
2002,
"Sub-Saharan Africa",
1290532,
59.42390244,
122.2837888
],
[
"Gambia, The",
2002,
"Sub-Saharan Africa",
1376035,
55.7687561,
15.76209491
],
[
"Georgia",
2002,
"Europe & Central Asia",
4357000,
72.06863415,
64.03320887
],
[
"Germany",
2002,
"Europe & Central Asia",
82488495,
78.22926829,
2609.056835
],
[
"Ghana",
2002,
"Sub-Saharan Africa",
20114361,
59.23219512,
14.57111014
],
[
"Greece",
2002,
"Europe & Central Asia",
10987543,
78.64146341,
1220.569878
],
[
"Grenada",
2002,
"Latin America & Caribbean",
101954,
74.0265122,
353.6918608
],
[
"Guatemala",
2002,
"Latin America & Caribbean",
11800351,
68.66231707,
109.8450976
],
[
"Guinea",
2002,
"Sub-Saharan Africa",
8604936,
49.35702439,
22.49034905
],
[
"Guinea-Bissau",
2002,
"Sub-Saharan Africa",
1289526,
45.39880488,
17.9322286
],
[
"Guyana",
2002,
"Latin America & Caribbean",
738011,
65.5517561,
56.73023297
],
[
"Haiti",
2002,
"Latin America & Caribbean",
8935252,
58.84329268,
19.66570133
],
[
"Honduras",
2002,
"Latin America & Caribbean",
6477525,
70.80260976,
88.37192258
],
[
"Hungary",
2002,
"Europe & Central Asia",
10158608,
72.34878049,
496.1277381
],
[
"Iceland",
2002,
"Europe & Central Asia",
287523,
80.50243902,
3228.474069
],
[
"India",
2002,
"South Asia",
1088694080,
62.32112195,
21.05767245
],
[
"Indonesia",
2002,
"East Asia & Pacific",
219026365,
66.23780488,
19.97728574
],
[
"Iran, Islamic Rep.",
2002,
"Middle East & North Africa",
67212850,
70.38678049,
108.3618288
],
[
"Iraq",
2002,
"Middle East & North Africa",
25577836,
70.02587805,
9.530608402
],
[
"Ireland",
2002,
"Europe & Central Asia",
3931947,
77.63658537,
2206.034851
],
[
"Israel",
2002,
"Middle East & North Africa",
6570000,
79.45121951,
1369.111909
],
[
"Italy",
2002,
"Europe & Central Asia",
57157406,
79.97804878,
1778.171991
],
[
"Jamaica",
2002,
"Latin America & Caribbean",
2617495.224,
70.7762439,
179.7172983
],
[
"Japan",
2002,
"East Asia & Pacific",
127445000,
81.56341463,
2453.555004
],
[
"Jordan",
2002,
"Middle East & North Africa",
5038000,
72.30778049,
186.2763198
],
[
"Kazakhstan",
2002,
"Europe & Central Asia",
14858948,
65.96829268,
59.76278624
],
[
"Kenya",
2002,
"Sub-Saharan Africa",
32927864,
51.96595122,
18.12119364
],
[
"Kiribati",
2002,
"East Asia & Pacific",
87147,
62.82439024,
74.77435064
],
[
"Korea, Rep.",
2002,
"East Asia & Pacific",
47622000,
76.82390244,
594.4377964
],
[
"Kuwait",
2002,
"Middle East & North Africa",
2069816,
73.90356098,
656.9069663
],
[
"Kyrgyz Republic",
2002,
"Europe & Central Asia",
4990700,
68.10731707,
17.44204605
],
[
"Lao PDR",
2002,
"East Asia & Pacific",
5496700,
62.5752439,
12.92537601
],
[
"Latvia",
2002,
"Europe & Central Asia",
2338624,
70.96097561,
248.177925
],
[
"Lebanon",
2002,
"Middle East & North Africa",
3868504,
70.95907317,
426.893043
],
[
"Lesotho",
2002,
"Sub-Saharan Africa",
2010261,
45.05478049,
22.56964631
],
[
"Liberia",
2002,
"Sub-Saharan Africa",
2996082,
48.38721951,
9.706899586
],
[
"Libya",
2002,
"Middle East & North Africa",
5434293,
72.97692683,
175.6273867
],
[
"Lithuania",
2002,
"Europe & Central Asia",
3469070,
71.76097561,
262.5018237
],
[
"Luxembourg",
2002,
"Europe & Central Asia",
446175,
77.96585366,
4182.41167
],
[
"Macedonia, FYR",
2002,
"Europe & Central Asia",
2022255,
73.24268293,
175.0911952
],
[
"Madagascar",
2002,
"Sub-Saharan Africa",
16338968,
61.55136585,
10.3588343
],
[
"Malawi",
2002,
"Sub-Saharan Africa",
11833102,
46.70731707,
10.86175713
],
[
"Malaysia",
2002,
"East Asia & Pacific",
24515323,
72.49226829,
149.3365576
],
[
"Maldives",
2002,
"South Asia",
282266,
72.21807317,
151.0219938
],
[
"Mali",
2002,
"Sub-Saharan Africa",
12001887,
47.87309756,
16.78542419
],
[
"Malta",
2002,
"Middle East & North Africa",
395969,
78.09268293,
831.6374918
],
[
"Mauritania",
2002,
"Sub-Saharan Africa",
2800333,
57.09504878,
24.3845949
],
[
"Mauritius",
2002,
"Sub-Saharan Africa",
1210196,
71.96585366,
165.4032565
],
[
"Mexico",
2002,
"Latin America & Caribbean",
102634153,
74.76207317,
396.4916081
],
[
"Micronesia, Fed. Sts.",
2002,
"East Asia & Pacific",
107728,
67.49373171,
176.5635808
],
[
"Moldova",
2002,
"Europe & Central Asia",
3623059,
67.27907317,
36.95389282
],
[
"Mongolia",
2002,
"East Asia & Pacific",
2458853,
64.27692683,
27.3437605
],
[
"Montenegro",
2002,
"Europe & Central Asia",
628594,
74.46958537,
175.3972168
],
[
"Morocco",
2002,
"Middle East & North Africa",
29453931,
69.41958537,
72.84275258
],
[
"Mozambique",
2002,
"Sub-Saharan Africa",
19200021,
47.52678049,
14.11101639
],
[
"Myanmar",
2002,
"East Asia & Pacific",
45609292,
62.28282927,
3.008623641
],
[
"Namibia",
2002,
"Sub-Saharan Africa",
1973408,
57.20165854,
105.0484595
],
[
"Nepal",
2002,
"South Asia",
25562573,
63.15365854,
12.84490582
],
[
"Netherlands",
2002,
"Europe & Central Asia",
16148929,
78.29268293,
2405.068301
],
[
"New Zealand",
2002,
"East Asia & Pacific",
3948500,
78.84634146,
1244.18121
],
[
"Nicaragua",
2002,
"Latin America & Caribbean",
5219724,
70.61417073,
57.18935453
],
[
"Niger",
2002,
"Sub-Saharan Africa",
11706182,
49.69602439,
6.838551641
],
[
"Nigeria",
2002,
"Sub-Saharan Africa",
129832447,
47.3504878,
17.80472072
],
[
"Norway",
2002,
"Europe & Central Asia",
4538159,
78.98780488,
4140.058432
],
[
"Oman",
2002,
"Middle East & North Africa",
2302874,
74.19565854,
278.07021
],
[
"Pakistan",
2002,
"South Asia",
150407242,
63.55336585,
14.92031153
],
[
"Panama",
2002,
"Latin America & Caribbean",
3069123,
74.59965854,
321.0688131
],
[
"Papua New Guinea",
2002,
"East Asia & Pacific",
5659946,
59.46890244,
24.41954735
],
[
"Paraguay",
2002,
"Latin America & Caribbean",
5564709,
70.56639024,
79.54611061
],
[
"Peru",
2002,
"Latin America & Caribbean",
26579252,
71.3592439,
102.8288909
],
[
"Philippines",
2002,
"East Asia & Pacific",
80630416,
67.06380488,
28.16336309
],
[
"Poland",
2002,
"Europe & Central Asia",
38230364,
74.49756098,
328.4688967
],
[
"Portugal",
2002,
"Europe & Central Asia",
10368403,
77.06585366,
1185.939376
],
[
"Qatar",
2002,
"Middle East & North Africa",
624173,
76.68763415,
839.5944126
],
[
"Romania",
2002,
"Europe & Central Asia",
21803129,
71.0097561,
96.86825361
],
[
"Russian Federation",
2002,
"Europe & Central Asia",
145299690.3,
65.08536585,
142.0484925
],
[
"Rwanda",
2002,
"Sub-Saharan Africa",
8696378,
49.37758537,
8.05469443
],
[
"Samoa",
2002,
"East Asia & Pacific",
178488,
70.13582927,
81.77132889
],
[
"San Marino",
2002,
"Europe & Central Asia",
28251,
81.1195122,
2890.892377
],
[
"Sao Tome and Principe",
2002,
"Sub-Saharan Africa",
145761,
62.66131707,
58.68796333
],
[
"Saudi Arabia",
2002,
"Middle East & North Africa",
21463072,
71.93512195,
377.503749
],
[
"Senegal",
2002,
"Sub-Saharan Africa",
10023194,
56.38265854,
26.94912651
],
[
"Serbia",
2002,
"Europe & Central Asia",
7500031,
72.28536585,
178.6943651
],
[
"Seychelles",
2002,
"Sub-Saharan Africa",
83700,
72.95365854,
379.1163651
],
[
"Sierra Leone",
2002,
"Sub-Saharan Africa",
4505515,
41.48943902,
34.82457408
],
[
"Singapore",
2002,
"East Asia & Pacific",
4176000,
78.69512195,
648.3487205
],
[
"Slovak Republic",
2002,
"Europe & Central Asia",
5379056,
73.60487805,
256.03033
],
[
"Slovenia",
2002,
"Europe & Central Asia",
1994530,
76.00731707,
999.6642132
],
[
"Solomon Islands",
2002,
"East Asia & Pacific",
432107,
64.03392683,
48.1543896
],
[
"South Africa",
2002,
"Sub-Saharan Africa",
45533292,
52.79241463,
205.2772941
],
[
"Spain",
2002,
"Europe & Central Asia",
41313973,
79.56829268,
1204.473332
],
[
"Sri Lanka",
2002,
"South Asia",
18921000,
72.54390244,
34.45681678
],
[
"St. Kitts and Nevis",
2002,
"Latin America & Caribbean",
46710,
71.33658537,
370.5504393
],
[
"St. Lucia",
2002,
"Latin America & Caribbean",
159133,
73.70731707,
283.3864998
],
[
"St. Vincent and the Grenadines",
2002,
"Latin America & Caribbean",
108150,
70.60143902,
167.9557199
],
[
"Sudan",
2002,
"Sub-Saharan Africa",
28806330,
58.18758537,
14.88862435
],
[
"Suriname",
2002,
"Latin America & Caribbean",
480132,
68.14958537,
160.6390386
],
[
"Swaziland",
2002,
"Sub-Saharan Africa",
1013437,
46.52797561,
58.32480016
],
[
"Sweden",
2002,
"Europe & Central Asia",
8924958,
79.84634146,
2590.358654
],
[
"Switzerland",
2002,
"Europe & Central Asia",
7284753,
80.38536585,
4140.599205
],
[
"Syrian Arab Republic",
2002,
"Middle East & North Africa",
16962918,
74.39765854,
57.28218237
],
[
"Tajikistan",
2002,
"Europe & Central Asia",
6285809,
64.46990244,
8.702801534
],
[
"Tanzania",
2002,
"Sub-Saharan Africa",
35832494,
51.32826829,
10.32342821
],
[
"Thailand",
2002,
"East Asia & Pacific",
64642931,
72.77692683,
72.62312225
],
[
"Timor-Leste",
2002,
"East Asia & Pacific",
888099,
57.78021951,
31.00959072
],
[
"Togo",
2002,
"Sub-Saharan Africa",
5050919,
55.03863415,
14.4436919
],
[
"Tonga",
2002,
"East Asia & Pacific",
99053,
71.03912195,
92.31736416
],
[
"Trinidad and Tobago",
2002,
"Latin America & Caribbean",
1301576,
68.29021951,
331.1394258
],
[
"Tunisia",
2002,
"Middle East & North Africa",
9781900,
73,
127.7729005
],
[
"Turkey",
2002,
"Europe & Central Asia",
65446165,
70.63914634,
188.7038278
],
[
"Turkmenistan",
2002,
"Europe & Central Asia",
4600093,
64.1412439,
63.2730111
],
[
"Uganda",
2002,
"Sub-Saharan Africa",
25794397,
47.54312195,
17.60469027
],
[
"Ukraine",
2002,
"Europe & Central Asia",
48202500,
68.27560976,
55.17315126
],
[
"United Arab Emirates",
2002,
"Middle East & North Africa",
3254691,
75.05221951,
916.9391318
],
[
"United Kingdom",
2002,
"Europe & Central Asia",
59325809,
78.14390244,
2057.656779
],
[
"United States",
2002,
"North America",
287625193,
76.83658537,
5452.996081
],
[
"Uruguay",
2002,
"Latin America & Caribbean",
3308526.676,
74.83634146,
448.9620325
],
[
"Uzbekistan",
2002,
"Europe & Central Asia",
25271800,
67.08597561,
21.34329738
],
[
"Vanuatu",
2002,
"East Asia & Pacific",
194555,
68.30146341,
51.92552709
],
[
"Venezuela, RB",
2002,
"Latin America & Caribbean",
25220000,
73.62926829,
207.7919429
],
[
"Vietnam",
2002,
"East Asia & Pacific",
79538700,
72.77709756,
22.39111689
],
[
"Yemen, Rep.",
2002,
"Middle East & North Africa",
18831819,
60.90685366,
27.71272419
],
[
"Zambia",
2002,
"Sub-Saharan Africa",
10693471,
42.34253659,
23.05844617
],
[
"Afghanistan",
2003,
"South Asia",
28255719,
46.09243902,
17.88009029
],
[
"Albania",
2003,
"Europe & Central Asia",
3106701,
75.54202439,
113.0051384
],
[
"Algeria",
2003,
"Middle East & North Africa",
31913462,
71.059,
79.62346125
],
[
"Angola",
2003,
"Sub-Saharan Africa",
15419943,
47.39336585,
37.11814165
],
[
"Argentina",
2003,
"Latin America & Caribbean",
38001251,
74.34429268,
280.1927608
],
[
"Armenia",
2003,
"Europe & Central Asia",
3060554,
72.27839024,
51.03744295
],
[
"Australia",
2003,
"East Asia & Pacific",
19895400,
80.23902439,
2322.959512
],
[
"Austria",
2003,
"Europe & Central Asia",
8121423,
78.63170732,
3222.929815
],
[
"Azerbaijan",
2003,
"Europe & Central Asia",
8234100,
67.99431707,
57.00459617
],
[
"Bahamas, The",
2003,
"Latin America & Caribbean",
310201,
72.73717073,
1258.586341
],
[
"Bahrain",
2003,
"Middle East & North Africa",
647164,
74.15529268,
639.4530441
],
[
"Bangladesh",
2003,
"South Asia",
136514768,
66.10985366,
11.49440685
],
[
"Barbados",
2003,
"Latin America & Caribbean",
269389,
75.70529268,
695.7607929
],
[
"Belarus",
2003,
"Europe & Central Asia",
9797000,
68.55365854,
118.428948
],
[
"Belgium",
2003,
"Europe & Central Asia",
10376133,
78.12926829,
3003.248157
],
[
"Belize",
2003,
"Latin America & Caribbean",
273700,
74.01365854,
168.6424134
],
[
"Benin",
2003,
"Sub-Saharan Africa",
7164976,
53.3014878,
22.9900745
],
[
"Bhutan",
2003,
"South Asia",
624431,
63.73160976,
50.38822797
],
[
"Bolivia",
2003,
"Latin America & Caribbean",
8815911,
64.0275122,
51.06591122
],
[
"Bosnia and Herzegovina",
2003,
"Europe & Central Asia",
3782717,
74.63487805,
177.9140127
],
[
"Botswana",
2003,
"Sub-Saharan Africa",
1830127,
49.32734146,
250.2058458
],
[
"Brazil",
2003,
"Latin America & Caribbean",
181633074,
70.99614634,
213.6492122
],
[
"Brunei Darussalam",
2003,
"East Asia & Pacific",
348771,
76.88080488,
582.8743784
],
[
"Bulgaria",
2003,
"Europe & Central Asia",
7823557,
72.06585366,
200.8483114
],
[
"Burkina Faso",
2003,
"Sub-Saharan Africa",
13395599,
51.43236585,
17.60812426
],
[
"Burundi",
2003,
"Sub-Saharan Africa",
6838764,
47.02156098,
6.179838178
],
[
"Cambodia",
2003,
"East Asia & Pacific",
13024171,
58.88943902,
26.29189847
],
[
"Cameroon",
2003,
"Sub-Saharan Africa",
16783366,
49.43556098,
40.33020121
],
[
"Canada",
2003,
"North America",
31676000,
79.83902439,
2676.717106
],
[
"Cape Verde",
2003,
"Sub-Saharan Africa",
460031,
71.06763415,
88.42170504
],
[
"Central African Republic",
2003,
"Sub-Saharan Africa",
3890075,
43.67219512,
12.79413044
],
[
"Chad",
2003,
"Sub-Saharan Africa",
9153893,
48.03597561,
17.2795226
],
[
"Chile",
2003,
"Latin America & Caribbean",
15959793,
77.85117073,
335.1058319
],
[
"China",
2003,
"East Asia & Pacific",
1288400000,
71.76487805,
61.15774456
],
[
"Colombia",
2003,
"Latin America & Caribbean",
41731914,
71.78821951,
134.3173112
],
[
"Comoros",
2003,
"Sub-Saharan Africa",
609271,
58.53165854,
19.90807527
],
[
"Congo, Dem. Rep.",
2003,
"Sub-Saharan Africa",
54098245,
46.5412439,
5.331366581
],
[
"Congo, Rep.",
2003,
"Sub-Saharan Africa",
3365171,
54.52965854,
27.118969
],
[
"Costa Rica",
2003,
"Latin America & Caribbean",
4160438,
78.28558537,
342.9905073
],
[
"Cote d'Ivoire",
2003,
"Sub-Saharan Africa",
17455501,
50.73282927,
29.72773289
],
[
"Croatia",
2003,
"Europe & Central Asia",
4440000,
74.61390244,
495.3815058
],
[
"Cuba",
2003,
"Latin America & Caribbean",
11208029,
77.08082927,
201.8770982
],
[
"Cyprus",
2003,
"Europe & Central Asia",
998134,
78.33019512,
1234.765235
],
[
"Czech Republic",
2003,
"Europe & Central Asia",
10207362,
75.17073171,
666.1721871
],
[
"Denmark",
2003,
"Europe & Central Asia",
5390574,
77.14390244,
3751.231291
],
[
"Djibouti",
2003,
"Middle East & North Africa",
779640,
54.78939024,
50.08479836
],
[
"Dominican Republic",
2003,
"Latin America & Caribbean",
8995398,
71.64060976,
144.4995428
],
[
"Ecuador",
2003,
"Latin America & Caribbean",
12987992,
74.2992439,
167.8242229
],
[
"Egypt, Arab Rep.",
2003,
"Middle East & North Africa",
71498433,
70.69156098,
56.18099087
],
[
"El Salvador",
2003,
"Latin America & Caribbean",
6008523,
70.29997561,
183.1065028
],
[
"Equatorial Guinea",
2003,
"Sub-Saharan Africa",
571999,
48.98892683,
124.9705205
],
[
"Eritrea",
2003,
"Sub-Saharan Africa",
4145500,
57.65392683,
6.778976428
],
[
"Estonia",
2003,
"Europe & Central Asia",
1353557,
71.31707317,
362.5562195
],
[
"Ethiopia",
2003,
"Sub-Saharan Africa",
70784012,
53.618,
5.923562108
],
[
"Fiji",
2003,
"East Asia & Pacific",
817339,
68.16026829,
93.60928851
],
[
"Finland",
2003,
"Europe & Central Asia",
5213014,
78.36829268,
2568.220292
],
[
"France",
2003,
"Europe & Central Asia",
62242266,
79.26341463,
3158.756334
],
[
"Gabon",
2003,
"Sub-Saharan Africa",
1317484,
59.4837561,
153.5291691
],
[
"Gambia, The",
2003,
"Sub-Saharan Africa",
1417818,
56.06556098,
14.49297148
],
[
"Georgia",
2003,
"Europe & Central Asia",
4328900,
72.27582927,
74.11171637
],
[
"Germany",
2003,
"Europe & Central Asia",
82534176,
78.3804878,
3207.061672
],
[
"Ghana",
2003,
"Sub-Saharan Africa",
20610897,
59.78573171,
17.95791908
],
[
"Greece",
2003,
"Europe & Central Asia",
11023514,
78.84146341,
1576.808771
],
[
"Grenada",
2003,
"Latin America & Caribbean",
102195,
74.29895122,
359.375991
],
[
"Guatemala",
2003,
"Latin America & Caribbean",
12098576,
69.04212195,
115.4560121
],
[
"Guinea",
2003,
"Sub-Saharan Africa",
8743954,
49.97373171,
19.48729462
],
[
"Guinea-Bissau",
2003,
"Sub-Saharan Africa",
1314795,
45.63978049,
20.44550054
],
[
"Guyana",
2003,
"Latin America & Caribbean",
740925,
66.13687805,
55.6660199
],
[
"Haiti",
2003,
"Latin America & Caribbean",
9075399,
59.14178049,
16.56088392
],
[
"Honduras",
2003,
"Latin America & Caribbean",
6609337,
71.00346341,
103.3296664
],
[
"Hungary",
2003,
"Europe & Central Asia",
10129552,
72.3,
706.6905352
],
[
"Iceland",
2003,
"Europe & Central Asia",
289521,
80.96341463,
4026.290058
],
[
"India",
2003,
"South Asia",
1105885689,
62.67095122,
23.65646329
],
[
"Indonesia",
2003,
"East Asia & Pacific",
221839235,
66.51653659,
26.81440251
],
[
"Iran, Islamic Rep.",
2003,
"Middle East & North Africa",
68061695,
70.70739024,
119.1807169
],
[
"Iraq",
2003,
"Middle East & North Africa",
26234373,
69.52609756,
18.34513359
],
[
"Ireland",
2003,
"Europe & Central Asia",
3996521,
77.91756098,
2908.080552
],
[
"Israel",
2003,
"Middle East & North Africa",
6689700,
79.64878049,
1400.145664
],
[
"Italy",
2003,
"Europe & Central Asia",
57604658,
79.93170732,
2183.514995
],
[
"Jamaica",
2003,
"Latin America & Caribbean",
2625700,
70.98219512,
162.4366471
],
[
"Japan",
2003,
"East Asia & Pacific",
127718000,
81.76,
2691.776131
],
[
"Jordan",
2003,
"Middle East & North Africa",
5164000,
72.42036585,
185.9062966
],
[
"Kazakhstan",
2003,
"Europe & Central Asia",
14909019,
65.86585366,
76.17440147
],
[
"Kenya",
2003,
"Sub-Saharan Africa",
33805301,
52.1272439,
19.60799046
],
[
"Korea, Rep.",
2003,
"East Asia & Pacific",
47859000,
77.2602439,
696.9208688
],
[
"Kuwait",
2003,
"Middle East & North Africa",
2126786,
73.97382927,
727.1542788
],
[
"Kyrgyz Republic",
2003,
"Europe & Central Asia",
5043300,
68.25609756,
20.82518399
],
[
"Lao PDR",
2003,
"East Asia & Pacific",
5582028,
63.19231707,
17.72571756
],
[
"Latvia",
2003,
"Europe & Central Asia",
2325342,
71.26585366,
295.000127
],
[
"Lebanon",
2003,
"Middle East & North Africa",
3935421,
71.12934146,
419.8569486
],
[
"Lesotho",
2003,
"Sub-Saharan Africa",
2028976,
44.3637561,
32.99565708
],
[
"Liberia",
2003,
"Sub-Saharan Africa",
3037412,
49.62592683,
4.629601171
],
[
"Libya",
2003,
"Middle East & North Africa",
5541062,
73.18956098,
183.272735
],
[
"Lithuania",
2003,
"Europe & Central Asia",
3454205,
72.06097561,
351.0919503
],
[
"Luxembourg",
2003,
"Europe & Central Asia",
451630,
77.72682927,
4949.089757
],
[
"Macedonia, FYR",
2003,
"Europe & Central Asia",
2027819,
73.40997561,
218.4757821
],
[
"Madagascar",
2003,
"Sub-Saharan Africa",
16842482,
62.45731707,
11.45986446
],
[
"Malawi",
2003,
"Sub-Saharan Africa",
12144945,
47.30863415,
12.67199488
],
[
"Malaysia",
2003,
"East Asia & Pacific",
25060184,
72.65790244,
185.0074043
],
[
"Maldives",
2003,
"South Asia",
286665,
73.02441463,
199.8116418
],
[
"Mali",
2003,
"Sub-Saharan Africa",
12380104,
48.20758537,
21.3124347
],
[
"Malta",
2003,
"Middle East & North Africa",
398582,
78.35121951,
1077.63536
],
[
"Mauritania",
2003,
"Sub-Saharan Africa",
2882003,
57.13292683,
23.93767629
],
[
"Mauritius",
2003,
"Sub-Saharan Africa",
1222811,
72.12130081,
183.4613758
],
[
"Mexico",
2003,
"Latin America & Caribbean",
103902569,
75.00473171,
397.4513846
],
[
"Micronesia, Fed. Sts.",
2003,
"East Asia & Pacific",
108325,
67.61714634,
215.2065432
],
[
"Moldova",
2003,
"Europe & Central Asia",
3612869,
67.46246341,
45.61052553
],
[
"Mongolia",
2003,
"East Asia & Pacific",
2485177,
64.88243902,
42.09457071
],
[
"Montenegro",
2003,
"Europe & Central Asia",
627500,
74.28290244,
248.5757697
],
[
"Morocco",
2003,
"Middle East & North Africa",
29770316,
69.7672439,
87.89203595
],
[
"Mozambique",
2003,
"Sub-Saharan Africa",
19721009,
47.66212195,
15.12487646
],
[
"Myanmar",
2003,
"East Asia & Pacific",
45843675,
62.46682927,
3.978685132
],
[
"Namibia",
2003,
"Sub-Saharan Africa",
2008342,
57.38895122,
160.1911764
],
[
"Nepal",
2003,
"South Asia",
26143530,
63.98029268,
13.46098899
],
[
"Netherlands",
2003,
"Europe & Central Asia",
16225302,
78.49268293,
3242.744569
],
[
"New Zealand",
2003,
"East Asia & Pacific",
4027200,
79.14634146,
1601.804334
],
[
"Nicaragua",
2003,
"Latin America & Caribbean",
5288271,
71.08558537,
61.55429557
],
[
"Niger",
2003,
"Sub-Saharan Africa",
12118322,
50.38226829,
7.94906787
],
[
"Nigeria",
2003,
"Sub-Saharan Africa",
133067097,
47.91636585,
38.36213828
],
[
"Norway",
2003,
"Europe & Central Asia",
4564855,
79.3902439,
4937.068511
],
[
"Oman",
2003,
"Middle East & North Africa",
2335967,
74.07307317,
293.7872312
],
[
"Pakistan",
2003,
"South Asia",
153139895,
63.73885366,
15.81541902
],
[
"Panama",
2003,
"Latin America & Caribbean",
3125565,
74.78,
314.6629076
],
[
"Papua New Guinea",
2003,
"East Asia & Pacific",
5803029,
59.82531707,
24.828206
],
[
"Paraguay",
2003,
"Latin America & Caribbean",
5675754,
70.80980488,
70.84995259
],
[
"Peru",
2003,
"Latin America & Caribbean",
26916342,
71.75939024,
102.8329096
],
[
"Philippines",
2003,
"East Asia & Pacific",
82293990,
67.18936585,
33.10823161
],
[
"Poland",
2003,
"Europe & Central Asia",
38204570,
74.59756098,
354.3206648
],
[
"Portugal",
2003,
"Europe & Central Asia",
10441075,
77.2195122,
1509.544156
],
[
"Qatar",
2003,
"Middle East & North Africa",
653500,
76.87639024,
1490.0357
],
[
"Romania",
2003,
"Europe & Central Asia",
21742013,
71.3097561,
145.9621228
],
[
"Russian Federation",
2003,
"Europe & Central Asia",
144599446.8,
65.00756098,
166.5965249
],
[
"Rwanda",
2003,
"Sub-Saharan Africa",
8857859,
50.44909756,
13.21706006
],
[
"Samoa",
2003,
"East Asia & Pacific",
179141,
70.43960976,
92.34585698
],
[
"San Marino",
2003,
"Europe & Central Asia",
29013,
81.2195122,
2835.424536
],
[
"Sao Tome and Principe",
2003,
"Sub-Saharan Africa",
148038,
62.82960976,
78.03239203
],
[
"Saudi Arabia",
2003,
"Middle East & North Africa",
22334371,
72.17102439,
386.5858238
],
[
"Senegal",
2003,
"Sub-Saharan Africa",
10297956,
56.70741463,
35.96108519
],
[
"Serbia",
2003,
"Europe & Central Asia",
7480591,
72.43658537,
230.2526906
],
[
"Seychelles",
2003,
"Sub-Saharan Africa",
82800,
71.02926829,
414.9056745
],
[
"Sierra Leone",
2003,
"Sub-Saharan Africa",
4730020,
42.43078049,
19.50772691
],
[
"Singapore",
2003,
"East Asia & Pacific",
4114800,
79.03902439,
903.2369939
],
[
"Slovak Republic",
2003,
"Europe & Central Asia",
5379607,
73.60487805,
359.8764146
],
[
"Slovenia",
2003,
"Europe & Central Asia",
1995733,
76.85853659,
1261.77997
],
[
"Solomon Islands",
2003,
"East Asia & Pacific",
444344,
64.56721951,
44.95930151
],
[
"South Africa",
2003,
"Sub-Saharan Africa",
46116494,
52.01343902,
311.3058769
],
[
"Spain",
2003,
"Europe & Central Asia",
42004522,
79.6195122,
1721.662129
],
[
"Sri Lanka",
2003,
"South Asia",
19173000,
73.18156098,
38.22535973
],
[
"St. Lucia",
2003,
"Latin America & Caribbean",
160620,
73.74146341,
293.8078985
],
[
"St. Vincent and the Grenadines",
2003,
"Latin America & Caribbean",
108354,
70.74792683,
173.6979818
],
[
"Sudan",
2003,
"Sub-Saharan Africa",
29445166,
58.71192683,
18.57725965
],
[
"Suriname",
2003,
"Latin America & Caribbean",
486800,
68.3342439,
172.9404751
],
[
"Swaziland",
2003,
"Sub-Saharan Africa",
1014765,
45.96173171,
98.4276295
],
[
"Sweden",
2003,
"Europe & Central Asia",
8958229,
80.09512195,
3270.811234
],
[
"Switzerland",
2003,
"Europe & Central Asia",
7339001,
80.53658537,
4940.310512
],
[
"Syrian Arab Republic",
2003,
"Middle East & North Africa",
17490104,
74.57826829,
60.42429278
],
[
"Tajikistan",
2003,
"Europe & Central Asia",
6336724,
64.8474878,
10.94277209
],
[
"Tanzania",
2003,
"Sub-Saharan Africa",
36788281,
51.93539024,
11.88060415
],
[
"Thailand",
2003,
"East Asia & Pacific",
65370277,
72.91546341,
78.15942653
],
[
"Timor-Leste",
2003,
"East Asia & Pacific",
931324,
58.46553659,
32.70484251
],
[
"Togo",
2003,
"Sub-Saharan Africa",
5170252,
55.12656098,
18.05356978
],
[
"Tonga",
2003,
"East Asia & Pacific",
99659,
71.17980488,
105.9515699
],
[
"Trinidad and Tobago",
2003,
"Latin America & Caribbean",
1306065,
68.33304878,
425.2591696
],
[
"Tunisia",
2003,
"Middle East & North Africa",
9839800,
73.05121951,
151.2958718
],
[
"Turkey",
2003,
"Europe & Central Asia",
66339433,
71.16831707,
241.8973577
],
[
"Turkmenistan",
2003,
"Europe & Central Asia",
4647912,
64.24795122,
94.51307114
],
[
"Uganda",
2003,
"Sub-Saharan Africa",
26641627,
48.3852439,
17.98833099
],
[
"Ukraine",
2003,
"Europe & Central Asia",
47812950,
68.21073171,
72.9594974
],
[
"United Arab Emirates",
2003,
"Middle East & North Africa",
3400959,
75.26087805,
967.5831362
],
[
"United Kingdom",
2003,
"Europe & Central Asia",
59566259,
78.44634146,
2429.488509
],
[
"United States",
2003,
"North America",
290107933,
76.98780488,
5988.795929
],
[
"Uruguay",
2003,
"Latin America & Caribbean",
3303539.568,
74.87682927,
350.9566416
],
[
"Uzbekistan",
2003,
"Europe & Central Asia",
25567700,
67.131,
20.92893404
],
[
"Vanuatu",
2003,
"East Asia & Pacific",
199968,
68.6542439,
57.85138077
],
[
"Venezuela, RB",
2003,
"Latin America & Caribbean",
25674000,
72.78292683,
190.039303
],
[
"Vietnam",
2003,
"East Asia & Pacific",
80468400,
73.12590244,
25.40120329
],
[
"Yemen, Rep.",
2003,
"Middle East & North Africa",
19419710,
61.51195122,
36.35199631
],
[
"Zambia",
2003,
"Sub-Saharan Africa",
10938261,
42.85856098,
26.31932625
],
[
"Afghanistan",
2004,
"South Asia",
29068646,
46.35119512,
19.36435971
],
[
"Albania",
2004,
"Europe & Central Asia",
3124861,
75.85912195,
152.2703931
],
[
"Algeria",
2004,
"Middle East & North Africa",
32396048,
71.36490244,
88.98575548
],
[
"Angola",
2004,
"Sub-Saharan Africa",
15957460,
48.00370732,
53.59320707
],
[
"Argentina",
2004,
"Latin America & Caribbean",
38340778,
74.54558537,
327.0265218
],
[
"Armenia",
2004,
"Europe & Central Asia",
3062612,
72.61641463,
64.12593552
],
[
"Australia",
2004,
"East Asia & Pacific",
20127400,
80.4902439,
2871.998148
],
[
"Austria",
2004,
"Europe & Central Asia",
8171966,
79.1804878,
3720.131059
],
[
"Azerbaijan",
2004,
"Europe & Central Asia",
8306500,
68.45719512,
81.11918072
],
[
"Bahamas, The",
2004,
"Latin America & Caribbean",
314739,
73.15782927,
1357.969854
],
[
"Bahrain",
2004,
"Middle East & North Africa",
671760,
74.27153659,
660.504926
],
[
"Bangladesh",
2004,
"South Asia",
138633401,
66.53136585,
12.60633023
],
[
"Barbados",
2004,
"Latin America & Caribbean",
269947,
75.80153659,
731.4878957
],
[
"Belarus",
2004,
"Europe & Central Asia",
9730000,
68.95609756,
154.4035856
],
[
"Belgium",
2004,
"Europe & Central Asia",
10421137,
78.87804878,
3514.051414
],
[
"Belize",
2004,
"Latin America & Caribbean",
282600,
74.25992683,
170.6935247
],
[
"Benin",
2004,
"Sub-Saharan Africa",
7397985,
53.54895122,
24.97867948
],
[
"Bhutan",
2004,
"South Asia",
642400,
64.34821951,
48.21485324
],
[
"Bolivia",
2004,
"Latin America & Caribbean",
8982917,
64.36929268,
52.11610346
],
[
"Bosnia and Herzegovina",
2004,
"Europe & Central Asia",
3781358,
74.65963415,
242.8577364
],
[
"Botswana",
2004,
"Sub-Saharan Africa",
1852243,
49.7374878,
427.4534196
],
[
"Brazil",
2004,
"Latin America & Caribbean",
183873377,
71.26178049,
257.3944202
],
[
"Brunei Darussalam",
2004,
"East Asia & Pacific",
355943,
77.06263415,
666.7924876
],
[
"Bulgaria",
2004,
"Europe & Central Asia",
7781161,
72.56341463,
238.2477796
],
[
"Burkina Faso",
2004,
"Sub-Saharan Africa",
13789736,
51.92221951,
22.64250815
],
[
"Burundi",
2004,
"Sub-Saharan Africa",
7039534,
47.38036585,
9.449096765
],
[
"Cambodia",
2004,
"East Asia & Pacific",
13193961,
59.42863415,
28.73004952
],
[
"Cameroon",
2004,
"Sub-Saharan Africa",
17165267,
49.37485366,
43.43563092
],
[
"Canada",
2004,
"North America",
31995000,
80.14146341,
3036.187895
],
[
"Cape Verde",
2004,
"Sub-Saharan Africa",
466784,
71.61778049,
100.2224385
],
[
"Central African Republic",
2004,
"Sub-Saharan Africa",
3952281,
43.94612195,
13.29740193
],
[
"Chad",
2004,
"Sub-Saharan Africa",
9474792,
48.0112439,
23.76589232
],
[
"Chile",
2004,
"Latin America & Caribbean",
16132209,
78.08958537,
410.3069464
],
[
"China",
2004,
"East Asia & Pacific",
1296075000,
71.96234146,
70.12042897
],
[
"Colombia",
2004,
"Latin America & Caribbean",
42385712,
72.03678049,
152.5613309
],
[
"Comoros",
2004,
"Sub-Saharan Africa",
625876,
58.74807317,
23.70517874
],
[
"Congo, Dem. Rep.",
2004,
"Sub-Saharan Africa",
55754885,
46.78702439,
6.273701158
],
[
"Congo, Rep.",
2004,
"Sub-Saharan Africa",
3445765,
54.77260976,
34.4730958
],
[
"Costa Rica",
2004,
"Latin America & Caribbean",
4235605,
78.42841463,
346.1773981
],
[
"Cote d'Ivoire",
2004,
"Sub-Saharan Africa",
17731840,
51.11139024,
36.86570729
],
[
"Croatia",
2004,
"Europe & Central Asia",
4439000,
75.5202439,
613.9434052
],
[
"Cuba",
2004,
"Latin America & Caribbean",
11234970,
77.37409756,
208.5835268
],
[
"Cyprus",
2004,
"Europe & Central Asia",
1015806,
78.45009756,
1353.430122
],
[
"Czech Republic",
2004,
"Europe & Central Asia",
10216016,
75.72195122,
770.8832759
],
[
"Denmark",
2004,
"Europe & Central Asia",
5404523,
77.49268293,
4382.215849
],
[
"Djibouti",
2004,
"Middle East & North Africa",
793738,
55.15902439,
47.42566031
],
[
"Dominican Republic",
2004,
"Latin America & Caribbean",
9129965,
71.863,
120.7692824
],
[
"Ecuador",
2004,
"Latin America & Caribbean",
13208869,
74.51641463,
182.086698
],
[
"Egypt, Arab Rep.",
2004,
"Middle East & North Africa",
72844998,
71.13387805,
56.80725217
],
[
"El Salvador",
2004,
"Latin America & Caribbean",
6028792,
70.49963415,
189.3082395
],
[
"Equatorial Guinea",
2004,
"Sub-Saharan Africa",
589794,
49.17192683,
189.0210399
],
[
"Eritrea",
2004,
"Sub-Saharan Africa",
4318343,
58.16268293,
7.574849041
],
[
"Estonia",
2004,
"Europe & Central Asia",
1349290,
71.9097561,
457.3210093
],
[
"Ethiopia",
2004,
"Sub-Saharan Africa",
72526620,
54.37065854,
5.992188222
],
[
"Fiji",
2004,
"East Asia & Pacific",
819102,
68.34065854,
119.266288
],
[
"Finland",
2004,
"Europe & Central Asia",
5228172,
78.71463415,
2968.727204
],
[
"France",
2004,
"Europe & Central Asia",
62701871,
80.16341463,
3630.427195
],
[
"Gabon",
2004,
"Sub-Saharan Africa",
1344171,
59.68180488,
160.0679763
],
[
"Gambia, The",
2004,
"Sub-Saharan Africa",
1460493,
56.35485366,
17.24664219
],
[
"Georgia",
2004,
"Europe & Central Asia",
4318300,
72.44734146,
96.75202342
],
[
"Germany",
2004,
"Europe & Central Asia",
82516260,
78.6804878,
3525.646445
],
[
"Ghana",
2004,
"Sub-Saharan Africa",
21119911,
60.39660976,
25.80499143
],
[
"Greece",
2004,
"Europe & Central Asia",
11061701,
79.03902439,
1805.312687
],
[
"Grenada",
2004,
"Latin America & Caribbean",
102455,
74.54434146,
335.7372325
],
[
"Guatemala",
2004,
"Latin America & Caribbean",
12404764,
69.36780488,
123.7663972
],
[
"Guinea",
2004,
"Sub-Saharan Africa",
8889321,
50.56895122,
21.76019454
],
[
"Guinea-Bissau",
2004,
"Sub-Saharan Africa",
1340814,
45.8732439,
20.69455951
],
[
"Guyana",
2004,
"Latin America & Caribbean",
743743,
66.72687805,
56.68241619
],
[
"Haiti",
2004,
"Latin America & Caribbean",
9212634,
59.48807317,
22.29638111
],
[
"Honduras",
2004,
"Latin America & Caribbean",
6743128,
71.21204878,
103.7831381
],
[
"Hungary",
2004,
"Europe & Central Asia",
10107146,
72.64878049,
828.870521
],
[
"Iceland",
2004,
"Europe & Central Asia",
292074,
80.99756098,
4560.14035
],
[
"India",
2004,
"South Asia",
1122991192,
63.01931707,
28.70128761
],
[
"Indonesia",
2004,
"East Asia & Pacific",
224606531,
66.7912439,
27.07512836
],
[
"Iran, Islamic Rep.",
2004,
"Middle East & North Africa",
68893323,
71.02246341,
145.8576701
],
[
"Iraq",
2004,
"Middle East & North Africa",
26907763,
68.97878049,
62.41095372
],
[
"Ireland",
2004,
"Europe & Central Asia",
4070262,
78.19853659,
3449.252159
],
[
"Israel",
2004,
"Middle East & North Africa",
6809000,
80.14634146,
1446.303383
],
[
"Italy",
2004,
"Europe & Central Asia",
58175310,
80.72926829,
2570.223239
],
[
"Jamaica",
2004,
"Latin America & Caribbean",
2638100,
71.21843902,
183.4143492
],
[
"Japan",
2004,
"East Asia & Pacific",
127761000,
82.0302439,
2912.828004
],
[
"Jordan",
2004,
"Middle East & North Africa",
5290000,
72.53146341,
202.6039876
],
[
"Kazakhstan",
2004,
"Europe & Central Asia",
15012984,
65.88780488,
113.2806972
],
[
"Kenya",
2004,
"Sub-Saharan Africa",
34702176,
52.48392683,
19.89639844
],
[
"Korea, Rep.",
2004,
"East Asia & Pacific",
48039000,
77.84658537,
789.1420159
],
[
"Kuwait",
2004,
"Middle East & North Africa",
2189485,
74.04258537,
748.4044532
],
[
"Kyrgyz Republic",
2004,
"Europe & Central Asia",
5104700,
68.15365854,
24.56674079
],
[
"Lao PDR",
2004,
"East Asia & Pacific",
5667055,
63.82585366,
19.06017212
],
[
"Latvia",
2004,
"Europe & Central Asia",
2312819,
72.02682927,
388.5310615
],
[
"Lebanon",
2004,
"Middle East & North Africa",
3998042,
71.30665854,
452.5487665
],
[
"Lesotho",
2004,
"Sub-Saharan Africa",
2047006,
44.07590244,
45.98127039
],
[
"Liberia",
2004,
"Sub-Saharan Africa",
3092721,
50.82336585,
13.24966805
],
[
"Libya",
2004,
"Middle East & North Africa",
5652797,
73.40719512,
195.4402037
],
[
"Lithuania",
2004,
"Europe & Central Asia",
3435591,
71.96097561,
374.1377287
],
[
"Luxembourg",
2004,
"Europe & Central Asia",
458095,
79.12195122,
6107.194566
],
[
"Macedonia, FYR",
2004,
"Europe & Central Asia",
2033039,
73.57717073,
237.1510722
],
[
"Madagascar",
2004,
"Sub-Saharan Africa",
17357913,
63.32078049,
9.165361168
],
[
"Malawi",
2004,
"Sub-Saharan Africa",
12472794,
48.06290244,
16.45055886
],
[
"Malaysia",
2004,
"East Asia & Pacific",
25590453,
72.82156098,
190.2194138
],
[
"Maldives",
2004,
"South Asia",
290988,
73.74314634,
218.4107452
],
[
"Mali",
2004,
"Sub-Saharan Africa",
12772264,
48.55763415,
24.49687037
],
[
"Malta",
2004,
"Middle East & North Africa",
401268,
78.55365854,
1230.682951
],
[
"Mauritania",
2004,
"Sub-Saharan Africa",
2964526,
57.1737561,
28.63203286
],
[
"Mauritius",
2004,
"Sub-Saharan Africa",
1233386,
72.27674797,
220.0325539
],
[
"Mexico",
2004,
"Latin America & Caribbean",
105175967,
75.25,
440.5838884
],
[
"Micronesia, Fed. Sts.",
2004,
"East Asia & Pacific",
108926,
67.7525122,
227.8436046
],
[
"Moldova",
2004,
"Europe & Central Asia",
3603934,
67.62646341,
61.10920267
],
[
"Mongolia",
2004,
"East Asia & Pacific",
2514462,
65.48087805,
49.42228535
],
[
"Montenegro",
2004,
"Europe & Central Asia",
626912,
74.1264878,
287.1067202
],
[
"Morocco",
2004,
"Middle East & North Africa",
30082152,
70.09987805,
98.73446612
],
[
"Mozambique",
2004,
"Sub-Saharan Africa",
20246287,
47.81960976,
16.64051934
],
[
"Myanmar",
2004,
"East Asia & Pacific",
46070248,
62.65170732,
4.920063608
],
[
"Namibia",
2004,
"Sub-Saharan Africa",
2043339,
57.85358537,
209.2615023
],
[
"Nepal",
2004,
"South Asia",
26717875,
64.79895122,
16.43509656
],
[
"Netherlands",
2004,
"Europe & Central Asia",
16281779,
79.09512195,
3735.373169
],
[
"New Zealand",
2004,
"East Asia & Pacific",
4087500,
79.54878049,
1973.714298
],
[
"Nicaragua",
2004,
"Latin America & Caribbean",
5356012,
71.53978049,
66.25694846
],
[
"Niger",
2004,
"Sub-Saharan Africa",
12546945,
51.04356098,
9.035392308
],
[
"Nigeria",
2004,
"Sub-Saharan Africa",
136399438,
48.47260976,
44.81724243
],
[
"Norway",
2004,
"Europe & Central Asia",
4591910,
79.84146341,
5436.267867
],
[
"Oman",
2004,
"Middle East & North Africa",
2378336,
73.85517073,
309.8237803
],
[
"Pakistan",
2004,
"South Asia",
155860066,
63.92080488,
17.74229842
],
[
"Panama",
2004,
"Latin America & Caribbean",
3181969,
74.95426829,
360.3432595
],
[
"Papua New Guinea",
2004,
"East Asia & Pacific",
5948135,
60.19253659,
30.4390777
],
[
"Paraguay",
2004,
"Latin America & Caribbean",
5786836,
71.03856098,
81.93407648
],
[
"Peru",
2004,
"Latin America & Caribbean",
27242033,
72.12868293,
111.7315119
],
[
"Philippines",
2004,
"East Asia & Pacific",
83936698,
67.31395122,
34.72550041
],
[
"Poland",
2004,
"Europe & Central Asia",
38182222,
74.84634146,
410.7277903
],
[
"Portugal",
2004,
"Europe & Central Asia",
10501970,
77.67073171,
1773.968516
],
[
"Qatar",
2004,
"Middle East & North Africa",
715146,
77.06360976,
1599.290929
],
[
"Romania",
2004,
"Europe & Central Asia",
21684890,
71.59427561,
191.022128
],
[
"Russian Federation",
2004,
"Europe & Central Asia",
143849574.2,
65.42121951,
212.4329369
],
[
"Rwanda",
2004,
"Sub-Saharan Africa",
9009655,
51.39641463,
14.4229252
],
[
"Samoa",
2004,
"East Asia & Pacific",
179699,
70.73239024,
105.5327562
],
[
"San Marino",
2004,
"Europe & Central Asia",
29722,
81.72195122,
3358.940792
],
[
"Sao Tome and Principe",
2004,
"Sub-Saharan Africa",
150311,
63.01092683,
79.40881395
],
[
"Saudi Arabia",
2004,
"Middle East & North Africa",
23213767,
72.41512195,
398.4788827
],
[
"Senegal",
2004,
"Sub-Saharan Africa",
10581316,
57.02917073,
43.29446747
],
[
"Serbia",
2004,
"Europe & Central Asia",
7463157,
72.58292683,
274.471418
],
[
"Seychelles",
2004,
"Sub-Saharan Africa",
82500,
72.6097561,
435.5223277
],
[
"Sierra Leone",
2004,
"Sub-Saharan Africa",
4952134,
43.36860976,
34.33687768
],
[
"Singapore",
2004,
"East Asia & Pacific",
4166700,
79.4902439,
921.4318066
],
[
"Slovak Republic",
2004,
"Europe & Central Asia",
5382438,
73.95853659,
565.0730906
],
[
"Slovenia",
2004,
"Europe & Central Asia",
1997012,
77.20731707,
1412.80505
],
[
"Solomon Islands",
2004,
"East Asia & Pacific",
456919,
65.04953659,
46.38011982
],
[
"South Africa",
2004,
"Sub-Saharan Africa",
46664771,
51.4252439,
413.1808764
],
[
"Spain",
2004,
"Europe & Central Asia",
42691689,
79.87073171,
2012.726776
],
[
"Sri Lanka",
2004,
"South Asia",
19435000,
73.66514634,
44.62216913
],
[
"St. Lucia",
2004,
"Latin America & Caribbean",
162434,
73.24292683,
324.5134256
],
[
"St. Vincent and the Grenadines",
2004,
"Latin America & Caribbean",
108566,
70.91670732,
179.0275501
],
[
"Sudan",
2004,
"Sub-Saharan Africa",
30101696,
59.16478049,
23.58557406
],
[
"Suriname",
2004,
"Latin America & Caribbean",
493236,
68.56956098,
206.9273992
],
[
"Swaziland",
2004,
"Sub-Saharan Africa",
1016094,
45.74697561,
130.0357603
],
[
"Sweden",
2004,
"Europe & Central Asia",
8993531,
80.49756098,
3658.728288
],
[
"Switzerland",
2004,
"Europe & Central Asia",
7389625,
81.08780488,
5502.941281
],
[
"Syrian Arab Republic",
2004,
"Middle East & North Africa",
18004797,
74.75485366,
60.60244593
],
[
"Tajikistan",
2004,
"Europe & Central Asia",
6391120,
65.22953659,
13.97037602
],
[
"Tanzania",
2004,
"Sub-Saharan Africa",
37786946,
52.61160976,
11.68593046
],
[
"Thailand",
2004,
"East Asia & Pacific",
66060383,
73.05295122,
85.82321748
],
[
"Timor-Leste",
2004,
"East Asia & Pacific",
974024,
59.08226829,
34.79210826
],
[
"Togo",
2004,
"Sub-Saharan Africa",
5288273,
55.20836585,
21.57433235
],
[
"Tonga",
2004,
"East Asia & Pacific",
100286,
71.32026829,
114.6013214
],
[
"Trinidad and Tobago",
2004,
"Latin America & Caribbean",
1310622,
68.44331707,
491.1837921
],
[
"Tunisia",
2004,
"Middle East & North Africa",
9932400,
73.30243902,
178.7462945
],
[
"Turkey",
2004,
"Europe & Central Asia",
67235927,
71.64804878,
310.9636021
],
[
"Turkmenistan",
2004,
"Europe & Central Asia",
4696771,
64.34692683,
110.7467898
],
[
"Uganda",
2004,
"Sub-Saharan Africa",
27521632,
49.2575122,
24.31011062
],
[
"Ukraine",
2004,
"Europe & Central Asia",
47451600,
68.18536585,
90.70392529
],
[
"United Arab Emirates",
2004,
"Middle East & North Africa",
3658042,
75.46397561,
994.9769722
],
[
"United Kingdom",
2004,
"Europe & Central Asia",
59867866,
78.74634146,
2942.831909
],
[
"United States",
2004,
"North America",
292805298,
77.33902439,
6349.208028
],
[
"Uruguay",
2004,
"Latin America & Caribbean",
3301732,
75.21634146,
350.4246926
],
[
"Uzbekistan",
2004,
"Europe & Central Asia",
25864400,
67.17204878,
23.70663469
],
[
"Vanuatu",
2004,
"East Asia & Pacific",
205561,
68.99356098,
61.82779478
],
[
"Venezuela, RB",
2004,
"Latin America & Caribbean",
26127000,
72.97780488,
239.1666929
],
[
"Vietnam",
2004,
"East Asia & Pacific",
81437700,
73.43178049,
30.56364751
],
[
"Yemen, Rep.",
2004,
"Middle East & North Africa",
20026117,
62.09543902,
38.20259437
],
[
"Zambia",
2004,
"Sub-Saharan Africa",
11192422,
43.55495122,
32.1343224
],
[
"Afghanistan",
2005,
"South Asia",
29904962,
46.61641463,
20.99388956
],
[
"Albania",
2005,
"Europe & Central Asia",
3141800,
76.112,
162.2615367
],
[
"Algeria",
2005,
"Middle East & North Africa",
32888449,
71.64614634,
96.14873071
],
[
"Angola",
2005,
"Sub-Saharan Africa",
16489021,
48.53843902,
65.87032824
],
[
"Argentina",
2005,
"Latin America & Caribbean",
38681174,
74.74146341,
394.4975271
],
[
"Armenia",
2005,
"Europe & Central Asia",
3065954,
72.90070732,
77.68620648
],
[
"Australia",
2005,
"East Asia & Pacific",
20394800,
80.84146341,
3136.474997
],
[
"Austria",
2005,
"Europe & Central Asia",
8227829,
79.33170732,
3863.120209
],
[
"Azerbaijan",
2005,
"Europe & Central Asia",
8391850,
68.92273171,
121.2859024
],
[
"Bahamas, The",
2005,
"Latin America & Caribbean",
319358,
73.58365854,
1436.765323
],
[
"Bahrain",
2005,
"Middle East & North Africa",
724807,
74.38773171,
697.2995112
],
[
"Bangladesh",
2005,
"South Asia",
140587922,
66.93229268,
13.15140337
],
[
"Barbados",
2005,
"Latin America & Caribbean",
270503,
75.90095122,
773.4757101
],
[
"Belarus",
2005,
"Europe & Central Asia",
9663000,
68.85121951,
211.7407017
],
[
"Belgium",
2005,
"Europe & Central Asia",
10478617,
78.9804878,
3633.9439
],
[
"Belize",
2005,
"Latin America & Caribbean",
291800,
74.53687805,
178.190737
],
[
"Benin",
2005,
"Sub-Saharan Africa",
7633757,
53.81373171,
27.02494647
],
[
"Bhutan",
2005,
"South Asia",
659293,
64.88063415,
53.97371527
],
[
"Bolivia",
2005,
"Latin America & Caribbean",
9146655,
64.70404878,
58.25353977
],
[
"Bosnia and Herzegovina",
2005,
"Europe & Central Asia",
3781001,
74.72363415,
252.2392738
],
[
"Botswana",
2005,
"Sub-Saharan Africa",
1875673,
50.44656098,
392.9831119
],
[
"Brazil",
2005,
"Latin America & Caribbean",
185986964,
71.52953659,
387.448395
],
[
"Brunei Darussalam",
2005,
"East Asia & Pacific",
363123,
77.22858537,
690.9780201
],
[
"Bulgaria",
2005,
"Europe & Central Asia",
7739900,
72.56097561,
273.5259326
],
[
"Burkina Faso",
2005,
"Sub-Saharan Africa",
14198463,
52.43519512,
26.44814916
],
[
"Burundi",
2005,
"Sub-Saharan Africa",
7251424,
47.75146341,
15.47825865
],
[
"Cambodia",
2005,
"East Asia & Pacific",
13357574,
59.97939024,
32.83327264
],
[
"Cameroon",
2005,
"Sub-Saharan Africa",
17553589,
49.41241463,
44.8562363
],
[
"Canada",
2005,
"North America",
32312000,
80.29268293,
3453.439371
],
[
"Cape Verde",
2005,
"Sub-Saharan Africa",
472883,
72.14065854,
103.9110324
],
[
"Central African Republic",
2005,
"Sub-Saharan Africa",
4017880,
44.34756098,
14.62354584
],
[
"Chad",
2005,
"Sub-Saharan Africa",
9785902,
48.05885366,
25.62827177
],
[
"Chile",
2005,
"Latin America & Caribbean",
16301726,
78.27497561,
493.2305621
],
[
"China",
2005,
"East Asia & Pacific",
1303720000,
72.17131707,
80.37342013
],
[
"Colombia",
2005,
"Latin America & Caribbean",
43040558,
72.27978049,
204.9200539
],
[
"Comoros",
2005,
"Sub-Saharan Africa",
642974,
58.97841463,
26.64510189
],
[
"Congo, Dem. Rep.",
2005,
"Sub-Saharan Africa",
57420522,
46.99168293,
6.594434171
],
[
"Congo, Rep.",
2005,
"Sub-Saharan Africa",
3533177,
55.06485366,
41.72167396
],
[
"Costa Rica",
2005,
"Latin America & Caribbean",
4309413,
78.5642439,
364.0124656
],
[
"Cote d'Ivoire",
2005,
"Sub-Saharan Africa",
18020946,
51.57556098,
39.02705231
],
[
"Croatia",
2005,
"Europe & Central Asia",
4442000,
75.24463415,
704.869607
],
[
"Cuba",
2005,
"Latin America & Caribbean",
11254242,
77.68319512,
306.4711219
],
[
"Cyprus",
2005,
"Europe & Central Asia",
1032562,
78.57395122,
1434.114275
],
[
"Czech Republic",
2005,
"Europe & Central Asia",
10235828,
75.92439024,
881.244049
],
[
"Denmark",
2005,
"Europe & Central Asia",
5419432,
77.84390244,
4645.653876
],
[
"Djibouti",
2005,
"Middle East & North Africa",
808367,
55.55002439,
63.16910882
],
[
"Dominican Republic",
2005,
"Latin America & Caribbean",
9264267,
72.07668293,
190.0966843
],
[
"Ecuador",
2005,
"Latin America & Caribbean",
13426402,
74.69929268,
195.1670383
],
[
"Egypt, Arab Rep.",
2005,
"Middle East & North Africa",
74203215,
71.52868293,
64.64930624
],
[
"El Salvador",
2005,
"Latin America & Caribbean",
6050513,
70.69880488,
201.4539924
],
[
"Equatorial Guinea",
2005,
"Sub-Saharan Africa",
607739,
49.40029268,
229.5387963
],
[
"Eritrea",
2005,
"Sub-Saharan Africa",
4486155,
58.66426829,
6.918773405
],
[
"Estonia",
2005,
"Europe & Central Asia",
1346097,
72.56829268,
518.2283796
],
[
"Ethiopia",
2005,
"Sub-Saharan Africa",
74263861,
55.15665854,
6.801452792
],
[
"Fiji",
2005,
"East Asia & Pacific",
822553,
68.5152439,
131.8791572
],
[
"Finland",
2005,
"Europe & Central Asia",
5246096,
78.81707317,
3145.761192
],
[
"France",
2005,
"Europe & Central Asia",
63175934,
80.11463415,
3784.938523
],
[
"Gabon",
2005,
"Sub-Saharan Africa",
1370729,
60.00558537,
164.2224857
],
[
"Gambia, The",
2005,
"Sub-Saharan Africa",
1503678,
56.64007317,
18.52564512
],
[
"Georgia",
2005,
"Europe & Central Asia",
4361200,
72.58878049,
123.1314686
],
[
"Germany",
2005,
"Europe & Central Asia",
82469422,
78.93170732,
3624.740618
],
[
"Ghana",
2005,
"Sub-Saharan Africa",
21639806,
61.03831707,
34.80735469
],
[
"Greece",
2005,
"Europe & Central Asia",
11103965,
79.23902439,
2088.954597
],
[
"Grenada",
2005,
"Latin America & Caribbean",
102734,
74.76426829,
412.2674956
],
[
"Guatemala",
2005,
"Latin America & Caribbean",
12717154,
69.64785366,
138.0244945
],
[
"Guinea",
2005,
"Sub-Saharan Africa",
9041448,
51.13565854,
17.46777724
],
[
"Guinea-Bissau",
2005,
"Sub-Saharan Africa",
1367695,
46.10965854,
23.11574689
],
[
"Guyana",
2005,
"Latin America & Caribbean",
746235,
67.30331707,
60.21111905
],
[
"Haiti",
2005,
"Latin America & Caribbean",
9347262,
59.87343902,
19.58828139
],
[
"Honduras",
2005,
"Latin America & Caribbean",
6879243,
71.43885366,
109.0455866
],
[
"Hungary",
2005,
"Europe & Central Asia",
10087065,
72.64878049,
923.6896878
],
[
"Iceland",
2005,
"Europe & Central Asia",
296734,
81.50243902,
5230.833276
],
[
"India",
2005,
"South Asia",
1140042863,
63.3672439,
31.21740623
],
[
"Indonesia",
2005,
"East Asia & Pacific",
227303175,
67.07336585,
35.55698711
],
[
"Iran, Islamic Rep.",
2005,
"Middle East & North Africa",
69732007,
71.33309756,
178.7682225
],
[
"Iraq",
2005,
"Middle East & North Africa",
27598437,
68.46363415,
61.94071822
],
[
"Ireland",
2005,
"Europe & Central Asia",
4159914,
78.4795122,
3693.456464
],
[
"Israel",
2005,
"Middle East & North Africa",
6930100,
80.15121951,
1501.876494
],
[
"Italy",
2005,
"Europe & Central Asia",
58607043,
80.5804878,
2711.711652
],
[
"Jamaica",
2005,
"Latin America & Caribbean",
2650400,
71.47941463,
170.5095628
],
[
"Japan",
2005,
"East Asia & Pacific",
127773000,
81.92512195,
2927.729012
],
[
"Jordan",
2005,
"Middle East & North Africa",
5411500,
72.64502439,
205.5575573
],
[
"Kazakhstan",
2005,
"Europe & Central Asia",
15147029,
65.9097561,
153.2220467
],
[
"Kenya",
2005,
"Sub-Saharan Africa",
35614576,
53.00956098,
22.95792302
],
[
"Kiribati",
2005,
"East Asia & Pacific",
91988,
60.94878049,
116.0215589
],
[
"Korea, Rep.",
2005,
"East Asia & Pacific",
48138000,
78.43268293,
994.2120508
],
[
"Kuwait",
2005,
"Middle East & North Africa",
2264014,
74.11329268,
848.9901489
],
[
"Kyrgyz Republic",
2005,
"Europe & Central Asia",
5162600,
67.95609756,
28.40779214
],
[
"Lao PDR",
2005,
"East Asia & Pacific",
5753341,
64.46226829,
20.4027962
],
[
"Latvia",
2005,
"Europe & Central Asia",
2300512,
71.35609756,
442.9755676
],
[
"Lebanon",
2005,
"Middle East & North Africa",
4052420,
71.4895122,
434.3360381
],
[
"Lesotho",
2005,
"Sub-Saharan Africa",
2065752,
44.17117073,
46.03194354
],
[
"Liberia",
2005,
"Sub-Saharan Africa",
3182539,
51.94302439,
13.684965
],
[
"Libya",
2005,
"Middle East & North Africa",
5769709,
73.63529268,
210.5926193
],
[
"Lithuania",
2005,
"Europe & Central Asia",
3414304,
71.25365854,
445.9935926
],
[
"Luxembourg",
2005,
"Europe & Central Asia",
465158,
79.43170732,
6435.02844
],
[
"Macedonia, FYR",
2005,
"Europe & Central Asia",
2038109,
73.74570732,
237.6716357
],
[
"Madagascar",
2005,
"Sub-Saharan Africa",
17885967,
64.11217073,
10.41381351
],
[
"Malawi",
2005,
"Sub-Saharan Africa",
12822587,
48.93804878,
17.62175383
],
[
"Malaysia",
2005,
"East Asia & Pacific",
26100241,
72.98829268,
188.2260719
],
[
"Maldives",
2005,
"South Asia",
295240,
74.37114634,
236.7247832
],
[
"Mali",
2005,
"Sub-Saharan Africa",
13176642,
48.92619512,
26.40424423
],
[
"Malta",
2005,
"Middle East & North Africa",
403837,
79.50487805,
1385.101636
],
[
"Mauritania",
2005,
"Sub-Saharan Africa",
3047249,
57.23102439,
29.63493052
],
[
"Mauritius",
2005,
"Sub-Saharan Africa",
1243253,
72.43219512,
232.3514392
],
[
"Mexico",
2005,
"Latin America & Caribbean",
106483757,
75.49890244,
478.4372888
],
[
"Micronesia, Fed. Sts.",
2005,
"East Asia & Pacific",
109419,
67.89985366,
276.734388
],
[
"Moldova",
2005,
"Europe & Central Asia",
3595182,
67.77953659,
75.97250142
],
[
"Mongolia",
2005,
"East Asia & Pacific",
2547339,
66.05236585,
52.19208018
],
[
"Montenegro",
2005,
"Europe & Central Asia",
626739,
74.01526829,
313.4937116
],
[
"Morocco",
2005,
"Middle East & North Africa",
30392473,
70.41746341,
98.95973592
],
[
"Mozambique",
2005,
"Sub-Saharan Africa",
20770013,
48.01714634,
21.75254048
],
[
"Myanmar",
2005,
"East Asia & Pacific",
46321162,
62.85887805,
5.115995348
],
[
"Namibia",
2005,
"Sub-Saharan Africa",
2079951,
58.54412195,
255.5029612
],
[
"Nepal",
2005,
"South Asia",
27281945,
65.58658537,
18.61800501
],
[
"Netherlands",
2005,
"Europe & Central Asia",
16319868,
79.34634146,
3846.011288
],
[
"New Zealand",
2005,
"East Asia & Pacific",
4133900,
79.85121951,
2288.186243
],
[
"Nicaragua",
2005,
"Latin America & Caribbean",
5424336,
71.97280488,
71.22065982
],
[
"Niger",
2005,
"Sub-Saharan Africa",
12993884,
51.67290244,
15.44769959
],
[
"Nigeria",
2005,
"Sub-Saharan Africa",
139823340,
49.00470732,
53.00517813
],
[
"Norway",
2005,
"Europe & Central Asia",
4623291,
80.04146341,
5943.567292
],
[
"Oman",
2005,
"Middle East & North Africa",
2429510,
73.58470732,
330.9578262
],
[
"Pakistan",
2005,
"South Asia",
158645463,
64.10468293,
19.15367508
],
[
"Palau",
2005,
"East Asia & Pacific",
19906,
69.12926829,
797.7044971
],
[
"Panama",
2005,
"Latin America & Caribbean",
3238321,
75.1244878,
357.3765541
],
[
"Papua New Guinea",
2005,
"East Asia & Pacific",
6095437,
60.56660976,
32.10340067
],
[
"Paraguay",
2005,
"Latin America & Caribbean",
5897816,
71.25265854,
82.30729539
],
[
"Peru",
2005,
"Latin America & Caribbean",
27558769,
72.46660976,
128.4937235
],
[
"Philippines",
2005,
"East Asia & Pacific",
85546427,
67.44714634,
42.10146989
],
[
"Poland",
2005,
"Europe & Central Asia",
38165445,
74.99512195,
494.8588119
],
[
"Portugal",
2005,
"Europe & Central Asia",
10549424,
78.07073171,
1882.816222
],
[
"Qatar",
2005,
"Middle East & North Africa",
820986,
77.24768293,
1633.226239
],
[
"Romania",
2005,
"Europe & Central Asia",
21634371,
71.87889512,
252.1528173
],
[
"Russian Federation",
2005,
"Europe & Central Asia",
143150000,
65.47,
276.833027
],
[
"Rwanda",
2005,
"Sub-Saharan Africa",
9201727,
52.24763415,
18.31084041
],
[
"Samoa",
2005,
"East Asia & Pacific",
180237,
71.01570732,
113.9394016
],
[
"San Marino",
2005,
"Europe & Central Asia",
30301,
81.97560976,
3399.233612
],
[
"Sao Tome and Principe",
2005,
"Sub-Saharan Africa",
152622,
63.20626829,
81.79811329
],
[
"Saudi Arabia",
2005,
"Middle East & North Africa",
24041116,
72.66478049,
465.3731188
],
[
"Senegal",
2005,
"Sub-Saharan Africa",
10871908,
57.34934146,
43.15762668
],
[
"Serbia",
2005,
"Europe & Central Asia",
7440769,
72.63414634,
307.0063128
],
[
"Seychelles",
2005,
"Sub-Saharan Africa",
82900,
72.13170732,
440.5567427
],
[
"Sierra Leone",
2005,
"Sub-Saharan Africa",
5153435,
44.2602439,
38.76165435
],
[
"Singapore",
2005,
"East Asia & Pacific",
4265800,
79.9902439,
1175.462965
],
[
"Slovak Republic",
2005,
"Europe & Central Asia",
5387001,
73.90487805,
626.343045
],
[
"Slovenia",
2005,
"Europe & Central Asia",
2000474,
77.61219512,
1490.532297
],
[
"Solomon Islands",
2005,
"East Asia & Pacific",
469805,
65.48765854,
69.02570475
],
[
"South Africa",
2005,
"Sub-Saharan Africa",
47198469,
51.05968293,
454.648936
],
[
"Spain",
2005,
"Europe & Central Asia",
43398143,
80.17073171,
2163.166606
],
[
"Sri Lanka",
2005,
"South Asia",
19644000,
73.98934146,
50.5627447
],
[
"St. Lucia",
2005,
"Latin America & Caribbean",
164330,
72.73926829,
342.3250109
],
[
"St. Vincent and the Grenadines",
2005,
"Latin America & Caribbean",
108755,
71.10578049,
185.3370386
],
[
"Sudan",
2005,
"Sub-Saharan Africa",
30777563,
59.5482439,
28.26512383
],
[
"Suriname",
2005,
"Latin America & Caribbean",
499294,
68.84704878,
243.4187527
],
[
"Swaziland",
2005,
"Sub-Saharan Africa",
1017425,
45.86019512,
158.6598549
],
[
"Sweden",
2005,
"Europe & Central Asia",
9029572,
80.54634146,
3718.724845
],
[
"Switzerland",
2005,
"Europe & Central Asia",
7437115,
81.23658537,
5571.780428
],
[
"Syrian Arab Republic",
2005,
"Middle East & North Africa",
18484122,
74.92841463,
62.56992772
],
[
"Tajikistan",
2005,
"Europe & Central Asia",
6453240,
65.60785366,
17.33214773
],
[
"Tanzania",
2005,
"Sub-Saharan Africa",
38831024,
53.34692683,
14.63455177
],
[
"Thailand",
2005,
"East Asia & Pacific",
66698483,
73.18878049,
93.82395837
],
[
"Timor-Leste",
2005,
"East Asia & Pacific",
983125,
59.63834146,
45.76896629
],
[
"Togo",
2005,
"Sub-Saharan Africa",
5408044,
55.304,
25.61855791
],
[
"Tonga",
2005,
"East Asia & Pacific",
100926,
71.45965854,
167.2445712
],
[
"Trinidad and Tobago",
2005,
"Latin America & Caribbean",
1315386,
68.6135122,
688.0352345
],
[
"Tunisia",
2005,
"Middle East & North Africa",
10029000,
73.50243902,
181.253098
],
[
"Turkey",
2005,
"Europe & Central Asia",
68143186,
72.07785366,
383.8200249
],
[
"Turkmenistan",
2005,
"Europe & Central Asia",
4747839,
64.43831707,
106.815391
],
[
"Uganda",
2005,
"Sub-Saharan Africa",
28431204,
50.12392683,
29.07763011
],
[
"Ukraine",
2005,
"Europe & Central Asia",
47105150,
67.95682927,
117.6815261
],
[
"United Arab Emirates",
2005,
"Middle East & North Africa",
4069349,
75.66046341,
1029.825431
],
[
"United Kingdom",
2005,
"Europe & Central Asia",
60224307,
79.04878049,
3122.297551
],
[
"United States",
2005,
"North America",
295516599,
77.33902439,
6727.674012
],
[
"Uruguay",
2005,
"Latin America & Caribbean",
3305723,
75.60926829,
430.6987618
],
[
"Uzbekistan",
2005,
"Europe & Central Asia",
26167000,
67.22258537,
26.80514046
],
[
"Vanuatu",
2005,
"East Asia & Pacific",
211170,
69.32090244,
60.87902703
],
[
"Venezuela, RB",
2005,
"Latin America & Caribbean",
26577000,
73.17268293,
296.2167161
],
[
"Vietnam",
2005,
"East Asia & Pacific",
82393500,
73.69973171,
37.26194139
],
[
"Yemen, Rep.",
2005,
"Middle East & North Africa",
20648643,
62.64931707,
42.23864397
],
[
"Zambia",
2005,
"Sub-Saharan Africa",
11462365,
44.38436585,
43.83858435
],
[
"Afghanistan",
2006,
"South Asia",
30751661,
46.89909756,
22.69639537
],
[
"Albania",
2006,
"Europe & Central Asia",
3156607,
76.30963415,
170.6026627
],
[
"Algeria",
2006,
"Middle East & North Africa",
33391954,
71.90529268,
109.846386
],
[
"Angola",
2006,
"Sub-Saharan Africa",
17010366,
49.00714634,
111.5943678
],
[
"Argentina",
2006,
"Latin America & Caribbean",
39023850,
74.93143902,
453.2983793
],
[
"Armenia",
2006,
"Europe & Central Asia",
3069844,
73.13421951,
86.86687224
],
[
"Australia",
2006,
"East Asia & Pacific",
20697900,
81.04146341,
3330.212908
],
[
"Austria",
2006,
"Europe & Central Asia",
8268641,
79.83170732,
4015.861594
],
[
"Azerbaijan",
2006,
"Europe & Central Asia",
8484550,
69.36141463,
148.7328273
],
[
"Bahamas, The",
2006,
"Latin America & Caribbean",
324066,
73.99192683,
1703.996421
],
[
"Bahrain",
2006,
"Middle East & North Africa",
811410,
74.50782927,
704.2462617
],
[
"Bangladesh",
2006,
"South Asia",
142353501,
67.31007317,
14.39728141
],
[
"Barbados",
2006,
"Latin America & Caribbean",
271062,
76.00856098,
837.5900628
],
[
"Belarus",
2006,
"Europe & Central Asia",
9604000,
69.40487805,
239.5664279
],
[
"Belgium",
2006,
"Europe & Central Asia",
10547958,
79.3804878,
3631.664255
],
[
"Belize",
2006,
"Latin America & Caribbean",
301386,
74.827,
188.4940867
],
[
"Benin",
2006,
"Sub-Saharan Africa",
7871707,
54.10668293,
28.39454713
],
[
"Bhutan",
2006,
"South Asia",
674681,
65.34239024,
58.60558264
],
[
"Bolivia",
2006,
"Latin America & Caribbean",
9306660,
65.03021951,
59.03590199
],
[
"Bosnia and Herzegovina",
2006,
"Europe & Central Asia",
3781588,
74.83436585,
281.8316763
],
[
"Botswana",
2006,
"Sub-Saharan Africa",
1900905,
51.28431707,
368.4594574
],
[
"Brazil",
2006,
"Latin America & Caribbean",
187958211,
71.81092683,
491.5761778
],
[
"Brunei Darussalam",
2006,
"East Asia & Pacific",
370317,
77.38060976,
711.3202957
],
[
"Bulgaria",
2006,
"Europe & Central Asia",
7699020,
72.61219512,
297.3563705
],
[
"Burkina Faso",
2006,
"Sub-Saharan Africa",
14622202,
52.95790244,
26.16261354
],
[
"Burundi",
2006,
"Sub-Saharan Africa",
7474363,
48.13887805,
20.10360704
],
[
"Cambodia",
2006,
"East Asia & Pacific",
13515884,
60.52831707,
30.33549609
],
[
"Cameroon",
2006,
"Sub-Saharan Africa",
17948395,
49.56117073,
46.82469469
],
[
"Canada",
2006,
"North America",
32576074,
80.64390244,
3911.876331
],
[
"Cape Verde",
2006,
"Sub-Saharan Africa",
478267,
72.61034146,
126.4078274
],
[
"Central African Republic",
2006,
"Sub-Saharan Africa",
4087534,
44.8675122,
14.54771574
],
[
"Chad",
2006,
"Sub-Saharan Africa",
10084087,
48.18129268,
24.36308354
],
[
"Chile",
2006,
"Latin America & Caribbean",
16468677,
78.41585366,
584.5982045
],
[
"China",
2006,
"East Asia & Pacific",
1311020000,
72.38973171,
93.38900098
],
[
"Colombia",
2006,
"Latin America & Caribbean",
43696540,
72.5187561,
240.5453322
],
[
"Comoros",
2006,
"Sub-Saharan Africa",
660559,
59.23707317,
28.88027774
],
[
"Congo, Dem. Rep.",
2006,
"Sub-Saharan Africa",
59088415,
47.1687561,
8.387934993
],
[
"Congo, Rep.",
2006,
"Sub-Saharan Africa",
3628561,
55.40143902,
50.5545937
],
[
"Costa Rica",
2006,
"Latin America & Caribbean",
4381820,
78.69507317,
409.9295427
],
[
"Cote d'Ivoire",
2006,
"Sub-Saharan Africa",
18325979,
52.11836585,
44.26442339
],
[
"Croatia",
2006,
"Europe & Central Asia",
4440000,
75.83682927,
789.8424909
],
[
"Cuba",
2006,
"Latin America & Caribbean",
11265124,
77.99319512,
359.9919922
],
[
"Cyprus",
2006,
"Europe & Central Asia",
1048272,
78.70873171,
1494.403486
],
[
"Czech Republic",
2006,
"Europe & Central Asia",
10269134,
76.52439024,
967.3809536
],
[
"Denmark",
2006,
"Europe & Central Asia",
5437272,
78.09512195,
5008.282209
],
[
"Djibouti",
2006,
"Middle East & North Africa",
823682,
55.95285366,
65.79296173
],
[
"Dominican Republic",
2006,
"Latin America & Caribbean",
9398285,
72.28792683,
198.5070052
],
[
"Ecuador",
2006,
"Latin America & Caribbean",
13639708,
74.85782927,
222.3655456
],
[
"Egypt, Arab Rep.",
2006,
"Middle East & North Africa",
75568453,
71.87897561,
74.88449124
],
[
"El Salvador",
2006,
"Latin America & Caribbean",
6074487,
70.9004878,
202.8483384
],
[
"Equatorial Guinea",
2006,
"Sub-Saharan Africa",
625777,
49.6655122,
278.7254624
],
[
"Eritrea",
2006,
"Sub-Saharan Africa",
4645837,
59.15773171,
8.411364611
],
[
"Estonia",
2006,
"Europe & Central Asia",
1343547,
72.69146341,
627.0799709
],
[
"Ethiopia",
2006,
"Sub-Saharan Africa",
75993403,
55.95156098,
8.330152746
],
[
"Fiji",
2006,
"East Asia & Pacific",
828046,
68.67919512,
143.9918721
],
[
"Finland",
2006,
"Europe & Central Asia",
5266268,
79.21463415,
3295.041213
],
[
"France",
2006,
"Europe & Central Asia",
63617567,
80.51463415,
3947.384764
],
[
"Gabon",
2006,
"Sub-Saharan Africa",
1397192,
60.42717073,
190.8992106
],
[
"Gambia, The",
2006,
"Sub-Saharan Africa",
1547259,
56.92665854,
18.69231528
],
[
"Georgia",
2006,
"Europe & Central Asia",
4398000,
72.7142439,
146.3417163
],
[
"Germany",
2006,
"Europe & Central Asia",
82376451,
79.13170732,
3746.680743
],
[
"Ghana",
2006,
"Sub-Saharan Africa",
22170556,
61.68136585,
47.15526005
],
[
"Greece",
2006,
"Europe & Central Asia",
11148460,
79.43902439,
2288.530252
],
[
"Grenada",
2006,
"Latin America & Caribbean",
103037,
74.9627561,
435.7470169
],
[
"Guatemala",
2006,
"Latin America & Caribbean",
13034904,
69.89473171,
170.3680701
],
[
"Guinea",
2006,
"Sub-Saharan Africa",
9201941,
51.67336585,
17.72117629
],
[
"Guinea-Bissau",
2006,
"Sub-Saharan Africa",
1395492,
46.36197561,
24.02633178
],
[
"Guyana",
2006,
"Latin America & Caribbean",
748321,
67.84721951,
82.27445032
],
[
"Haiti",
2006,
"Latin America & Caribbean",
9479136,
60.28107317,
29.34176521
],
[
"Honduras",
2006,
"Latin America & Caribbean",
7017769,
71.68982927,
118.7372737
],
[
"Hungary",
2006,
"Europe & Central Asia",
10071370,
73.09756098,
922.7493049
],
[
"Iceland",
2006,
"Europe & Central Asia",
303782,
81.15853659,
5067.135699
],
[
"India",
2006,
"South Asia",
1157038539,
63.71680488,
32.98799162
],
[
"Indonesia",
2006,
"East Asia & Pacific",
229918547,
67.37682927,
46.66277814
],
[
"Iran, Islamic Rep.",
2006,
"Middle East & North Africa",
70582086,
71.63846341,
205.2483992
],
[
"Iraq",
2006,
"Middle East & North Africa",
28432904,
68.07180488,
66.05680228
],
[
"Ireland",
2006,
"Europe & Central Asia",
4260341,
78.7604878,
3925.56003
],
[
"Israel",
2006,
"Middle East & North Africa",
7053700,
85.16341463,
1560.035061
],
[
"Italy",
2006,
"Europe & Central Asia",
58941499,
81.13170732,
2850.588366
],
[
"Jamaica",
2006,
"Latin America & Caribbean",
2663100,
71.75607317,
186.7292255
],
[
"Japan",
2006,
"East Asia & Pacific",
127756000,
82.32195122,
2795.623638
],
[
"Jordan",
2006,
"Middle East & North Africa",
5537000,
72.7635122,
218.1386608
],
[
"Kazakhstan",
2006,
"Europe & Central Asia",
15308085,
66.16097561,
208.5224756
],
[
"Kenya",
2006,
"Sub-Saharan Africa",
36540948,
53.66219512,
27.7958648
],
[
"Korea, Rep.",
2006,
"East Asia & Pacific",
48372000,
78.96926829,
1189.879925
],
[
"Kuwait",
2006,
"Middle East & North Africa",
2351441,
74.19190244,
973.1222769
],
[
"Kyrgyz Republic",
2006,
"Europe & Central Asia",
5218400,
67.69512195,
37.54354932
],
[
"Lao PDR",
2006,
"East Asia & Pacific",
5841572,
65.0805122,
25.15018714
],
[
"Latvia",
2006,
"Europe & Central Asia",
2287948,
70.86585366,
590.1328513
],
[
"Lebanon",
2006,
"Middle East & North Africa",
4097457,
71.67641463,
437.8430862
],
[
"Lesotho",
2006,
"Sub-Saharan Africa",
2085561,
44.59012195,
53.1526623
],
[
"Liberia",
2006,
"Sub-Saharan Africa",
3313718,
52.96282927,
18.81832752
],
[
"Libya",
2006,
"Middle East & North Africa",
5893738,
73.86936585,
226.4457061
],
[
"Lithuania",
2006,
"Europe & Central Asia",
3394082,
71.05609756,
552.0260723
],
[
"Luxembourg",
2006,
"Europe & Central Asia",
472637,
79.28780488,
6982.191064
],
[
"Macedonia, FYR",
2006,
"Europe & Central Asia",
2043091,
73.91692683,
251.9930681
],
[
"Madagascar",
2006,
"Sub-Saharan Africa",
18426870,
64.80143902,
11.83371835
],
[
"Malawi",
2006,
"Sub-Saharan Africa",
13195329,
49.88914634,
21.24146567
],
[
"Malaysia",
2006,
"East Asia & Pacific",
26586287,
73.16660976,
230.4061936
],
[
"Maldives",
2006,
"South Asia",
299419,
74.91268293,
290.275709
],
[
"Mali",
2006,
"Sub-Saharan Africa",
13592796,
49.3112439,
29.55001521
],
[
"Malta",
2006,
"Middle East & North Africa",
406408,
78.54878049,
1464.795667
],
[
"Mauritania",
2006,
"Sub-Saharan Africa",
3129959,
57.32619512,
30.63950897
],
[
"Mauritius",
2006,
"Sub-Saharan Africa",
1252698,
72.43219512,
261.8888902
],
[
"Mexico",
2006,
"Latin America & Caribbean",
107835259,
75.74997561,
515.0293096
],
[
"Micronesia, Fed. Sts.",
2006,
"East Asia & Pacific",
109789,
68.05917073,
274.776621
],
[
"Moldova",
2006,
"Europe & Central Asia",
3585520,
67.93868293,
100.8741843
],
[
"Mongolia",
2006,
"East Asia & Pacific",
2584143,
66.57926829,
63.18929662
],
[
"Montenegro",
2006,
"Europe & Central Asia",
627074,
73.96236585,
354.9942964
],
[
"Morocco",
2006,
"Middle East & North Africa",
30702084,
70.72353659,
111.9008058
],
[
"Mozambique",
2006,
"Sub-Saharan Africa",
21290952,
48.26514634,
21.70604372
],
[
"Myanmar",
2006,
"East Asia & Pacific",
46605278,
63.11121951,
5.79134945
],
[
"Namibia",
2006,
"Sub-Saharan Africa",
2118653,
59.37426829,
271.1196181
],
[
"Nepal",
2006,
"South Asia",
27833665,
66.31514634,
18.60498524
],
[
"Netherlands",
2006,
"Europe & Central Asia",
16346101,
79.69756098,
4032.103094
],
[
"New Zealand",
2006,
"East Asia & Pacific",
4184600,
80.04878049,
2295.244598
],
[
"Nicaragua",
2006,
"Latin America & Caribbean",
5493527,
72.37919512,
78.21907902
],
[
"Niger",
2006,
"Sub-Saharan Africa",
13460138,
52.26526829,
16.38586632
],
[
"Nigeria",
2006,
"Sub-Saharan Africa",
143338939,
49.51065854,
61.00612443
],
[
"Norway",
2006,
"Europe & Central Asia",
4660677,
80.34390244,
6247.747947
],
[
"Oman",
2006,
"Middle East & North Africa",
2490620,
73.31758537,
345.7169763
],
[
"Pakistan",
2006,
"South Asia",
161513324,
64.29743902,
21.65182518
],
[
"Panama",
2006,
"Latin America & Caribbean",
3294583,
75.29221951,
364.1430906
],
[
"Papua New Guinea",
2006,
"East Asia & Pacific",
6244916,
60.94456098,
31.28954658
],
[
"Paraguay",
2006,
"Latin America & Caribbean",
6008597,
71.45717073,
101.2453379
],
[
"Peru",
2006,
"Latin America & Caribbean",
27866387,
72.77219512,
149.6840192
],
[
"Philippines",
2006,
"East Asia & Pacific",
87116275,
67.6,
48.41112049
],
[
"Poland",
2006,
"Europe & Central Asia",
38141267,
75.14390244,
555.4864637
],
[
"Portugal",
2006,
"Europe & Central Asia",
10584344,
78.4195122,
1912.726762
],
[
"Qatar",
2006,
"Middle East & North Africa",
978336,
77.4284878,
1606.772235
],
[
"Romania",
2006,
"Europe & Central Asia",
21587666,
72.16341463,
289.5899118
],
[
"Russian Federation",
2006,
"Europe & Central Asia",
142500000,
66.64317073,
365.9234769
],
[
"Rwanda",
2006,
"Sub-Saharan Africa",
9441406,
53.00639024,
33.05142833
],
[
"Samoa",
2006,
"East Asia & Pacific",
180766,
71.29053659,
128.9528562
],
[
"San Marino",
2006,
"Europe & Central Asia",
30721,
82.1804878,
3443.795497
],
[
"Sao Tome and Principe",
2006,
"Sub-Saharan Africa",
154970,
63.41612195,
69.8633046
],
[
"Saudi Arabia",
2006,
"Middle East & North Africa",
24799436,
72.91582927,
537.0850422
],
[
"Senegal",
2006,
"Sub-Saharan Africa",
11169549,
57.66787805,
48.5002311
],
[
"Serbia",
2006,
"Europe & Central Asia",
7411569,
73.15512195,
371.3335524
],
[
"Seychelles",
2006,
"Sub-Saharan Africa",
84600,
72.21707317,
458.1379386
],
[
"Sierra Leone",
2006,
"Sub-Saharan Africa",
5327364,
45.07302439,
37.70503989
],
[
"Singapore",
2006,
"East Asia & Pacific",
4401400,
80.14146341,
1274.505375
],
[
"Slovak Republic",
2006,
"Europe & Central Asia",
5391409,
74.20487805,
760.4818137
],
[
"Slovenia",
2006,
"Europe & Central Asia",
2006868,
78.08658537,
1604.914884
],
[
"Solomon Islands",
2006,
"East Asia & Pacific",
483000,
65.89273171,
63.29838252
],
[
"South Africa",
2006,
"Sub-Saharan Africa",
47730946,
50.92965854,
460.8049263
],
[
"Spain",
2006,
"Europe & Central Asia",
44116441,
80.82195122,
2357.776248
],
[
"Sri Lanka",
2006,
"South Asia",
19858000,
74.18263415,
57.63071855
],
[
"St. Lucia",
2006,
"Latin America & Caribbean",
166387,
73.41653659,
389.740821
],
[
"St. Vincent and the Grenadines",
2006,
"Latin America & Caribbean",
108918,
71.30778049,
217.7983917
],
[
"Sudan",
2006,
"Sub-Saharan Africa",
31400127,
59.87643902,
44.70013063
],
[
"Suriname",
2006,
"Latin America & Caribbean",
504913,
69.15368293,
323.3922717
],
[
"Swaziland",
2006,
"Sub-Saharan Africa",
1018758,
46.2394878,
179.4752645
],
[
"Sweden",
2006,
"Europe & Central Asia",
9080505,
80.74878049,
3932.307087
],
[
"Switzerland",
2006,
"Europe & Central Asia",
7483934,
81.4902439,
5569.146146
],
[
"Syrian Arab Republic",
2006,
"Middle East & North Africa",
18860939,
75.09690244,
66.28076532
],
[
"Tajikistan",
2006,
"Europe & Central Asia",
6524634,
65.97368293,
21.21792044
],
[
"Tanzania",
2006,
"Sub-Saharan Africa",
39923609,
54.12936585,
23.43246045
],
[
"Thailand",
2006,
"East Asia & Pacific",
67276383,
73.32541463,
107.5334079
],
[
"Timor-Leste",
2006,
"East Asia & Pacific",
1014439,
60.14631707,
50.15591138
],
[
"Togo",
2006,
"Sub-Saharan Africa",
5529908,
55.43743902,
25.61406198
],
[
"Tonga",
2006,
"East Asia & Pacific",
101584,
71.59909756,
158.9242372
],
[
"Trinidad and Tobago",
2006,
"Latin America & Caribbean",
1320418,
68.82912195,
690.0111638
],
[
"Tunisia",
2006,
"Middle East & North Africa",
10127900,
73.9,
193.6883786
],
[
"Turkey",
2006,
"Europe & Central Asia",
69063538,
72.46273171,
444.5698152
],
[
"Turkmenistan",
2006,
"Europe & Central Asia",
4801847,
64.52121951,
97.61421831
],
[
"Uganda",
2006,
"Sub-Saharan Africa",
29370251,
50.95307317,
32.37073835
],
[
"Ukraine",
2006,
"Europe & Central Asia",
46787750,
68.07756098,
147.8354794
],
[
"United Arab Emirates",
2006,
"Middle East & North Africa",
4662728,
75.85180488,
1108.608162
],
[
"United Kingdom",
2006,
"Europe & Central Asia",
60595632,
79.24878049,
3414.775409
],
[
"United States",
2006,
"North America",
298379912,
77.58780488,
7107.224498
],
[
"Uruguay",
2006,
"Latin America & Caribbean",
3314466,
75.7297561,
491.2497329
],
[
"Uzbekistan",
2006,
"Europe & Central Asia",
26488200,
67.29817073,
36.49964728
],
[
"Vanuatu",
2006,
"East Asia & Pacific",
216760,
69.63778049,
71.53544564
],
[
"Venezuela, RB",
2006,
"Latin America & Caribbean",
27031000,
73.36756098,
387.8766444
],
[
"Vietnam",
2006,
"East Asia & Pacific",
83313000,
73.9407561,
46.66239905
],
[
"Yemen, Rep.",
2006,
"Middle East & North Africa",
21288070,
63.17060976,
51.62000056
],
[
"Zambia",
2006,
"Sub-Saharan Africa",
11750105,
45.2885122,
57.67959687
],
[
"Afghanistan",
2007,
"South Asia",
31622333,
47.20531707,
29.98475184
],
[
"Albania",
2007,
"Europe & Central Asia",
3169665,
76.47341463,
206.1178236
],
[
"Algeria",
2007,
"Middle East & North Africa",
33906605,
72.15090244,
140.8507643
],
[
"Angola",
2007,
"Sub-Saharan Africa",
17525367,
49.43529268,
116.691024
],
[
"Argentina",
2007,
"Latin America & Caribbean",
39368066,
75.11497561,
547.4813106
],
[
"Armenia",
2007,
"Europe & Central Asia",
3074181,
73.32782927,
116.2640723
],
[
"Australia",
2007,
"East Asia & Pacific",
21015900,
81.29268293,
3956.468725
],
[
"Austria",
2007,
"Europe & Central Asia",
8300788,
79.98292683,
4636.260896
],
[
"Azerbaijan",
2007,
"Europe & Central Asia",
8581300,
69.74865854,
190.9042988
],
[
"Bahamas, The",
2007,
"Latin America & Caribbean",
328861,
74.36543902,
1789.869762
],
[
"Bahrain",
2007,
"Middle East & North Africa",
925733,
74.63129268,
725.1517293
],
[
"Bangladesh",
2007,
"South Asia",
143956805,
67.66665854,
16.47743676
],
[
"Barbados",
2007,
"Latin America & Caribbean",
271618,
76.12936585,
874.4757419
],
[
"Belarus",
2007,
"Europe & Central Asia",
9560000,
70.20341463,
299.6157931
],
[
"Belgium",
2007,
"Europe & Central Asia",
10625700,
79.78292683,
4154.539644
],
[
"Belize",
2007,
"Latin America & Caribbean",
311500,
75.11185366,
211.610426
],
[
"Benin",
2007,
"Sub-Saharan Africa",
8112573,
54.43073171,
30.88555131
],
[
"Bhutan",
2007,
"South Asia",
688581,
65.75909756,
87.01527792
],
[
"Bolivia",
2007,
"Latin America & Caribbean",
9463497,
65.34773171,
65.0993628
],
[
"Bosnia and Herzegovina",
2007,
"Europe & Central Asia",
3779034,
74.96860976,
349.4353575
],
[
"Botswana",
2007,
"Sub-Saharan Africa",
1927540,
52.06895122,
465.5406723
],
[
"Brazil",
2007,
"Latin America & Caribbean",
189798070,
72.10995122,
609.9912708
],
[
"Brunei Darussalam",
2007,
"East Asia & Pacific",
377513,
77.52419512,
782.7656841
],
[
"Bulgaria",
2007,
"Europe & Central Asia",
7659764,
72.66341463,
374.6227977
],
[
"Burkina Faso",
2007,
"Sub-Saharan Africa",
15061127,
53.47695122,
29.80481044
],
[
"Burundi",
2007,
"Sub-Saharan Africa",
7707781,
48.54663415,
17.64229659
],
[
"Cambodia",
2007,
"East Asia & Pacific",
13669857,
61.06458537,
27.7324897
],
[
"Cameroon",
2007,
"Sub-Saharan Africa",
18350022,
49.81517073,
52.88655836
],
[
"Canada",
2007,
"North America",
32927517,
80.80439024,
4341.260069
],
[
"Cape Verde",
2007,
"Sub-Saharan Africa",
483023,
73.01085366,
137.4154173
],
[
"Central African Republic",
2007,
"Sub-Saharan Africa",
4160940,
45.48253659,
17.62764863
],
[
"Chad",
2007,
"Sub-Saharan Africa",
10371839,
48.36858537,
28.34741813
],
[
"Chile",
2007,
"Latin America & Caribbean",
16633254,
78.53426829,
678.4592415
],
[
"China",
2007,
"East Asia & Pacific",
1317885000,
72.61258537,
114.487789
],
[
"Colombia",
2007,
"Latin America & Caribbean",
44352327,
72.75378049,
320.2608712
],
[
"Comoros",
2007,
"Sub-Saharan Africa",
678602,
59.53,
34.69921468
],
[
"Congo, Dem. Rep.",
2007,
"Sub-Saharan Africa",
60772175,
47.34929268,
9.777770861
],
[
"Congo, Rep.",
2007,
"Sub-Saharan Africa",
3730612,
55.77041463,
57.10391379
],
[
"Costa Rica",
2007,
"Latin America & Caribbean",
4452608,
78.82141463,
524.3378606
],
[
"Cote d'Ivoire",
2007,
"Sub-Saharan Africa",
18646754,
52.72587805,
61.25121224
],
[
"Croatia",
2007,
"Europe & Central Asia",
4436000,
75.70560976,
1008.133122
],
[
"Cuba",
2007,
"Latin America & Caribbean",
11268687,
78.2852439,
586.9098551
],
[
"Cyprus",
2007,
"Europe & Central Asia",
1063027,
78.85790244,
1690.664709
],
[
"Czech Republic",
2007,
"Europe & Central Asia",
10334160,
76.72439024,
1140.341986
],
[
"Denmark",
2007,
"Europe & Central Asia",
5461438,
78.19512195,
5696.372074
],
[
"Djibouti",
2007,
"Middle East & North Africa",
839453,
56.35653659,
77.96119214
],
[
"Dominican Republic",
2007,
"Latin America & Caribbean",
9531954,
72.50446341,
213.6451554
],
[
"Ecuador",
2007,
"Latin America & Caribbean",
13849721,
75.00495122,
248.5822963
],
[
"Egypt, Arab Rep.",
2007,
"Middle East & North Africa",
76941572,
72.19221951,
84.8634038
],
[
"El Salvador",
2007,
"Latin America & Caribbean",
6100868,
71.10417073,
206.9540902
],
[
"Equatorial Guinea",
2007,
"Sub-Saharan Africa",
643936,
49.95263415,
371.5372269
],
[
"Eritrea",
2007,
"Sub-Saharan Africa",
4798561,
59.63921951,
9.040650691
],
[
"Estonia",
2007,
"Europe & Central Asia",
1341672,
72.81463415,
845.2152472
],
[
"Ethiopia",
2007,
"Sub-Saharan Africa",
77718436,
56.72392683,
11.79993617
],
[
"Fiji",
2007,
"East Asia & Pacific",
835267,
68.83163415,
152.4751028
],
[
"Finland",
2007,
"Europe & Central Asia",
5288720,
79.26341463,
3743.795262
],
[
"France",
2007,
"Europe & Central Asia",
64012051,
80.81463415,
4483.031211
],
[
"Gabon",
2007,
"Sub-Saharan Africa",
1423637,
60.89914634,
233.6902811
],
[
"Gambia, The",
2007,
"Sub-Saharan Africa",
1591357,
57.22004878,
20.33949923
],
[
"Georgia",
2007,
"Europe & Central Asia",
4388400,
72.84134146,
188.1498862
],
[
"Germany",
2007,
"Europe & Central Asia",
82266372,
79.53414634,
4229.80161
],
[
"Ghana",
2007,
"Sub-Saharan Africa",
22712403,
62.3002439,
65.54802359
],
[
"Greece",
2007,
"Europe & Central Asia",
11192763,
79.43902439,
2677.09805
],
[
"Grenada",
2007,
"Latin America & Caribbean",
103368,
75.1467561,
448.1407312
],
[
"Guatemala",
2007,
"Latin America & Caribbean",
13358842,
70.12504878,
183.8762473
],
[
"Guinea",
2007,
"Sub-Saharan Africa",
9373619,
52.18856098,
26.82052334
],
[
"Guinea-Bissau",
2007,
"Sub-Saharan Africa",
1424191,
46.64268293,
28.93788032
],
[
"Guyana",
2007,
"Latin America & Caribbean",
750068,
68.34817073,
92.67232155
],
[
"Haiti",
2007,
"Latin America & Caribbean",
9608453,
60.68773171,
33.67382649
],
[
"Honduras",
2007,
"Latin America & Caribbean",
7158819,
71.95890244,
136.3115059
],
[
"Hungary",
2007,
"Europe & Central Asia",
10055780,
73.15121951,
1038.627659
],
[
"Iceland",
2007,
"Europe & Central Asia",
311566,
81.45365854,
6029.826438
],
[
"India",
2007,
"South Asia",
1173971629,
64.06853659,
39.88648592
],
[
"Indonesia",
2007,
"East Asia & Pacific",
232461746,
67.70958537,
58.30949384
],
[
"Iran, Islamic Rep.",
2007,
"Middle East & North Africa",
71435498,
71.93463415,
255.361956
],
[
"Iraq",
2007,
"Middle East & North Africa",
29292601,
67.86407317,
107.948296
],
[
"Ireland",
2007,
"Europe & Central Asia",
4356931,
79.04146341,
4552.412765
],
[
"Israel",
2007,
"Middle East & North Africa",
7180100,
85.11463415,
1767.628646
],
[
"Italy",
2007,
"Europe & Central Asia",
59375289,
81.28536585,
3094.566014
],
[
"Jamaica",
2007,
"Latin America & Caribbean",
2675800,
72.04080488,
230.1138812
],
[
"Japan",
2007,
"East Asia & Pacific",
127770750,
82.50707317,
2805.850251
],
[
"Jordan",
2007,
"Middle East & North Africa",
5662000,
72.88692683,
251.9592105
],
[
"Kazakhstan",
2007,
"Europe & Central Asia",
15484192,
66.50487805,
231.7242017
],
[
"Kenya",
2007,
"Sub-Saharan Africa",
37485246,
54.38602439,
32.12031441
],
[
"Korea, Rep.",
2007,
"East Asia & Pacific",
48598000,
79.3495122,
1360.61321
],
[
"Kuwait",
2007,
"Middle East & North Africa",
2447818,
74.27990244,
999.2913284
],
[
"Kyrgyz Republic",
2007,
"Europe & Central Asia",
5268400,
67.84634146,
50.85716011
],
[
"Lao PDR",
2007,
"East Asia & Pacific",
5931385,
65.65956098,
29.48758359
],
[
"Latvia",
2007,
"Europe & Central Asia",
2276100,
71.0195122,
882.9058794
],
[
"Lebanon",
2007,
"Middle East & North Africa",
4134872,
71.86285366,
498.0869381
],
[
"Lesotho",
2007,
"Sub-Saharan Africa",
2106128,
45.21502439,
68.99034551
],
[
"Liberia",
2007,
"Sub-Saharan Africa",
3477197,
53.88885366,
21.75283762
],
[
"Libya",
2007,
"Middle East & North Africa",
6023053,
74.10292683,
266.1925742
],
[
"Lithuania",
2007,
"Europe & Central Asia",
3375618,
70.9,
724.9464863
],
[
"Luxembourg",
2007,
"Europe & Central Asia",
479993,
79.38292683,
7625.168995
],
[
"Macedonia, FYR",
2007,
"Europe & Central Asia",
2047922,
74.09060976,
274.1615466
],
[
"Madagascar",
2007,
"Sub-Saharan Africa",
18980391,
65.37556098,
16.00357807
],
[
"Malawi",
2007,
"Sub-Saharan Africa",
13589404,
50.86231707,
17.89822539
],
[
"Malaysia",
2007,
"East Asia & Pacific",
27051142,
73.35904878,
261.9304338
],
[
"Maldives",
2007,
"South Asia",
303539,
75.38702439,
319.6129189
],
[
"Mali",
2007,
"Sub-Saharan Africa",
14020786,
49.7107561,
35.58786368
],
[
"Malta",
2007,
"Middle East & North Africa",
409050,
79.44390244,
1584.218106
],
[
"Mauritania",
2007,
"Sub-Saharan Africa",
3212672,
57.47026829,
38.6568497
],
[
"Mauritius",
2007,
"Sub-Saharan Africa",
1260403,
72.57073171,
316.6212432
],
[
"Mexico",
2007,
"Latin America & Caribbean",
109220753,
75.99714634,
564.8846788
],
[
"Micronesia, Fed. Sts.",
2007,
"East Asia & Pacific",
110092,
68.2274878,
278.8147987
],
[
"Moldova",
2007,
"Europe & Central Asia",
3576904,
68.12390244,
133.7728102
],
[
"Mongolia",
2007,
"East Asia & Pacific",
2624509,
67.05756098,
85.0647249
],
[
"Montenegro",
2007,
"Europe & Central Asia",
627962,
73.96953659,
458.4346085
],
[
"Morocco",
2007,
"Middle East & North Africa",
31011199,
71.01912195,
132.3279603
],
[
"Mozambique",
2007,
"Sub-Saharan Africa",
21811326,
48.56058537,
21.97044287
],
[
"Myanmar",
2007,
"East Asia & Pacific",
46915826,
63.41817073,
7.496031693
],
[
"Namibia",
2007,
"Sub-Saharan Africa",
2158984,
60.22326829,
283.5046722
],
[
"Nepal",
2007,
"South Asia",
28373838,
66.96609756,
19.70605053
],
[
"Netherlands",
2007,
"Europe & Central Asia",
16381696,
80.09756098,
5174.107605
],
[
"New Zealand",
2007,
"East Asia & Pacific",
4228300,
80.15121951,
2694.340099
],
[
"Nicaragua",
2007,
"Latin America & Caribbean",
5563654,
72.75939024,
92.68122563
],
[
"Niger",
2007,
"Sub-Saharan Africa",
13945662,
52.81814634,
16.46154706
],
[
"Nigeria",
2007,
"Sub-Saharan Africa",
146951477,
49.9994878,
79.60999569
],
[
"Norway",
2007,
"Europe & Central Asia",
4709153,
80.39512195,
7312.73739
],
[
"Oman",
2007,
"Middle East & North Africa",
2561187,
73.10887805,
403.0693176
],
[
"Pakistan",
2007,
"South Asia",
164445596,
64.50253659,
26.09735381
],
[
"Panama",
2007,
"Latin America & Caribbean",
3350673,
75.4594878,
397.5539257
],
[
"Papua New Guinea",
2007,
"East Asia & Pacific",
6396307,
61.32390244,
41.46926288
],
[
"Paraguay",
2007,
"Latin America & Caribbean",
6119295,
71.65865854,
126.4582687
],
[
"Peru",
2007,
"Latin America & Caribbean",
28166078,
73.05039024,
193.5999407
],
[
"Philippines",
2007,
"East Asia & Pacific",
88652631,
67.78009756,
65.50596887
],
[
"Poland",
2007,
"Europe & Central Asia",
38120560,
75.24390244,
706.3669592
],
[
"Portugal",
2007,
"Europe & Central Asia",
10608335,
78.32195122,
2183.253709
],
[
"Qatar",
2007,
"Middle East & North Africa",
1178192,
77.60443902,
1564.183605
],
[
"Romania",
2007,
"Europe & Central Asia",
21546873,
72.56585366,
415.0336657
],
[
"Russian Federation",
2007,
"Europe & Central Asia",
142100000,
67.49756098,
487.9707197
],
[
"Rwanda",
2007,
"Sub-Saharan Africa",
9710531,
53.65973171,
36.25540815
],
[
"Samoa",
2007,
"East Asia & Pacific",
181277,
71.55636585,
165.2464381
],
[
"San Marino",
2007,
"Europe & Central Asia",
31007,
82.50609756,
3868.928363
],
[
"Sao Tome and Principe",
2007,
"Sub-Saharan Africa",
157361,
63.63895122,
68.63985192
],
[
"Saudi Arabia",
2007,
"Middle East & North Africa",
25504176,
73.16312195,
565.7507085
],
[
"Senegal",
2007,
"Sub-Saharan Africa",
11474661,
57.98721951,
55.89485319
],
[
"Serbia",
2007,
"Europe & Central Asia",
7381579,
73.38292683,
546.6314699
],
[
"Seychelles",
2007,
"Sub-Saharan Africa",
85033,
73.19268293,
413.2072097
],
[
"Sierra Leone",
2007,
"Sub-Saharan Africa",
5478289,
45.79587805,
55.23507025
],
[
"Singapore",
2007,
"East Asia & Pacific",
4588600,
80.44146341,
1448.828216
],
[
"Slovak Republic",
2007,
"Europe & Central Asia",
5397318,
74.20731707,
1077.314651
],
[
"Slovenia",
2007,
"Europe & Central Asia",
2018122,
78.56097561,
1836.157646
],
[
"Solomon Islands",
2007,
"East Asia & Pacific",
496490,
66.28378049,
68.49644096
],
[
"South Africa",
2007,
"Sub-Saharan Africa",
48257282,
51.00365854,
456.4692499
],
[
"Spain",
2007,
"Europe & Central Asia",
44878945,
80.87317073,
2729.462798
],
[
"Sri Lanka",
2007,
"South Asia",
20039000,
74.31207317,
60.20064505
],
[
"St. Lucia",
2007,
"Latin America & Caribbean",
168338,
73.72321951,
456.8027036
],
[
"St. Vincent and the Grenadines",
2007,
"Latin America & Caribbean",
109060,
71.51546341,
245.9156202
],
[
"Sudan",
2007,
"Sub-Saharan Africa",
31934782,
60.17860976,
69.35011431
],
[
"Suriname",
2007,
"Latin America & Caribbean",
510136,
69.46841463,
332.9980805
],
[
"Swaziland",
2007,
"Sub-Saharan Africa",
1020102,
46.7695122,
186.3937432
],
[
"Sweden",
2007,
"Europe & Central Asia",
9148092,
80.9,
4508.450278
],
[
"Switzerland",
2007,
"Europe & Central Asia",
7551117,
81.74146341,
6050.911859
],
[
"Syrian Arab Republic",
2007,
"Middle East & North Africa",
19245438,
75.25878049,
79.38885487
],
[
"Tajikistan",
2007,
"Europe & Central Asia",
6604426,
66.32378049,
30.11119553
],
[
"Tanzania",
2007,
"Sub-Saharan Africa",
41068185,
54.9425122,
23.32070456
],
[
"Thailand",
2007,
"East Asia & Pacific",
67796451,
73.46590244,
129.8400743
],
[
"Timor-Leste",
2007,
"East Asia & Pacific",
1046030,
60.62365854,
49.80559425
],
[
"Togo",
2007,
"Sub-Saharan Africa",
5652811,
55.62619512,
28.987533
],
[
"Tonga",
2007,
"East Asia & Pacific",
102254,
71.73804878,
205.1404712
],
[
"Trinidad and Tobago",
2007,
"Latin America & Caribbean",
1325672,
69.06614634,
787.4729646
],
[
"Tunisia",
2007,
"Middle East & North Africa",
10225100,
74.20243902,
216.7013258
],
[
"Turkey",
2007,
"Europe & Central Asia",
69992754,
72.81065854,
556.4176865
],
[
"Turkmenistan",
2007,
"Europe & Central Asia",
4858843,
64.59831707,
112.7256641
],
[
"Uganda",
2007,
"Sub-Saharan Africa",
30339895,
51.72968293,
37.91286647
],
[
"Ukraine",
2007,
"Europe & Central Asia",
46509350,
68.22219512,
195.9739908
],
[
"United Arab Emirates",
2007,
"Middle East & North Africa",
5405541,
76.03843902,
1204.028251
],
[
"United Kingdom",
2007,
"Europe & Central Asia",
60986649,
79.44878049,
3910.352301
],
[
"United States",
2007,
"North America",
301231207,
77.83902439,
7482.458818
],
[
"Uruguay",
2007,
"Latin America & Caribbean",
3323906,
75.85512195,
560.8447877
],
[
"Uzbekistan",
2007,
"Europe & Central Asia",
26868000,
67.41129268,
46.96308014
],
[
"Vanuatu",
2007,
"East Asia & Pacific",
222377,
69.94465854,
109.5775608
],
[
"Venezuela, RB",
2007,
"Latin America & Caribbean",
27483000,
73.56243902,
497.794225
],
[
"Vietnam",
2007,
"East Asia & Pacific",
84221100,
74.16534146,
58.39865327
],
[
"Yemen, Rep.",
2007,
"Middle East & North Africa",
21946990,
63.66534146,
57.43712459
],
[
"Zambia",
2007,
"Sub-Saharan Africa",
12055384,
46.19763415,
53.98641695
],
[
"Afghanistan",
2008,
"South Asia",
32517656,
47.53856098,
34.98059601
],
[
"Albania",
2008,
"Europe & Central Asia",
3181397,
76.6207561,
244.0244875
],
[
"Algeria",
2008,
"Middle East & North Africa",
34428028,
72.38904878,
185.7074854
],
[
"Angola",
2008,
"Sub-Saharan Africa",
18037964,
49.84741463,
179.4320957
],
[
"Argentina",
2008,
"Latin America & Caribbean",
39714298,
75.29253659,
685.1687561
],
[
"Armenia",
2008,
"Europe & Central Asia",
3079087,
73.49595122,
142.7180898
],
[
"Australia",
2008,
"East Asia & Pacific",
21384400,
81.39512195,
4237.325456
],
[
"Austria",
2008,
"Europe & Central Asia",
8336926,
80.23414634,
5211.40999
],
[
"Azerbaijan",
2008,
"Europe & Central Asia",
8763400,
70.06785366,
238.9227146
],
[
"Bahamas, The",
2008,
"Latin America & Caribbean",
333661,
74.69385366,
1805.112269
],
[
"Bahrain",
2008,
"Middle East & North Africa",
1052359,
74.75860976,
773.5133927
],
[
"Bangladesh",
2008,
"South Asia",
145478300,
68.00402439,
19.35205288
],
[
"Barbados",
2008,
"Latin America & Caribbean",
272180,
76.26436585,
958.1784845
],
[
"Belarus",
2008,
"Europe & Central Asia",
9528000,
70.45609756,
373.347528
],
[
"Belgium",
2008,
"Europe & Central Asia",
10709973,
79.6804878,
4733.081216
],
[
"Belize",
2008,
"Latin America & Caribbean",
322100,
75.3775122,
235.0139676
],
[
"Benin",
2008,
"Sub-Saharan Africa",
8355980,
54.78731707,
33.30743986
],
[
"Bhutan",
2008,
"South Asia",
701363,
66.15131707,
94.01990413
],
[
"Bolivia",
2008,
"Latin America & Caribbean",
9618466,
65.65809756,
85.47783675
],
[
"Bosnia and Herzegovina",
2008,
"Europe & Central Asia",
3774164,
75.10631707,
434.335112
],
[
"Botswana",
2008,
"Sub-Saharan Africa",
1954822,
52.66368293,
304.6029051
],
[
"Brazil",
2008,
"Latin America & Caribbean",
191543237,
72.42709756,
715.0808321
],
[
"Brunei Darussalam",
2008,
"East Asia & Pacific",
384695,
77.66229268,
876.9586543
],
[
"Bulgaria",
2008,
"Europe & Central Asia",
7623395,
72.96341463,
474.1028261
],
[
"Burkina Faso",
2008,
"Sub-Saharan Africa",
15515258,
53.9824878,
36.51270656
],
[
"Burundi",
2008,
"Sub-Saharan Africa",
7943385,
48.9757561,
19.08096604
],
[
"Cambodia",
2008,
"East Asia & Pacific",
13822644,
61.58085366,
40.50030447
],
[
"Cameroon",
2008,
"Sub-Saharan Africa",
18758778,
50.16090244,
63.83443112
],
[
"Canada",
2008,
"North America",
33317662,
80.96487805,
4629.676836
],
[
"Cape Verde",
2008,
"Sub-Saharan Africa",
487371,
73.33619512,
145.482492
],
[
"Central African Republic",
2008,
"Sub-Saharan Africa",
4237961,
46.1632439,
20.16734572
],
[
"Chad",
2008,
"Sub-Saharan Africa",
10653762,
48.6057561,
28.03007806
],
[
"Chile",
2008,
"Latin America & Caribbean",
16795593,
78.64721951,
760.5572579
],
[
"China",
2008,
"East Asia & Pacific",
1324655000,
72.83534146,
156.6122151
],
[
"Colombia",
2008,
"Latin America & Caribbean",
45005782,
72.98434146,
368.5835199
],
[
"Comoros",
2008,
"Sub-Saharan Africa",
697034,
59.86117073,
40.46590601
],
[
"Congo, Dem. Rep.",
2008,
"Sub-Saharan Africa",
62474901,
47.55734146,
13.70413496
],
[
"Congo, Rep.",
2008,
"Sub-Saharan Africa",
3836339,
56.15934146,
64.45655959
],
[
"Costa Rica",
2008,
"Latin America & Caribbean",
4522124,
78.94626829,
614.7904998
],
[
"Cote d'Ivoire",
2008,
"Sub-Saharan Africa",
18987007,
53.37770732,
71.8340777
],
[
"Croatia",
2008,
"Europe & Central Asia",
4434000,
75.91219512,
1224.041833
],
[
"Cuba",
2008,
"Latin America & Caribbean",
11266905,
78.54741463,
584.0994651
],
[
"Cyprus",
2008,
"Europe & Central Asia",
1077001,
79.02146341,
2182.163605
],
[
"Czech Republic",
2008,
"Europe & Central Asia",
10424336,
76.97560976,
1473.828372
],
[
"Denmark",
2008,
"Europe & Central Asia",
5493621,
78.44634146,
6376.10081
],
[
"Djibouti",
2008,
"Middle East & North Africa",
855636,
56.75509756,
82.47327166
],
[
"Dominican Republic",
2008,
"Latin America & Caribbean",
9664948,
72.72895122,
246.5284124
],
[
"Ecuador",
2008,
"Latin America & Caribbean",
14056740,
75.15058537,
277.1009277
],
[
"Egypt, Arab Rep.",
2008,
"Middle East & North Africa",
78323298,
72.47543902,
101.2424499
],
[
"El Salvador",
2008,
"Latin America & Caribbean",
6129628,
71.31087805,
215.9022427
],
[
"Equatorial Guinea",
2008,
"Sub-Saharan Africa",
662327,
50.24721951,
745.2193535
],
[
"Eritrea",
2008,
"Sub-Saharan Africa",
4947521,
60.10526829,
9.47048066
],
[
"Estonia",
2008,
"Europe & Central Asia",
1340675,
73.77073171,
1073.078209
],
[
"Ethiopia",
2008,
"Sub-Saharan Africa",
79446419,
57.45078049,
14.04361326
],
[
"Fiji",
2008,
"East Asia & Pacific",
843651,
68.97158537,
153.6235984
],
[
"Finland",
2008,
"Europe & Central Asia",
5313399,
79.56829268,
4249.934641
],
[
"France",
2008,
"Europe & Central Asia",
64370515,
80.86829268,
4862.348834
],
[
"Gabon",
2008,
"Sub-Saharan Africa",
1450310,
61.38112195,
263.3325999
],
[
"Gambia, The",
2008,
"Sub-Saharan Africa",
1636107,
57.5242439,
25.42957667
],
[
"Georgia",
2008,
"Europe & Central Asia",
4383700,
72.98463415,
261.8769209
],
[
"Germany",
2008,
"Europe & Central Asia",
82110097,
79.73658537,
4716.107846
],
[
"Ghana",
2008,
"Sub-Saharan Africa",
23264176,
62.8735122,
68.52161415
],
[
"Greece",
2008,
"Europe & Central Asia",
11237094,
79.93902439,
3313.894098
],
[
"Grenada",
2008,
"Latin America & Caribbean",
103723,
75.32178049,
474.0900717
],
[
"Guatemala",
2008,
"Latin America & Caribbean",
13690846,
70.35234146,
198.5049907
],
[
"Guinea",
2008,
"Sub-Saharan Africa",
9559110,
52.6872439,
28.92021531
],
[
"Guinea-Bissau",
2008,
"Sub-Saharan Africa",
1453757,
46.95926829,
34.05591605
],
[
"Guyana",
2008,
"Latin America & Caribbean",
751578,
68.79921951,
171.6123182
],
[
"Haiti",
2008,
"Latin America & Caribbean",
9736332,
61.07478049,
36.02528666
],
[
"Honduras",
2008,
"Latin America & Caribbean",
7302742,
72.24097561,
159.7012757
],
[
"Hungary",
2008,
"Europe & Central Asia",
10038188,
73.70243902,
1146.578624
],
[
"Iceland",
2008,
"Europe & Central Asia",
317414,
81.6097561,
4880.994785
],
[
"India",
2008,
"South Asia",
1190863679,
64.42295122,
42.70130646
],
[
"Indonesia",
2008,
"East Asia & Pacific",
234951154,
68.07514634,
61.75383003
],
[
"Iran, Islamic Rep.",
2008,
"Middle East & North Africa",
72289291,
72.21965854,
312.5518964
],
[
"Iraq",
2008,
"Middle East & North Africa",
30178292,
67.87112195,
160.7317203
],
[
"Ireland",
2008,
"Europe & Central Asia",
4425683,
79.14146341,
5241.043435
],
[
"Israel",
2008,
"Middle East & North Africa",
7308800,
80.95121951,
2124.360105
],
[
"Italy",
2008,
"Europe & Central Asia",
59832179,
81.38536585,
3471.678586
],
[
"Jamaica",
2008,
"Latin America & Caribbean",
2687200,
72.32302439,
272.3248162
],
[
"Japan",
2008,
"East Asia & Pacific",
127704040,
82.58756098,
3253.102023
],
[
"Jordan",
2008,
"Middle East & North Africa",
5787000,
73.01621951,
329.706989
],
[
"Kazakhstan",
2008,
"Europe & Central Asia",
15673999,
67.02195122,
329.8598113
],
[
"Kenya",
2008,
"Sub-Saharan Africa",
38455418,
55.12421951,
33.19619238
],
[
"Korea, Rep.",
2008,
"East Asia & Pacific",
48949000,
79.83268293,
1228.757283
],
[
"Kuwait",
2008,
"Middle East & North Africa",
2548351,
74.37829268,
1117.342301
],
[
"Kyrgyz Republic",
2008,
"Europe & Central Asia",
5318700,
68.45121951,
59.9619728
],
[
"Lao PDR",
2008,
"East Asia & Pacific",
6022001,
66.18439024,
36.87497498
],
[
"Latvia",
2008,
"Europe & Central Asia",
2266094,
72.4195122,
980.8452682
],
[
"Lebanon",
2008,
"Middle East & North Africa",
4166915,
72.04731707,
534.2348016
],
[
"Lesotho",
2008,
"Sub-Saharan Africa",
2127412,
45.93156098,
72.44746837
],
[
"Liberia",
2008,
"Sub-Saharan Africa",
3658460,
54.72763415,
27.47533374
],
[
"Libya",
2008,
"Middle East & North Africa",
6149620,
74.329,
310.8905543
],
[
"Lithuania",
2008,
"Europe & Central Asia",
3358115,
71.81219512,
934.406832
],
[
"Luxembourg",
2008,
"Europe & Central Asia",
488650,
80.53902439,
8054.816359
],
[
"Macedonia, FYR",
2008,
"Europe & Central Asia",
2052524,
74.26712195,
315.4700563
],
[
"Madagascar",
2008,
"Sub-Saharan Africa",
19546282,
65.83553659,
17.47819881
],
[
"Malawi",
2008,
"Sub-Saharan Africa",
14005113,
51.80473171,
25.60313646
],
[
"Malaysia",
2008,
"East Asia & Pacific",
27502008,
73.56812195,
306.3683687
],
[
"Maldives",
2008,
"South Asia",
307632,
75.81104878,
477.4404317
],
[
"Mali",
2008,
"Sub-Saharan Africa",
14459990,
50.12019512,
40.72324434
],
[
"Malta",
2008,
"Middle East & North Africa",
411950,
79.43170732,
1599.465097
],
[
"Mauritania",
2008,
"Sub-Saharan Africa",
3295254,
57.6682439,
47.27616691
],
[
"Mauritius",
2008,
"Sub-Saharan Africa",
1268565,
72.57073171,
395.0731856
],
[
"Mexico",
2008,
"Latin America & Caribbean",
110627158,
76.23634146,
598.3378052
],
[
"Micronesia, Fed. Sts.",
2008,
"East Asia & Pacific",
110367,
68.4027561,
306.0551423
],
[
"Moldova",
2008,
"Europe & Central Asia",
3570107,
68.34865854,
193.4219437
],
[
"Mongolia",
2008,
"East Asia & Pacific",
2667474,
67.4862439,
122.7064693
],
[
"Montenegro",
2008,
"Europe & Central Asia",
629185,
74.03358537,
573.9169205
],
[
"Morocco",
2008,
"Middle East & North Africa",
31321453,
71.3077561,
153.1680217
],
[
"Mozambique",
2008,
"Sub-Saharan Africa",
22332900,
48.89839024,
24.35753357
],
[
"Myanmar",
2008,
"East Asia & Pacific",
47250315,
63.7817561,
10.6130592
],
[
"Namibia",
2008,
"Sub-Saharan Africa",
2200422,
60.98934146,
275.274878
],
[
"Nepal",
2008,
"South Asia",
28905358,
67.52795122,
22.70146522
],
[
"Netherlands",
2008,
"Europe & Central Asia",
16445593,
80.25121951,
5836.271979
],
[
"New Zealand",
2008,
"East Asia & Pacific",
4268900,
80.35121951,
2820.247046
],
[
"Nicaragua",
2008,
"Latin America & Caribbean",
5635577,
73.11080488,
105.2139705
],
[
"Niger",
2008,
"Sub-Saharan Africa",
14450007,
53.3344878,
19.45086607
],
[
"Nigeria",
2008,
"Sub-Saharan Africa",
150665730,
50.47973171,
87.63128595
],
[
"Norway",
2008,
"Europe & Central Asia",
4768212,
80.59268293,
8138.628762
],
[
"Oman",
2008,
"Middle East & North Africa",
2636963,
72.99860976,
472.7088693
],
[
"Pakistan",
2008,
"South Asia",
167442258,
64.72195122,
28.92864547
],
[
"Panama",
2008,
"Latin America & Caribbean",
3406487,
75.62931707,
493.0881736
],
[
"Papua New Guinea",
2008,
"East Asia & Pacific",
6549268,
61.70117073,
55.82402014
],
[
"Paraguay",
2008,
"Latin America & Caribbean",
6230242,
71.86170732,
167.3314687
],
[
"Peru",
2008,
"Latin America & Caribbean",
28463338,
73.30570732,
256.2936678
],
[
"Philippines",
2008,
"East Asia & Pacific",
90173139,
67.98892683,
74.62828181
],
[
"Poland",
2008,
"Europe & Central Asia",
38125759,
75.54390244,
956.4948917
],
[
"Portugal",
2008,
"Europe & Central Asia",
10622413,
78.52439024,
2423.551945
],
[
"Qatar",
2008,
"Middle East & North Africa",
1396060,
77.7745122,
1547.61469
],
[
"Romania",
2008,
"Europe & Central Asia",
21513622,
72.56585366,
516.4738511
],
[
"Russian Federation",
2008,
"Europe & Central Asia",
141950000,
67.84878049,
596.480749
],
[
"Rwanda",
2008,
"Sub-Saharan Africa",
10004092,
54.20619512,
43.52995858
],
[
"Samoa",
2008,
"East Asia & Pacific",
181809,
71.81370732,
167.3488862
],
[
"San Marino",
2008,
"Europe & Central Asia",
31198,
82.83170732,
4221.67062
],
[
"Sao Tome and Principe",
2008,
"Sub-Saharan Africa",
159852,
63.8697561,
79.13477167
],
[
"Saudi Arabia",
2008,
"Middle East & North Africa",
26166639,
73.40207317,
560.9889098
],
[
"Senegal",
2008,
"Sub-Saharan Africa",
11787123,
58.30936585,
65.74653847
],
[
"Serbia",
2008,
"Europe & Central Asia",
7350221,
73.63658537,
673.3951746
],
[
"Seychelles",
2008,
"Sub-Saharan Africa",
86956,
73.16341463,
358.376453
],
[
"Sierra Leone",
2008,
"Sub-Saharan Africa",
5612129,
46.42526829,
63.17233605
],
[
"Singapore",
2008,
"East Asia & Pacific",
4839400,
80.7902439,
1669.509156
],
[
"Slovak Republic",
2008,
"Europe & Central Asia",
5406626,
74.70487805,
1398.669145
],
[
"Slovenia",
2008,
"Europe & Central Asia",
2021316,
78.76585366,
2244.156118
],
[
"Solomon Islands",
2008,
"East Asia & Pacific",
510221,
66.67346341,
70.98564891
],
[
"South Africa",
2008,
"Sub-Saharan Africa",
48793022,
51.24021951,
445.2355511
],
[
"South Sudan",
2008,
"Sub-Saharan Africa",
8976845,
61.51219512,
33.97232208
],
[
"Spain",
2008,
"Europe & Central Asia",
45555716,
81.17560976,
3125.584514
],
[
"Sri Lanka",
2008,
"South Asia",
20217000,
74.43326829,
70.5661622
],
[
"St. Lucia",
2008,
"Latin America & Caribbean",
170331,
73.99919512,
500.7422188
],
[
"St. Vincent and the Grenadines",
2008,
"Latin America & Caribbean",
109178,
71.72109756,
299.3922427
],
[
"Sudan",
2008,
"Sub-Saharan Africa",
32438306,
60.47792683,
96.74574833
],
[
"Suriname",
2008,
"Latin America & Caribbean",
515066,
69.77570732,
395.8114926
],
[
"Swaziland",
2008,
"Sub-Saharan Africa",
1031747,
47.34192683,
211.017192
],
[
"Sweden",
2008,
"Europe & Central Asia",
9219637,
81.1,
4865.991151
],
[
"Switzerland",
2008,
"Europe & Central Asia",
7647675,
81.99268293,
6995.701949
],
[
"Syrian Arab Republic",
2008,
"Middle East & North Africa",
19637776,
75.41260976,
89.88517194
],
[
"Tajikistan",
2008,
"Europe & Central Asia",
6691416,
66.65597561,
43.07761038
],
[
"Tanzania",
2008,
"Sub-Saharan Africa",
42267667,
55.76943902,
26.28317021
],
[
"Thailand",
2008,
"East Asia & Pacific",
68267982,
73.61326829,
158.415597
],
[
"Timor-Leste",
2008,
"East Asia & Pacific",
1077911,
61.08595122,
53.09658021
],
[
"Togo",
2008,
"Sub-Saharan Africa",
5776837,
55.88031707,
35.43502773
],
[
"Tonga",
2008,
"East Asia & Pacific",
102910,
71.8764878,
206.8143218
],
[
"Trinidad and Tobago",
2008,
"Latin America & Caribbean",
1331040,
69.30514634,
909.1604177
],
[
"Tunisia",
2008,
"Middle East & North Africa",
10328900,
74.30243902,
246.3780725
],
[
"Turkey",
2008,
"Europe & Central Asia",
70923730,
73.12963415,
624.0032834
],
[
"Turkmenistan",
2008,
"Europe & Central Asia",
4918396,
64.67570732,
80.50645805
],
[
"Uganda",
2008,
"Sub-Saharan Africa",
31339392,
52.43997561,
40.0052934
],
[
"Ukraine",
2008,
"Europe & Central Asia",
46258200,
68.25146341,
259.6442146
],
[
"United Arab Emirates",
2008,
"Middle East & North Africa",
6206623,
76.22134146,
1518.825343
],
[
"United Kingdom",
2008,
"Europe & Central Asia",
61393521,
79.6,
3760.207315
],
[
"United States",
2008,
"North America",
304093966,
77.93902439,
7760.474973
],
[
"Uruguay",
2008,
"Latin America & Caribbean",
3334052,
75.98073171,
722.3730404
],
[
"Uzbekistan",
2008,
"Europe & Central Asia",
27302700,
67.56697561,
57.54981458
],
[
"Vanuatu",
2008,
"East Asia & Pacific",
228041,
70.24358537,
134.6715724
],
[
"Venezuela, RB",
2008,
"Latin America & Caribbean",
27935000,
73.75756098,
634.4285653
],
[
"Vietnam",
2008,
"East Asia & Pacific",
85122300,
74.38546341,
70.47103365
],
[
"Yemen, Rep.",
2008,
"Middle East & North Africa",
22626595,
64.13956098,
68.22630216
],
[
"Zambia",
2008,
"Sub-Saharan Africa",
12379612,
47.05243902,
70.94689796
],
[
"Afghanistan",
2009,
"South Asia",
33438329,
47.89885366,
35.49851201
],
[
"Albania",
2009,
"Europe & Central Asia",
3192723,
76.76109756,
238.2603038
],
[
"Algeria",
2009,
"Middle East & North Africa",
34950168,
72.6227561,
180.5017691
],
[
"Angola",
2009,
"Sub-Saharan Africa",
18555115,
50.25102439,
236.5510202
],
[
"Argentina",
2009,
"Latin America & Caribbean",
40062470,
75.46409756,
725.0367866
],
[
"Armenia",
2009,
"Europe & Central Asia",
3084979,
73.64553659,
128.7742572
],
[
"Australia",
2009,
"East Asia & Pacific",
21778800,
81.54390244,
4118.488722
],
[
"Austria",
2009,
"Europe & Central Asia",
8365275,
80.08292683,
5110.543173
],
[
"Azerbaijan",
2009,
"Europe & Central Asia",
8947243,
70.31763415,
285.7955834
],
[
"Bahamas, The",
2009,
"Latin America & Caribbean",
338358,
74.97526829,
1701.203169
],
[
"Bahrain",
2009,
"Middle East & North Africa",
1169578,
74.88978049,
748.0431977
],
[
"Bangladesh",
2009,
"South Asia",
147030145,
68.32521951,
22.44012725
],
[
"Barbados",
2009,
"Latin America & Caribbean",
272750,
76.41302439,
842.7385236
],
[
"Belarus",
2009,
"Europe & Central Asia",
9507000,
70.40731707,
310.7473675
],
[
"Belgium",
2009,
"Europe & Central Asia",
10796493,
79.98292683,
4673.942439
],
[
"Belize",
2009,
"Latin America & Caribbean",
333200,
75.6185122,
253.9885813
],
[
"Benin",
2009,
"Sub-Saharan Africa",
8601771,
55.17341463,
34.16856338
],
[
"Bhutan",
2009,
"South Asia",
713665,
66.53204878,
81.31767016
],
[
"Bolivia",
2009,
"Latin America & Caribbean",
9773441,
65.96385366,
102.2787767
],
[
"Bosnia and Herzegovina",
2009,
"Europe & Central Asia",
3767683,
75.25043902,
461.0259805
],
[
"Botswana",
2009,
"Sub-Saharan Africa",
1981576,
53.01153659,
283.75697
],
[
"Brazil",
2009,
"Latin America & Caribbean",
193246610,
72.75980488,
733.8992956
],
[
"Brunei Darussalam",
2009,
"East Asia & Pacific",
391837,
77.79792683,
833.6900102
],
[
"Bulgaria",
2009,
"Europe & Central Asia",
7585131,
73.41219512,
462.7499222
],
[
"Burkina Faso",
2009,
"Sub-Saharan Africa",
15984479,
54.46604878,
38.77346279
],
[
"Burundi",
2009,
"Sub-Saharan Africa",
8170853,
49.42126829,
19.95282351
],
[
"Cambodia",
2009,
"East Asia & Pacific",
13977903,
62.07219512,
47.20393916
],
[
"Cameroon",
2009,
"Sub-Saharan Africa",
19175028,
50.58292683,
60.41218882
],
[
"Canada",
2009,
"North America",
33726915,
80.66178049,
4522.483828
],
[
"Cape Verde",
2009,
"Sub-Saharan Africa",
491621,
73.58680488,
147.7241883
],
[
"Central African Republic",
2009,
"Sub-Saharan Africa",
4318128,
46.88370732,
16.41526539
],
[
"Chad",
2009,
"Sub-Saharan Africa",
10937089,
48.88531707,
28.44284012
],
[
"Chile",
2009,
"Latin America & Caribbean",
16955737,
78.76270732,
782.3042229
],
[
"China",
2009,
"East Asia & Pacific",
1331260000,
73.0565122,
191.2824584
],
[
"Colombia",
2009,
"Latin America & Caribbean",
45654044,
73.20997561,
360.9739273
],
[
"Comoros",
2009,
"Sub-Saharan Africa",
715774,
60.22907317,
29.61720469
],
[
"Congo, Dem. Rep.",
2009,
"Sub-Saharan Africa",
64204304,
47.79692683,
15.96661882
],
[
"Congo, Rep.",
2009,
"Sub-Saharan Africa",
3941454,
56.5587561,
55.14457398
],
[
"Costa Rica",
2009,
"Latin America & Caribbean",
4590790,
79.06917073,
660.4261765
],
[
"Cote d'Ivoire",
2009,
"Sub-Saharan Africa",
19350026,
54.05590244,
70.94074308
],
[
"Croatia",
2009,
"Europe & Central Asia",
4429000,
76.16829268,
1095.203048
],
[
"Cuba",
2009,
"Latin America & Caribbean",
11262628,
78.77321951,
650.5523633
],
[
"Cyprus",
2009,
"Europe & Central Asia",
1090473,
79.19695122,
2066.89422
],
[
"Czech Republic",
2009,
"Europe & Central Asia",
10487178,
77.07804878,
1494.456082
],
[
"Denmark",
2009,
"Europe & Central Asia",
5523095,
78.59756098,
6451.703536
],
[
"Djibouti",
2009,
"Middle East & North Africa",
872090,
57.14504878,
92.68621437
],
[
"Dominican Republic",
2009,
"Latin America & Caribbean",
9796852,
72.96197561,
258.2401499
],
[
"Ecuador",
2009,
"Latin America & Caribbean",
14261566,
75.30219512,
298.4485265
],
[
"Egypt, Arab Rep.",
2009,
"Middle East & North Africa",
79716203,
72.73412195,
117.9955658
],
[
"El Salvador",
2009,
"Latin America & Caribbean",
6160423,
71.52060976,
227.71171
],
[
"Equatorial Guinea",
2009,
"Sub-Saharan Africa",
681115,
50.5447561,
928.0539197
],
[
"Eritrea",
2009,
"Sub-Saharan Africa",
5097998,
60.55692683,
11.40494653
],
[
"Estonia",
2009,
"Europe & Central Asia",
1340271,
74.82439024,
1004.459146
],
[
"Ethiopia",
2009,
"Sub-Saharan Africa",
81187751,
58.11817073,
15.54771145
],
[
"Fiji",
2009,
"East Asia & Pacific",
852323,
69.10202439,
145.9251811
],
[
"Finland",
2009,
"Europe & Central Asia",
5338871,
79.7195122,
4113.189095
],
[
"France",
2009,
"Europe & Central Asia",
64720232,
81.06829268,
4764.539587
],
[
"Gabon",
2009,
"Sub-Saharan Africa",
1477514,
61.84912195,
273.415401
],
[
"Gambia, The",
2009,
"Sub-Saharan Africa",
1681734,
57.83821951,
25.60691022
],
[
"Georgia",
2009,
"Europe & Central Asia",
4410800,
73.14714634,
250.9573636
],
[
"Germany",
2009,
"Europe & Central Asia",
81902307,
79.83658537,
4723.76117
],
[
"Ghana",
2009,
"Sub-Saharan Africa",
23824402,
63.38817073,
54.19341778
],
[
"Greece",
2009,
"Europe & Central Asia",
11282760,
80.18780488,
3180.176521
],
[
"Grenada",
2009,
"Latin America & Caribbean",
104097,
75.49234146,
461.9720658
],
[
"Guatemala",
2009,
"Latin America & Caribbean",
14033623,
70.58463415,
189.7880591
],
[
"Guinea",
2009,
"Sub-Saharan Africa",
9761217,
53.16992683,
30.24476036
],
[
"Guinea-Bissau",
2009,
"Sub-Saharan Africa",
1484120,
47.3132439,
36.90501963
],
[
"Guyana",
2009,
"Latin America & Caribbean",
753013,
69.19787805,
173.0377056
],
[
"Haiti",
2009,
"Latin America & Caribbean",
9864241,
61.43468293,
42.36906091
],
[
"Honduras",
2009,
"Latin America & Caribbean",
7449923,
72.532,
173.1055604
],
[
"Hungary",
2009,
"Europe & Central Asia",
10022650,
73.90487805,
977.4969517
],
[
"Iceland",
2009,
"Europe & Central Asia",
318499,
81.75121951,
3657.257599
],
[
"India",
2009,
"South Asia",
1207740408,
64.77856098,
43.59120015
],
[
"Indonesia",
2009,
"East Asia & Pacific",
237414495,
68.47097561,
64.99271658
],
[
"Iran, Islamic Rep.",
2009,
"Middle East & North Africa",
73137148,
72.49207317,
289.7594223
],
[
"Iraq",
2009,
"Middle East & North Africa",
31090763,
68.0915122,
200.4141833
],
[
"Ireland",
2009,
"Europe & Central Asia",
4458942,
79.88780488,
4713.57134
],
[
"Israel",
2009,
"Middle East & North Africa",
7485600,
81.40487805,
1997.898408
],
[
"Italy",
2009,
"Europe & Central Asia",
60192698,
81.38536585,
3323.340575
],
[
"Jamaica",
2009,
"Latin America & Caribbean",
2695600,
72.59465854,
230.0655058
],
[
"Japan",
2009,
"East Asia & Pacific",
127557958,
82.93146341,
3735.939351
],
[
"Jordan",
2009,
"Middle East & North Africa",
5915000,
73.15095122,
377.2493801
],
[
"Kazakhstan",
2009,
"Europe & Central Asia",
16093481,
68.42926829,
325.8709875
],
[
"Kenya",
2009,
"Sub-Saharan Africa",
39462188,
55.83936585,
35.8384555
],
[
"Korea, Rep.",
2009,
"East Asia & Pacific",
49182000,
80.29731707,
1173.749812
],
[
"Kuwait",
2009,
"Middle East & North Africa",
2646286,
74.48756098,
1579.928129
],
[
"Kyrgyz Republic",
2009,
"Europe & Central Asia",
5383300,
69.10243902,
60.4615506
],
[
"Lao PDR",
2009,
"East Asia & Pacific",
6112143,
66.6515122,
34.45943197
],
[
"Latvia",
2009,
"Europe & Central Asia",
2254834,
73.0804878,
784.0887534
],
[
"Lebanon",
2009,
"Middle East & North Africa",
4196990,
72.22978049,
589.2156078
],
[
"Lesotho",
2009,
"Sub-Saharan Africa",
2149201,
46.66936585,
83.23284622
],
[
"Liberia",
2009,
"Sub-Saharan Africa",
3835929,
55.47919512,
41.44821012
],
[
"Libya",
2009,
"Middle East & North Africa",
6262667,
74.54556098,
344.5654841
],
[
"Lithuania",
2009,
"Europe & Central Asia",
3339456,
72.91463415,
835.7187761
],
[
"Luxembourg",
2009,
"Europe & Central Asia",
497783,
80.63658537,
8262.379612
],
[
"Macedonia, FYR",
2009,
"Europe & Central Asia",
2056769,
74.44387805,
296.9186626
],
[
"Madagascar",
2009,
"Sub-Saharan Africa",
20124150,
66.19136585,
15.64484428
],
[
"Malawi",
2009,
"Sub-Saharan Africa",
14442290,
52.68095122,
28.98891911
],
[
"Malaysia",
2009,
"East Asia & Pacific",
27949395,
73.79080488,
316.5221427
],
[
"Maldives",
2009,
"South Asia",
311739,
76.19565854,
489.5185
],
[
"Mali",
2009,
"Sub-Saharan Africa",
14909813,
50.53604878,
41.17896466
],
[
"Malta",
2009,
"Middle East & North Africa",
413991,
79.89268293,
1664.384849
],
[
"Mauritania",
2009,
"Sub-Saharan Africa",
3377630,
57.91963415,
48.09352458
],
[
"Mauritius",
2009,
"Sub-Saharan Africa",
1275032,
72.88243902,
388.6444557
],
[
"Mexico",
2009,
"Latin America & Caribbean",
112033369,
76.46556098,
525.7222727
],
[
"Micronesia, Fed. Sts.",
2009,
"East Asia & Pacific",
110676,
68.58304878,
335.8728114
],
[
"Moldova",
2009,
"Europe & Central Asia",
3565603,
68.61143902,
190.4330986
],
[
"Mongolia",
2009,
"East Asia & Pacific",
2711659,
67.86412195,
97.93877757
],
[
"Montenegro",
2009,
"Europe & Central Asia",
630435,
74.15007317,
621.2344287
],
[
"Morocco",
2009,
"Middle East & North Africa",
31634524,
71.58941463,
162.2295098
],
[
"Mozambique",
2009,
"Sub-Saharan Africa",
22858607,
49.27802439,
26.43197978
],
[
"Myanmar",
2009,
"East Asia & Pacific",
47601374,
64.1995122,
14.2411315
],
[
"Namibia",
2009,
"Sub-Saharan Africa",
2242078,
61.61858537,
278.475674
],
[
"Nepal",
2009,
"South Asia",
29432743,
68.00168293,
23.78145003
],
[
"Netherlands",
2009,
"Europe & Central Asia",
16530388,
80.54878049,
5766.064809
],
[
"New Zealand",
2009,
"East Asia & Pacific",
4315800,
80.70243902,
2701.929975
],
[
"Nicaragua",
2009,
"Latin America & Caribbean",
5710230,
73.43443902,
109.8926286
],
[
"Niger",
2009,
"Sub-Saharan Africa",
14972257,
53.81582927,
19.00263461
],
[
"Nigeria",
2009,
"Sub-Saharan Africa",
154488072,
50.94941463,
74.38236593
],
[
"Norway",
2009,
"Europe & Central Asia",
4828726,
80.79512195,
7592.895653
],
[
"Oman",
2009,
"Middle East & North Africa",
2712141,
73.00409756,
511.1986165
],
[
"Pakistan",
2009,
"South Asia",
170494367,
64.95521951,
26.32283237
],
[
"Panama",
2009,
"Latin America & Caribbean",
3461901,
75.8012439,
564.8851756
],
[
"Papua New Guinea",
2009,
"East Asia & Pacific",
6703361,
62.07390244,
49.97848014
],
[
"Paraguay",
2009,
"Latin America & Caribbean",
6341892,
72.06831707,
187.5949396
],
[
"Peru",
2009,
"Latin America & Caribbean",
28765162,
73.54307317,
235.7661264
],
[
"Philippines",
2009,
"East Asia & Pacific",
91703090,
68.2255122,
76.5542007
],
[
"Poland",
2009,
"Europe & Central Asia",
38151603,
75.69512195,
814.6296652
],
[
"Portugal",
2009,
"Europe & Central Asia",
10632482,
78.72682927,
2381.085737
],
[
"Qatar",
2009,
"Middle East & North Africa",
1597765,
77.93919512,
1612.145098
],
[
"Romania",
2009,
"Europe & Central Asia",
21480401,
73.3097561,
431.4224542
],
[
"Russian Federation",
2009,
"Europe & Central Asia",
141910000,
68.60487805,
527.2319621
],
[
"Rwanda",
2009,
"Sub-Saharan Africa",
10311275,
54.66580488,
51.07412065
],
[
"Samoa",
2009,
"East Asia & Pacific",
182401,
72.06356098,
153.8901905
],
[
"San Marino",
2009,
"Europe & Central Asia",
31359,
82.99554324,
3559.068771
],
[
"Sao Tome and Principe",
2009,
"Sub-Saharan Africa",
162515,
64.10753659,
100.6326906
],
[
"Saudi Arabia",
2009,
"Middle East & North Africa",
26809105,
73.63217073,
575.8944585
],
[
"Senegal",
2009,
"Sub-Saharan Africa",
12106865,
58.63231707,
60.43637774
],
[
"Serbia",
2009,
"Europe & Central Asia",
7320807,
73.68536585,
576.5124281
],
[
"Seychelles",
2009,
"Sub-Saharan Africa",
87298,
73.03414634,
297.8241965
],
[
"Sierra Leone",
2009,
"Sub-Saharan Africa",
5739293,
46.95768293,
72.27930659
],
[
"Singapore",
2009,
"East Asia & Pacific",
4987600,
81.24146341,
1771.892551
],
[
"Slovak Republic",
2009,
"Europe & Central Asia",
5418590,
74.9097561,
1473.58743
],
[
"Slovenia",
2009,
"Europe & Central Asia",
2039669,
78.97073171,
2231.492329
],
[
"Solomon Islands",
2009,
"East Asia & Pacific",
524125,
67.06712195,
90.06974446
],
[
"South Africa",
2009,
"Sub-Saharan Africa",
49320150,
51.61131707,
495.3104565
],
[
"Spain",
2009,
"Europe & Central Asia",
45908594,
81.47560976,
3051.604966
],
[
"Sri Lanka",
2009,
"South Asia",
20450000,
74.56660976,
70.79479431
],
[
"St. Lucia",
2009,
"Latin America & Caribbean",
172370,
74.23807317,
525.3694813
],
[
"St. Vincent and the Grenadines",
2009,
"Latin America & Caribbean",
109269,
71.92126829,
316.6982319
],
[
"Sudan",
2009,
"Sub-Saharan Africa",
32970881,
60.78546341,
92.52103509
],
[
"Suriname",
2009,
"Latin America & Caribbean",
519861,
70.06702439,
447.052812
],
[
"Swaziland",
2009,
"Sub-Saharan Africa",
1043509,
47.88882927,
220.2134211
],
[
"Sweden",
2009,
"Europe & Central Asia",
9298515,
81.35121951,
4337.087862
],
[
"Switzerland",
2009,
"Europe & Central Asia",
7743831,
82.04390244,
7184.224075
],
[
"Syrian Arab Republic",
2009,
"Middle East & North Africa",
20038112,
75.56034146,
95.44026999
],
[
"Tajikistan",
2009,
"Europe & Central Asia",
6783390,
66.96768293,
43.51709825
],
[
"Tanzania",
2009,
"Sub-Saharan Africa",
43524738,
56.58973171,
27.58928319
],
[
"Thailand",
2009,
"East Asia & Pacific",
68706122,
73.76802439,
160.1372017
],
[
"Timor-Leste",
2009,
"East Asia & Pacific",
1110071,
61.54217073,
49.34787922
],
[
"Togo",
2009,
"Sub-Saharan Africa",
5901859,
56.20280488,
38.54821121
],
[
"Tonga",
2009,
"East Asia & Pacific",
103519,
72.01387805,
145.1181276
],
[
"Trinidad and Tobago",
2009,
"Latin America & Caribbean",
1336349,
69.53609756,
934.5823475
],
[
"Tunisia",
2009,
"Middle East & North Africa",
10439600,
74.45121951,
242.0197721
],
[
"Turkey",
2009,
"Europe & Central Asia",
71846212,
73.42463415,
575.4213994
],
[
"Turkmenistan",
2009,
"Europe & Central Asia",
4979672,
64.75995122,
88.89967998
],
[
"Uganda",
2009,
"Sub-Saharan Africa",
32367909,
53.07058537,
42.81708785
],
[
"Ukraine",
2009,
"Europe & Central Asia",
46053300,
69.19,
200.0029235
],
[
"United Arab Emirates",
2009,
"Middle East & North Africa",
6938815,
76.39956098,
1695.768407
],
[
"United Kingdom",
2009,
"Europe & Central Asia",
61811027,
80.05121951,
3444.508244
],
[
"United States",
2009,
"North America",
306771529,
78.0902439,
7989.935964
],
[
"Uruguay",
2009,
"Latin America & Caribbean",
3344938,
76.11121951,
760.672066
],
[
"Uzbekistan",
2009,
"Europe & Central Asia",
27767400,
67.76470732,
70.73732414
],
[
"Vanuatu",
2009,
"East Asia & Pacific",
233790,
70.53502439,
132.0729381
],
[
"Venezuela, RB",
2009,
"Latin America & Caribbean",
28384000,
73.94243902,
666.9028145
],
[
"Vietnam",
2009,
"East Asia & Pacific",
86025000,
74.60558537,
78.55609353
],
[
"Yemen, Rep.",
2009,
"Middle East & North Africa",
23328214,
64.5937561,
70.60425303
],
[
"Zambia",
2009,
"Sub-Saharan Africa",
12723746,
47.81453659,
61.28114701
],
[
"Afghanistan",
2010,
"South Asia",
34385068,
48.28219512,
44.18755767
],
[
"Albania",
2010,
"Europe & Central Asia",
3204284,
76.90095122,
220.2285618
],
[
"Algeria",
2010,
"Middle East & North Africa",
35468208,
72.85253659,
198.1556376
],
[
"Angola",
2010,
"Sub-Saharan Africa",
19081912,
50.65365854,
146.1098503
],
[
"Argentina",
2010,
"Latin America & Caribbean",
40412376,
75.63214634,
759.2994333
],
[
"Armenia",
2010,
"Europe & Central Asia",
3092072,
73.78356098,
133.7855992
],
[
"Australia",
2010,
"East Asia & Pacific",
22065300,
81.69512195,
5173.502443
],
[
"Austria",
2010,
"Europe & Central Asia",
8389771,
80.38292683,
4964.154032
],
[
"Azerbaijan",
2010,
"Europe & Central Asia",
9054332,
70.5065122,
307.143758
],
[
"Bahamas, The",
2010,
"Latin America & Caribbean",
342877,
75.22212195,
1704.175024
],
[
"Bahrain",
2010,
"Middle East & North Africa",
1261835,
75.02382927,
747.5676034
],
[
"Bangladesh",
2010,
"South Asia",
148692131,
68.63480488,
24.76974672
],
[
"Barbados",
2010,
"Latin America & Caribbean",
273331,
76.57282927,
1003.432519
],
[
"Belarus",
2010,
"Europe & Central Asia",
9490000,
70.40487805,
319.6404007
],
[
"Belgium",
2010,
"Europe & Central Asia",
10895586,
80.23414634,
4548.253106
],
[
"Belize",
2010,
"Latin America & Caribbean",
344700,
75.83995122,
262.0861784
],
[
"Benin",
2010,
"Sub-Saharan Africa",
8849892,
55.58558537,
32.74173045
],
[
"Bhutan",
2010,
"South Asia",
725940,
66.90885366,
89.09907008
],
[
"Bolivia",
2010,
"Latin America & Caribbean",
9929849,
66.26856098,
108.2405534
],
[
"Bosnia and Herzegovina",
2010,
"Europe & Central Asia",
3760149,
75.40043902,
452.8535376
],
[
"Botswana",
2010,
"Sub-Saharan Africa",
2006945,
53.1095122,
382.0207748
],
[
"Brazil",
2010,
"Latin America & Caribbean",
194946470,
73.09953659,
990.2665826
],
[
"Brunei Darussalam",
2010,
"East Asia & Pacific",
398920,
77.93202439,
914.7369492
],
[
"Bulgaria",
2010,
"Europe & Central Asia",
7534289,
73.51219512,
480.1895778
],
[
"Burkina Faso",
2010,
"Sub-Saharan Africa",
16468714,
54.92419512,
39.09643151
],
[
"Burundi",
2010,
"Sub-Saharan Africa",
8382849,
49.87721951,
22.57734631
],
[
"Cambodia",
2010,
"East Asia & Pacific",
14138255,
62.53621951,
47.9756782
],
[
"Cameroon",
2010,
"Sub-Saharan Africa",
19598889,
51.0627561,
61.34140038
],
[
"Canada",
2010,
"North America",
34126547,
80.79780488,
5257.409923
],
[
"Cape Verde",
2010,
"Sub-Saharan Africa",
495999,
73.77404878,
144.7392528
],
[
"Central African Republic",
2010,
"Sub-Saharan Africa",
4401051,
47.61846341,
17.15777614
],
[
"Chad",
2010,
"Sub-Saharan Africa",
11227208,
49.19482927,
30.64455166
],
[
"Chile",
2010,
"Latin America & Caribbean",
17113688,
78.88573171,
932.5717268
],
[
"China",
2010,
"East Asia & Pacific",
1337705000,
73.27309756,
218.7801814
],
[
"Colombia",
2010,
"Latin America & Caribbean",
46294841,
73.42968293,
407.2042206
],
[
"Comoros",
2010,
"Sub-Saharan Africa",
734750,
60.62626829,
39.06400434
],
[
"Congo, Dem. Rep.",
2010,
"Sub-Saharan Africa",
65965795,
48.06958537,
14.85547976
],
[
"Congo, Rep.",
2010,
"Sub-Saharan Africa",
4042899,
56.96019512,
68.10026466
],
[
"Costa Rica",
2010,
"Latin America & Caribbean",
4658887,
79.19260976,
802.1360128
],
[
"Cote d'Ivoire",
2010,
"Sub-Saharan Africa",
19737800,
54.74156098,
70.81381365
],
[
"Croatia",
2010,
"Europe & Central Asia",
4418000,
76.47560976,
1050.689577
],
[
"Cuba",
2010,
"Latin America & Caribbean",
11257979,
78.96414634,
583.371882
],
[
"Cyprus",
2010,
"Europe & Central Asia",
1103647,
79.38039024,
2011.790843
],
[
"Czech Republic",
2010,
"Europe & Central Asia",
10519792,
77.42439024,
1402.636017
],
[
"Denmark",
2010,
"Europe & Central Asia",
5547683,
79.1,
6253.248582
],
[
"Djibouti",
2010,
"Middle East & North Africa",
888716,
57.52739024,
99.0097519
],
[
"Dominican Republic",
2010,
"Latin America & Caribbean",
9927320,
73.20002439,
280.5456467
],
[
"Ecuador",
2010,
"Latin America & Caribbean",
14464739,
75.46229268,
318.4353037
],
[
"Egypt, Arab Rep.",
2010,
"Middle East & North Africa",
81121077,
72.97526829,
125.2886577
],
[
"El Salvador",
2010,
"Latin America & Caribbean",
6192993,
71.73236585,
237.5749496
],
[
"Equatorial Guinea",
2010,
"Sub-Saharan Africa",
700401,
50.84080488,
846.513873
],
[
"Eritrea",
2010,
"Sub-Saharan Africa",
5253676,
60.99419512,
12.71147579
],
[
"Estonia",
2010,
"Europe & Central Asia",
1340161,
75.42926829,
897.8908241
],
[
"Ethiopia",
2010,
"Sub-Saharan Africa",
82949541,
58.71509756,
15.49539161
],
[
"Fiji",
2010,
"East Asia & Pacific",
860623,
69.22582927,
154.7707553
],
[
"Finland",
2010,
"Europe & Central Asia",
5363352,
79.87073171,
3955.189649
],
[
"France",
2010,
"Europe & Central Asia",
65075569,
81.36829268,
4618.458145
],
[
"Gabon",
2010,
"Sub-Saharan Africa",
1505463,
62.28668293,
308.6692567
],
[
"Gambia, The",
2010,
"Sub-Saharan Africa",
1728394,
58.16002439,
26.84174636
],
[
"Georgia",
2010,
"Europe & Central Asia",
4452800,
73.32734146,
271.6254716
],
[
"Germany",
2010,
"Europe & Central Asia",
81776930,
79.98780488,
4654.009456
],
[
"Ghana",
2010,
"Sub-Saharan Africa",
24391823,
63.83726829,
68.5271628
],
[
"Greece",
2010,
"Europe & Central Asia",
11315508,
80.38780488,
2872.730798
],
[
"Grenada",
2010,
"Latin America & Caribbean",
104487,
75.66043902,
438.4120364
],
[
"Guatemala",
2010,
"Latin America & Caribbean",
14388929,
70.82541463,
196.8998609
],
[
"Guinea",
2010,
"Sub-Saharan Africa",
9981590,
53.63858537,
29.41280344
],
[
"Guinea-Bissau",
2010,
"Sub-Saharan Africa",
1515224,
47.70065854,
38.21673343
],
[
"Guyana",
2010,
"Latin America & Caribbean",
754493,
69.54914634,
168.5663604
],
[
"Haiti",
2010,
"Latin America & Caribbean",
9993247,
61.763,
45.56015949
],
[
"Honduras",
2010,
"Latin America & Caribbean",
7600524,
72.82592683,
176.4281163
],
[
"Hungary",
2010,
"Europe & Central Asia",
10000023,
74.20731707,
1002.03141
],
[
"Iceland",
2010,
"Europe & Central Asia",
318041,
81.89756098,
3667.511161
],
[
"India",
2010,
"South Asia",
1224614327,
65.13134146,
51.35615469
],
[
"Indonesia",
2010,
"East Asia & Pacific",
239870937,
68.88965854,
84.06421374
],
[
"Iran, Islamic Rep.",
2010,
"Middle East & North Africa",
73973630,
72.75185366,
302.0277145
],
[
"Iraq",
2010,
"Middle East & North Africa",
32030823,
68.48604878,
246.7526977
],
[
"Ireland",
2010,
"Europe & Central Asia",
4474356,
80.89512195,
4241.637945
],
[
"Israel",
2010,
"Middle East & North Africa",
7623600,
81.60243902,
2197.896642
],
[
"Italy",
2010,
"Europe & Central Asia",
60483385,
81.73658537,
3246.847039
],
[
"Jamaica",
2010,
"Latin America & Caribbean",
2701200,
72.84712195,
258.6459405
],
[
"Japan",
2010,
"East Asia & Pacific",
127450459,
82.84268293,
3958.467531
],
[
"Jordan",
2010,
"Middle East & North Africa",
6047000,
73.28965854,
370.0103358
],
[
"Kazakhstan",
2010,
"Europe & Central Asia",
16323287,
68.29536585,
395.0648173
],
[
"Kenya",
2010,
"Sub-Saharan Africa",
40512682,
56.49707317,
34.85764894
],
[
"Korea, Rep.",
2010,
"East Asia & Pacific",
49410000,
80.56585366,
1451.775175
],
[
"Kuwait",
2010,
"Middle East & North Africa",
2736732,
74.60473171,
1224.97489
],
[
"Kyrgyz Republic",
2010,
"Europe & Central Asia",
5447900,
69.3,
59.83553423
],
[
"Lao PDR",
2010,
"East Asia & Pacific",
6200894,
67.064,
30.3059985
],
[
"Latvia",
2010,
"Europe & Central Asia",
2239008,
73.48292683,
762.1586536
],
[
"Lebanon",
2010,
"Middle East & North Africa",
4227597,
72.4087561,
574.2819957
],
[
"Lesotho",
2010,
"Sub-Saharan Africa",
2171318,
47.36507317,
115.7164406
],
[
"Liberia",
2010,
"Sub-Saharan Africa",
3994122,
56.14758537,
40.63750055
],
[
"Libya",
2010,
"Middle East & North Africa",
6355112,
74.75312195,
388.791449
],
[
"Lithuania",
2010,
"Europe & Central Asia",
3286820,
73.26829268,
782.0235752
],
[
"Luxembourg",
2010,
"Europe & Central Asia",
506953,
80.63170732,
8193.487867
],
[
"Macedonia, FYR",
2010,
"Europe & Central Asia",
2060563,
74.61885366,
299.5020073
],
[
"Madagascar",
2010,
"Sub-Saharan Africa",
20713819,
66.46707317,
15.08365292
],
[
"Malawi",
2010,
"Sub-Saharan Africa",
14900841,
53.46263415,
28.46863766
],
[
"Malaysia",
2010,
"East Asia & Pacific",
28401017,
74.02456098,
367.9636542
],
[
"Maldives",
2010,
"South Asia",
315885,
76.55141463,
408.8470824
],
[
"Mali",
2010,
"Sub-Saharan Africa",
15369809,
50.95482927,
39.48080017
],
[
"Malta",
2010,
"Middle East & North Africa",
415995,
80.94878049,
1706.469864
],
[
"Mauritania",
2010,
"Sub-Saharan Africa",
3459773,
58.21695122,
58.90978473
],
[
"Mauritius",
2010,
"Sub-Saharan Africa",
1280924,
72.96731707,
464.7699997
],
[
"Mexico",
2010,
"Latin America & Caribbean",
113423047,
76.68378049,
603.356072
],
[
"Micronesia, Fed. Sts.",
2010,
"East Asia & Pacific",
111064,
68.76482927,
365.4735611
],
[
"Moldova",
2010,
"Europe & Central Asia",
3562062,
68.90370732,
190.425316
],
[
"Mongolia",
2010,
"East Asia & Pacific",
2756001,
68.19497561,
123.9652046
],
[
"Montenegro",
2010,
"Europe & Central Asia",
631490,
74.31109756,
583.8900435
],
[
"Morocco",
2010,
"Middle East & North Africa",
31951412,
71.86463415,
166.3969849
],
[
"Mozambique",
2010,
"Sub-Saharan Africa",
23390765,
49.69692683,
24.70825629
],
[
"Myanmar",
2010,
"East Asia & Pacific",
47963012,
64.66209756,
17.33110903
],
[
"Namibia",
2010,
"Sub-Saharan Africa",
2283289,
62.07009756,
269.431485
],
[
"Nepal",
2010,
"South Asia",
29959364,
68.39482927,
27.55314463
],
[
"Netherlands",
2010,
"Europe & Central Asia",
16615394,
80.70243902,
5683.063435
],
[
"New Zealand",
2010,
"East Asia & Pacific",
4367800,
80.70243902,
3266.817968
],
[
"Nicaragua",
2010,
"Latin America & Caribbean",
5788163,
73.72921951,
113.0850586
],
[
"Niger",
2010,
"Sub-Saharan Africa",
15511953,
54.26563415,
17.40364302
],
[
"Nigeria",
2010,
"Sub-Saharan Africa",
158423182,
51.41002439,
67.11868541
],
[
"Norway",
2010,
"Europe & Central Asia",
4889252,
80.99756098,
8038.694586
],
[
"Oman",
2010,
"Middle East & North Africa",
2782435,
73.12460976,
568.3341593
],
[
"Pakistan",
2010,
"South Asia",
173593383,
65.19885366,
28.03580786
],
[
"Panama",
2010,
"Latin America & Caribbean",
3516820,
75.9742439,
662.6548885
],
[
"Papua New Guinea",
2010,
"East Asia & Pacific",
6858266,
62.44060976,
56.73072022
],
[
"Paraguay",
2010,
"Latin America & Caribbean",
6454548,
72.277,
271.6098444
],
[
"Peru",
2010,
"Latin America & Caribbean",
29076512,
73.76497561,
258.1617078
],
[
"Philippines",
2010,
"East Asia & Pacific",
93260798,
68.48431707,
88.74407102
],
[
"Poland",
2010,
"Europe & Central Asia",
38183683,
76.24634146,
851.0791379
],
[
"Portugal",
2010,
"Europe & Central Asia",
10637346,
79.02682927,
2305.872722
],
[
"Qatar",
2010,
"Middle East & North Africa",
1758793,
78.09758537,
1488.595797
],
[
"Romania",
2010,
"Europe & Central Asia",
21438001,
73.45853659,
457.2307647
],
[
"Russian Federation",
2010,
"Europe & Central Asia",
142389000,
68.80487805,
670.3640455
],
[
"Rwanda",
2010,
"Sub-Saharan Africa",
10624005,
55.05712195,
55.22403979
],
[
"Samoa",
2010,
"East Asia & Pacific",
183081,
72.30639024,
204.0746573
],
[
"San Marino",
2010,
"Europe & Central Asia",
31534,
83.15937916,
3386.97909
],
[
"Sao Tome and Principe",
2010,
"Sub-Saharan Africa",
165397,
64.34929268,
94.13270702
],
[
"Saudi Arabia",
2010,
"Middle East & North Africa",
27448086,
73.85041463,
658.9520417
],
[
"Senegal",
2010,
"Sub-Saharan Africa",
12433728,
58.95407317,
59.5772784
],
[
"Serbia",
2010,
"Europe & Central Asia",
7291436,
73.93658537,
546.0264001
],
[
"Seychelles",
2010,
"Sub-Saharan Africa",
86525,
73.45609756,
368.1420211
],
[
"Sierra Leone",
2010,
"Sub-Saharan Africa",
5867536,
47.40219512,
67.73178528
],
[
"Singapore",
2010,
"East Asia & Pacific",
5076700,
81.54146341,
2004.787653
],
[
"Slovak Republic",
2010,
"Europe & Central Asia",
5430099,
75.11219512,
1445.142849
],
[
"Slovenia",
2010,
"Europe & Central Asia",
2048583,
79.42195122,
2064.487017
],
[
"Solomon Islands",
2010,
"East Asia & Pacific",
538148,
67.46519512,
93.43990154
],
[
"South Africa",
2010,
"Sub-Saharan Africa",
49991300,
52.0814878,
630.926093
],
[
"Spain",
2010,
"Europe & Central Asia",
46070971,
81.62682927,
2895.928746
],
[
"Sri Lanka",
2010,
"South Asia",
20653000,
74.72260976,
82.03527924
],
[
"St. Lucia",
2010,
"Latin America & Caribbean",
174000,
74.43990244,
527.9501329
],
[
"St. Vincent and the Grenadines",
2010,
"Latin America & Caribbean",
109333,
72.11253659,
292.9073293
],
[
"Sudan",
2010,
"Sub-Saharan Africa",
33603637,
61.1082439,
110.7765254
],
[
"Suriname",
2010,
"Latin America & Caribbean",
524636,
70.33531707,
472.0516443
],
[
"Swaziland",
2010,
"Sub-Saharan Africa",
1055506,
48.34280488,
242.6825464
],
[
"Sweden",
2010,
"Europe & Central Asia",
9378126,
81.45121951,
4708.388906
],
[
"Switzerland",
2010,
"Europe & Central Asia",
7824909,
82.24634146,
7699.161783
],
[
"Syrian Arab Republic",
2010,
"Middle East & North Africa",
20446609,
75.70256098,
96.58501045
],
[
"Tajikistan",
2010,
"Europe & Central Asia",
6878637,
67.25990244,
49.06823121
],
[
"Tanzania",
2010,
"Sub-Saharan Africa",
44841226,
57.3874878,
36.7589653
],
[
"Thailand",
2010,
"East Asia & Pacific",
69122234,
73.92765854,
179.1481965
],
[
"Timor-Leste",
2010,
"East Asia & Pacific",
1142502,
61.99985366,
44.68038609
],
[
"Togo",
2010,
"Sub-Saharan Africa",
6027798,
56.58870732,
39.11017399
],
[
"Tonga",
2010,
"East Asia & Pacific",
104058,
72.15065854,
172.2227015
],
[
"Trinidad and Tobago",
2010,
"Latin America & Caribbean",
1341465,
69.755,
976.5431982
],
[
"Tunisia",
2010,
"Middle East & North Africa",
10549100,
74.60243902,
241.3649283
],
[
"Turkey",
2010,
"Europe & Central Asia",
72752325,
73.69665854,
668.3650473
],
[
"Turkmenistan",
2010,
"Europe & Central Asia",
5041995,
64.8635122,
105.3740844
],
[
"Uganda",
2010,
"Sub-Saharan Africa",
33424683,
53.61463415,
44.00649717
],
[
"Ukraine",
2010,
"Europe & Central Asia",
45870700,
70.27560976,
234.353668
],
[
"United Arab Emirates",
2010,
"Middle East & North Africa",
7511690,
76.57360976,
1467.48791
],
[
"United Kingdom",
2010,
"Europe & Central Asia",
62262786,
80.40243902,
3494.731159
],
[
"United States",
2010,
"North America",
309349689,
78.54146341,
8232.875307
],
[
"Uruguay",
2010,
"Latin America & Caribbean",
3356584,
76.23682927,
947.7013153
],
[
"Uzbekistan",
2010,
"Europe & Central Asia",
28562400,
68.001,
79.92301058
],
[
"Vanuatu",
2010,
"East Asia & Pacific",
239651,
70.8194878,
149.2207621
],
[
"Venezuela, RB",
2010,
"Latin America & Caribbean",
28834000,
74.12731707,
719.5377285
],
[
"Vietnam",
2010,
"East Asia & Pacific",
86932500,
74.8282439,
82.78788554
],
[
"Yemen, Rep.",
2010,
"Middle East & North Africa",
24052514,
65.03046341,
79.94274913
],
[
"Zambia",
2010,
"Sub-Saharan Africa",
12926409,
48.4554878,
73.84426272
],
[
"Afghanistan",
2011,
"South Asia",
35320445,
48.68058537,
55.93483055
],
[
"Albania",
2011,
"Europe & Central Asia",
3215988,
77.04226829,
254.640384
],
[
"Algeria",
2011,
"Middle East & North Africa",
35980193,
73.07990244,
224.8231496
],
[
"Angola",
2011,
"Sub-Saharan Africa",
19618432,
51.05931707,
186.2564865
],
[
"Argentina",
2011,
"Latin America & Caribbean",
40764561,
75.79765854,
891.804497
],
[
"Armenia",
2011,
"Europe & Central Asia",
3100236,
73.91602439,
141.509592
],
[
"Australia",
2011,
"East Asia & Pacific",
22323900,
81.84634146,
5938.645599
],
[
"Austria",
2011,
"Europe & Central Asia",
8423635,
81.03170732,
5280.404359
],
[
"Azerbaijan",
2011,
"Europe & Central Asia",
9173082,
70.65285366,
356.923203
],
[
"Bahamas, The",
2011,
"Latin America & Caribbean",
347176,
75.45226829,
1722.98675
],
[
"Bahrain",
2011,
"Middle East & North Africa",
1323535,
75.15626829,
739.7077538
],
[
"Bangladesh",
2011,
"South Asia",
150493658,
68.93736585,
26.54390242
],
[
"Barbados",
2011,
"Latin America & Caribbean",
273925,
76.73921951,
1030.720031
],
[
"Belarus",
2011,
"Europe & Central Asia",
9473000,
70.65121951,
307.0540334
],
[
"Belgium",
2011,
"Europe & Central Asia",
11020952,
80.48536585,
4962.476878
],
[
"Belize",
2011,
"Latin America & Caribbean",
356600,
76.05290244,
262.1685759
],
[
"Benin",
2011,
"Sub-Saharan Africa",
9099922,
56.01443902,
36.70154249
],
[
"Bhutan",
2011,
"South Asia",
738267,
67.28470732,
93.01410362
],
[
"Bolivia",
2011,
"Latin America & Caribbean",
10088108,
66.57736585,
118.1245745
],
[
"Bosnia and Herzegovina",
2011,
"Europe & Central Asia",
3752228,
75.55285366,
492.6148699
],
[
"Botswana",
2011,
"Sub-Saharan Africa",
2030738,
53.0184878,
431.9145981
],
[
"Brazil",
2011,
"Latin America & Caribbean",
196655014,
73.43521951,
1120.555569
],
[
"Brunei Darussalam",
2011,
"East Asia & Pacific",
405938,
78.06512195,
993.4198655
],
[
"Bulgaria",
2011,
"Europe & Central Asia",
7348328,
74.16341463,
521.5292163
],
[
"Burkina Faso",
2011,
"Sub-Saharan Africa",
16967845,
55.35790244,
37.20643416
],
[
"Burundi",
2011,
"Sub-Saharan Africa",
8575172,
50.33709756,
23.36678817
],
[
"Cambodia",
2011,
"East Asia & Pacific",
14305183,
62.97741463,
51.21334429
],
[
"Cameroon",
2011,
"Sub-Saharan Africa",
20030362,
51.57646341,
68.23624319
],
[
"Canada",
2011,
"North America",
34483975,
80.9292439,
5629.726739
],
[
"Cape Verde",
2011,
"Sub-Saharan Africa",
500585,
73.91678049,
158.00302
],
[
"Central African Republic",
2011,
"Sub-Saharan Africa",
4486837,
48.34560976,
18.28159991
],
[
"Chad",
2011,
"Sub-Saharan Africa",
11525496,
49.52326829,
35.20264896
],
[
"Chile",
2011,
"Latin America & Caribbean",
17269525,
79.0167561,
1074.515221
],
[
"China",
2011,
"East Asia & Pacific",
1344130000,
73.48563415,
278.021295
],
[
"Colombia",
2011,
"Latin America & Caribbean",
46927125,
73.64190244,
431.9543077
],
[
"Comoros",
2011,
"Sub-Saharan Africa",
753943,
61.04178049,
42.54961719
],
[
"Congo, Dem. Rep.",
2011,
"Sub-Saharan Africa",
67757577,
48.36931707,
19.7316965
],
[
"Congo, Rep.",
2011,
"Sub-Saharan Africa",
4139748,
57.35619512,
87.37980795
],
[
"Costa Rica",
2011,
"Latin America & Caribbean",
4726575,
79.31509756,
942.870293
],
[
"Cote d'Ivoire",
2011,
"Sub-Saharan Africa",
20152894,
55.4212439,
79.42875358
],
[
"Croatia",
2011,
"Europe & Central Asia",
4403000,
76.87560976,
1137.935898
],
[
"Cuba",
2011,
"Latin America & Caribbean",
11253665,
79.12563415,
606.0802764
],
[
"Cyprus",
2011,
"Europe & Central Asia",
1116564,
79.56285366,
2123.186467
],
[
"Czech Republic",
2011,
"Europe & Central Asia",
10496088,
77.87317073,
1506.906354
],
[
"Denmark",
2011,
"Europe & Central Asia",
5570572,
79.8,
6647.72432
],
[
"Djibouti",
2011,
"Middle East & North Africa",
905564,
57.90917073,
105.1983178
],
[
"Dominican Republic",
2011,
"Latin America & Caribbean",
10056181,
73.4375122,
295.6880921
],
[
"Ecuador",
2011,
"Latin America & Caribbean",
14666055,
75.63039024,
331.5144939
],
[
"Egypt, Arab Rep.",
2011,
"Middle East & North Africa",
82536770,
73.20190244,
136.5764367
],
[
"El Salvador",
2011,
"Latin America & Caribbean",
6227491,
71.94514634,
251.1445624
],
[
"Equatorial Guinea",
2011,
"Sub-Saharan Africa",
720213,
51.13687805,
1236.14519
],
[
"Eritrea",
2011,
"Sub-Saharan Africa",
5415280,
61.41707317,
13.90215235
],
[
"Estonia",
2011,
"Europe & Central Asia",
1339928,
76.12682927,
986.8619099
],
[
"Ethiopia",
2011,
"Sub-Saharan Africa",
84734262,
59.24309756,
16.61212131
],
[
"Fiji",
2011,
"East Asia & Pacific",
868406,
69.34931707,
167.8423599
],
[
"Finland",
2011,
"Europe & Central Asia",
5388272,
80.47073171,
4325.464023
],
[
"France",
2011,
"Europe & Central Asia",
65433714,
81.66829268,
4952.002687
],
[
"Gabon",
2011,
"Sub-Saharan Africa",
1534262,
62.69129268,
358.2957317
],
[
"Gambia, The",
2011,
"Sub-Saharan Africa",
1776103,
58.48470732,
27.41435267
],
[
"Germany",
2011,
"Europe & Central Asia",
81797673,
80.74146341,
4874.993952
],
[
"Ghana",
2011,
"Sub-Saharan Africa",
24965816,
64.22431707,
75.01824965
],
[
"Greece",
2011,
"Europe & Central Asia",
11300410,
80.74390244,
2864.195583
],
[
"Grenada",
2011,
"Latin America & Caribbean",
104890,
75.82707317,
478.704911
],
[
"Guatemala",
2011,
"Latin America & Caribbean",
14757316,
71.07221951,
213.9411447
],
[
"Guinea",
2011,
"Sub-Saharan Africa",
10221808,
54.0922439,
29.73075363
],
[
"Guinea-Bissau",
2011,
"Sub-Saharan Africa",
1547061,
48.11258537,
37.1760234
],
[
"Guyana",
2011,
"Latin America & Caribbean",
756040,
69.8625122,
199.7889652
],
[
"Haiti",
2011,
"Latin America & Caribbean",
10123787,
62.06190244,
57.65941416
],
[
"Honduras",
2011,
"Latin America & Caribbean",
7754687,
73.11321951,
192.8565895
],
[
"Hungary",
2011,
"Europe & Central Asia",
9971727,
74.85853659,
1084.803502
],
[
"Iceland",
2011,
"Europe & Central Asia",
319014,
82.35853659,
3985.879602
],
[
"India",
2011,
"South Asia",
1241491960,
65.47826829,
59.10269985
],
[
"Indonesia",
2011,
"East Asia & Pacific",
242325638,
69.3192439,
94.99104839
],
[
"Iran, Islamic Rep.",
2011,
"Middle East & North Africa",
74798599,
72.99941463,
346.30983
],
[
"Iraq",
2011,
"Middle East & North Africa",
32961959,
68.9845122,
331.5914431
],
[
"Ireland",
2011,
"Europe & Central Asia",
4576317,
80.49512195,
4542.399862
],
[
"Israel",
2011,
"Middle East & North Africa",
7765900,
81.75609756,
2426.140354
],
[
"Italy",
2011,
"Europe & Central Asia",
60723603,
82.08780488,
3435.633028
],
[
"Jamaica",
2011,
"Latin America & Caribbean",
2706500,
73.07639024,
270.3806301
],
[
"Jordan",
2011,
"Middle East & North Africa",
6181000,
73.42887805,
392.1156799
],
[
"Kazakhstan",
2011,
"Europe & Central Asia",
16558676,
68.89341463,
454.9488504
],
[
"Kenya",
2011,
"Sub-Saharan Africa",
41609728,
57.08087805,
36.24655913
],
[
"Korea, Rep.",
2011,
"East Asia & Pacific",
49779000,
80.86585366,
1616.324562
],
[
"Kuwait",
2011,
"Middle East & North Africa",
2818042,
74.72834146,
1500.486581
],
[
"Kyrgyz Republic",
2011,
"Europe & Central Asia",
5514600,
69.60243902,
71.2541595
],
[
"Lao PDR",
2011,
"East Asia & Pacific",
6288037,
67.43236585,
36.73979439
],
[
"Latvia",
2011,
"Europe & Central Asia",
2058184,
73.57560976,
840.8783054
],
[
"Lebanon",
2011,
"Middle East & North Africa",
4259405,
72.58721951,
622.034511
],
[
"Lesotho",
2011,
"Sub-Saharan Africa",
2193843,
47.98373171,
141.1034534
],
[
"Liberia",
2011,
"Sub-Saharan Africa",
4128572,
56.74285366,
54.89786126
],
[
"Libya",
2011,
"Middle East & North Africa",
6422772,
74.95019512,
397.87885
],
[
"Lithuania",
2011,
"Europe & Central Asia",
3030173,
73.56341463,
875.3829665
],
[
"Luxembourg",
2011,
"Europe & Central Asia",
518252,
80.98780488,
8797.643273
],
[
"Macedonia, FYR",
2011,
"Europe & Central Asia",
2063893,
74.78807317,
333.7665299
],
[
"Madagascar",
2011,
"Sub-Saharan Africa",
21315135,
66.69568293,
18.98427964
],
[
"Malawi",
2011,
"Sub-Saharan Africa",
15380888,
54.13636585,
30.92533919
],
[
"Malaysia",
2011,
"East Asia & Pacific",
28859154,
74.26085366,
346.0052115
],
[
"Maldives",
2011,
"South Asia",
320081,
76.88290244,
544.7357902
],
[
"Mali",
2011,
"Sub-Saharan Africa",
15839538,
51.37207317,
44.57224449
],
[
"Mauritania",
2011,
"Sub-Saharan Africa",
3541540,
58.54670732,
57.70641911
],
[
"Mauritius",
2011,
"Sub-Saharan Africa",
1286051,
73.26682927,
510.0047091
],
[
"Mexico",
2011,
"Latin America & Caribbean",
114793341,
76.8895122,
619.617479
],
[
"Micronesia, Fed. Sts.",
2011,
"East Asia & Pacific",
111542,
68.94812195,
382.6216415
],
[
"Moldova",
2011,
"Europe & Central Asia",
3559000,
69.21246341,
223.5764875
],
[
"Mongolia",
2011,
"East Asia & Pacific",
2800114,
68.48817073,
160.7005347
],
[
"Montenegro",
2011,
"Europe & Central Asia",
632261,
74.50414634,
663.7079588
],
[
"Morocco",
2011,
"Middle East & North Africa",
32272974,
72.13190244,
185.8933578
],
[
"Mozambique",
2011,
"Sub-Saharan Africa",
23929708,
50.15060976,
35.21715223
],
[
"Myanmar",
2011,
"East Asia & Pacific",
48336763,
65.15017073,
22.53757956
],
[
"Namibia",
2011,
"Sub-Saharan Africa",
2324004,
62.33241463,
282.881507
],
[
"Nepal",
2011,
"South Asia",
30485798,
68.72592683,
33.00474145
],
[
"Netherlands",
2011,
"Europe & Central Asia",
16693074,
81.20487805,
5994.988981
],
[
"New Zealand",
2011,
"East Asia & Pacific",
4405200,
80.90487805,
3665.631965
],
[
"Nicaragua",
2011,
"Latin America & Caribbean",
5869859,
73.99609756,
124.9771079
],
[
"Niger",
2011,
"Sub-Saharan Africa",
16068994,
54.69092683,
20.1126977
],
[
"Nigeria",
2011,
"Sub-Saharan Africa",
162470737,
51.86312195,
79.56188641
],
[
"Norway",
2011,
"Europe & Central Asia",
4953088,
81.29512195,
8987.258478
],
[
"Oman",
2011,
"Middle East & North Africa",
2846145,
73.34180488,
598.164518
],
[
"Pakistan",
2011,
"South Asia",
176745364,
65.44890244,
29.70314417
],
[
"Panama",
2011,
"Latin America & Caribbean",
3571185,
76.14782927,
702.6019275
],
[
"Papua New Guinea",
2011,
"East Asia & Pacific",
7013829,
62.80080488,
78.87109943
],
[
"Paraguay",
2011,
"Latin America & Caribbean",
6568290,
72.48470732,
351.9052781
],
[
"Peru",
2011,
"Latin America & Caribbean",
29399817,
73.97636585,
288.9545898
],
[
"Philippines",
2011,
"East Asia & Pacific",
94852030,
68.75729268,
96.51169397
],
[
"Poland",
2011,
"Europe & Central Asia",
38534157,
76.74634146,
898.9781903
],
[
"Portugal",
2011,
"Europe & Central Asia",
10556999,
80.72195122,
2310.616129
],
[
"Qatar",
2011,
"Middle East & North Africa",
1870041,
78.24921951,
1775.978211
],
[
"Romania",
2011,
"Europe & Central Asia",
21384832,
74.51219512,
499.7196141
],
[
"Russian Federation",
2011,
"Europe & Central Asia",
142960000,
69.00487805,
806.7040633
],
[
"Rwanda",
2011,
"Sub-Saharan Africa",
10942950,
55.39458537,
62.71904216
],
[
"Samoa",
2011,
"East Asia & Pacific",
183874,
72.5432439,
248.3096586
],
[
"San Marino",
2011,
"Europe & Central Asia",
31735,
83.32321508,
3600.17836
],
[
"Sao Tome and Principe",
2011,
"Sub-Saharan Africa",
168526,
64.59204878,
117.440958
],
[
"Saudi Arabia",
2011,
"Middle East & North Africa",
28082541,
74.05836585,
757.7178666
],
[
"Senegal",
2011,
"Sub-Saharan Africa",
12767556,
59.27219512,
66.97238283
],
[
"Serbia",
2011,
"Europe & Central Asia",
7258745,
74.58536585,
622.0537667
],
[
"Seychelles",
2011,
"Sub-Saharan Africa",
86000,
73.45609756,
438.5623021
],
[
"Sierra Leone",
2011,
"Sub-Saharan Africa",
5997486,
47.77636585,
68.54460848
],
[
"Singapore",
2011,
"East Asia & Pacific",
5183700,
81.89268293,
2286.378387
],
[
"Slovak Republic",
2011,
"Europe & Central Asia",
5398384,
75.95853659,
1533.830711
],
[
"Slovenia",
2011,
"Europe & Central Asia",
2052843,
79.97073171,
2218.499941
],
[
"Solomon Islands",
2011,
"East Asia & Pacific",
552267,
67.86331707,
133.9894477
],
[
"South Africa",
2011,
"Sub-Saharan Africa",
50586757,
52.61478049,
689.2723278
],
[
"Spain",
2011,
"Europe & Central Asia",
46174601,
82.32682927,
3026.653212
],
[
"Sri Lanka",
2011,
"South Asia",
20869000,
74.90197561,
96.55183249
],
[
"St. Lucia",
2011,
"Latin America & Caribbean",
176000,
74.611,
503.4238748
],
[
"St. Vincent and the Grenadines",
2011,
"Latin America & Caribbean",
109365,
72.29541463,
309.9962003
],
[
"Sudan",
2011,
"Sub-Saharan Africa",
34318385,
61.44773171,
103.5297028
],
[
"Suriname",
2011,
"Latin America & Caribbean",
529419,
70.58060976,
459.001732
],
[
"Swaziland",
2011,
"Sub-Saharan Africa",
1067773,
48.65892683,
264.8108064
],
[
"Sweden",
2011,
"Europe & Central Asia",
9449213,
81.80243902,
5330.774723
],
[
"Switzerland",
2011,
"Europe & Central Asia",
7912398,
82.69512195,
9120.810167
],
[
"Syrian Arab Republic",
2011,
"Middle East & North Africa",
20820311,
75.84380488,
101.055021
],
[
"Tajikistan",
2011,
"Europe & Central Asia",
6976958,
67.53573171,
54.0804213
],
[
"Tanzania",
2011,
"Sub-Saharan Africa",
46218486,
58.15121951,
37.32506423
],
[
"Thailand",
2011,
"East Asia & Pacific",
69518555,
74.09119512,
201.837618
],
[
"Timor-Leste",
2011,
"East Asia & Pacific",
1175880,
62.46102439,
46.3088211
],
[
"Togo",
2011,
"Sub-Saharan Africa",
6154813,
57.02658537,
44.88491818
],
[
"Tonga",
2011,
"East Asia & Pacific",
104509,
72.2862439,
219.2025958
],
[
"Trinidad and Tobago",
2011,
"Latin America & Caribbean",
1346350,
69.96336585,
955.9557336
],
[
"Tunisia",
2011,
"Middle East & North Africa",
10673800,
74.75365854,
266.5948911
],
[
"Turkey",
2011,
"Europe & Central Asia",
73639596,
73.94417073,
696.2334946
],
[
"Turkmenistan",
2011,
"Europe & Central Asia",
5105301,
64.99787805,
129.071217
],
[
"Uganda",
2011,
"Sub-Saharan Africa",
34509205,
54.0742439,
42.40052896
],
[
"Ukraine",
2011,
"Europe & Central Asia",
45706100,
70.80926829,
263.0403097
],
[
"United Arab Emirates",
2011,
"Middle East & North Africa",
7890924,
76.74253659,
1639.87147
],
[
"United Kingdom",
2011,
"Europe & Central Asia",
62744081,
80.75365854,
3608.645442
],
[
"United States",
2011,
"North America",
311591917,
78.64146341,
8607.875672
],
[
"Uruguay",
2011,
"Latin America & Caribbean",
3368595,
76.41219512,
1104.925379
],
[
"Uzbekistan",
2011,
"Europe & Central Asia",
29341200,
68.26531707,
88.39967903
],
[
"Vanuatu",
2011,
"East Asia & Pacific",
245619,
71.0975122,
133.568028
],
[
"Venezuela, RB",
2011,
"Latin America & Caribbean",
29278000,
74.31219512,
555.0937195
],
[
"Vietnam",
2011,
"East Asia & Pacific",
87840000,
75.05141463,
94.80518869
],
[
"Yemen, Rep.",
2011,
"Middle East & North Africa",
24799880,
65.45165854,
88.35283337
],
[
"Zambia",
2011,
"Sub-Saharan Africa",
13474959,
48.96882927,
87.2203224
] 
];
data.addColumn('string','Country');
data.addColumn('number','Year');
data.addColumn('string','Region');
data.addColumn('number','Population');
data.addColumn('number','Life.Expectancy');
data.addColumn('number','Health.Expenditure');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartID127c52fe05bb4() {
var data = gvisDataMotionChartID127c52fe05bb4();
var options = {};
options["width"] = 600;
options["height"] = 500;
options["state"] = "\n{\"xAxisOption\":\"5\",\"yAxisOption\":\"4\",\"colorOption\":\"2\",\"sizeOption\":\"3\",\"dimensions\":{\"iconDimensions\":[\"dim0\"]}}\n";

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartID127c52fe05bb4')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartID127c52fe05bb4);
})();
function displayChartMotionChartID127c52fe05bb4() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID127c52fe05bb4"></script>
 
<!-- divChart -->
  
<div id="MotionChartID127c52fe05bb4" 
  style="width: 600; height: 500;">
</div>


## [VvS+OR 2015](http://pub.math.leidenuniv.nl/~kampertmmd/HighlightsVVSwide.html#21) and [googleVis](https://mages.github.io/googleVis_Tokyo_April_2014/#1)

<!-- MotionChart generated in R 3.6.0 by googleVis 0.6.4 package -->
<!-- Fri Sep  6 08:36:53 2019 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartID127c555c1490f () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
"INDS",
1947,
null,
null,
null
],
[
"INDS",
1948,
-83.94933998,
166,
null
],
[
"INDS",
1949,
279.9960067,
182,
38
],
[
"INDS",
1950,
35.56275553,
210,
54
],
[
"INDS",
1951,
-198.3790971,
268,
75
],
[
"INDS",
1952,
688.3845878,
300,
86
],
[
"INDS",
1953,
999.196809,
386,
138
],
[
"INDS",
1954,
1033.171334,
426,
148
],
[
"INDS",
1955,
-1415.113604,
460,
160
],
[
"INDS",
1956,
null,
534,
185
],
[
"INDS",
1957,
362.4796366,
625,
273
],
[
"INDS",
1958,
364.8347559,
694,
313
],
[
"INDS",
1959,
1626.35737,
698,
313
],
[
"INDS",
1960,
-872.4423813,
718,
312
],
[
"INDS",
1961,
-1569.748288,
754,
317
],
[
"INDS",
1962,
-2212.940904,
788,
324
],
[
"INDS",
1963,
1231.060348,
834,
331
],
[
"INDS",
1964,
-2184.674935,
878,
360
],
[
"INDS",
1965,
612.4444686,
929,
367
],
[
"INDS",
1966,
null,
937,
370
],
[
"INDS",
1967,
null,
976,
368
],
[
"INDS",
1968,
null,
1070,
342
],
[
"INDS",
1969,
null,
1134,
330
],
[
"INDS",
1970,
null,
1150,
330
],
[
"INDS",
1971,
null,
1175,
317
],
[
"INDS",
1972,
-3593.009062,
1157,
280
],
[
"INDS",
1973,
-9263.156223,
1155,
265
],
[
"INDS",
1974,
-6858.887966,
1137,
270
],
[
"INDS",
1975,
13733.26678,
1193,
264
],
[
"INDS",
1976,
2703.622527,
1185,
230
],
[
"INDS",
1977,
8813.337458,
1208,
222
],
[
"INDS",
1978,
3700.123882,
1348,
212
],
[
"INDS",
1979,
-1859.591326,
1445,
211
],
[
"INDS",
1980,
3670.174388,
1444,
199
],
[
"INDS",
1981,
null,
1343,
184
],
[
"INDS",
1982,
null,
1316,
176
],
[
"INDS",
1983,
null,
1249,
162
],
[
"INDS",
1984,
10589.37428,
1251,
161
],
[
"INDS",
1985,
28922.79383,
1286,
154
],
[
"INDS",
1986,
18712.0583,
1281,
149
],
[
"INDS",
1987,
-4794.641763,
1299,
153
],
[
"INDS",
1988,
-27467.77026,
1301,
165
],
[
"INDS",
1989,
-7190.147524,
1423,
198
],
[
"INDS",
1990,
3585.771268,
1475,
195
],
[
"INDS",
1991,
-4273.248295,
1480,
216
],
[
"INDS",
1992,
11790.11757,
1445,
278
],
[
"INDS",
1993,
3208.679908,
1430,
291
],
[
"INDS",
1994,
3533.586543,
1402,
288
],
[
"INDS",
1995,
-3013.554415,
1391,
279
],
[
"INDS",
1996,
2520.7491,
1354,
276
],
[
"INDS",
1997,
-608.0654896,
1318,
280
],
[
"INDS",
1998,
-12343.27566,
1289,
265
],
[
"INDS",
1999,
-3115.201183,
1279,
265
],
[
"INDS",
2000,
15985.31567,
1230,
250
],
[
"INDS",
2001,
4631,
1161,
231
],
[
"INDS",
2002,
-6492,
1146,
217
],
[
"INDS",
2003,
561,
1099,
204
],
[
"INDS",
2004,
-5101,
1025,
188
],
[
"INDS",
2005,
-710,
966,
169
],
[
"INDS",
2006,
11328,
907,
159
],
[
"INDS",
2007,
-8871,
856,
152
],
[
"INDS",
2008,
-7010,
832,
156
],
[
"INDS",
2009,
72835,
796,
135
],
[
"INDS",
2010,
-17567,
769,
128
],
[
"INDS",
2011,
-23494,
765,
117
],
[
"INDS",
2012,
-7152,
790,
107
],
[
"INDS",
2013,
5390,
865,
106
],
[
"INDS",
2014,
13360,
880,
100
],
[
"INDS",
2015,
null,
877,
null
],
[
"BIOS",
1947,
null,
null,
null
],
[
"BIOS",
1948,
-83.94933998,
166,
null
],
[
"BIOS",
1949,
279.9960067,
182,
null
],
[
"BIOS",
1950,
35.56275553,
210,
null
],
[
"BIOS",
1951,
-198.3790971,
268,
null
],
[
"BIOS",
1952,
688.3845878,
300,
null
],
[
"BIOS",
1953,
999.196809,
386,
63
],
[
"BIOS",
1954,
1033.171334,
426,
65
],
[
"BIOS",
1955,
-1415.113604,
460,
null
],
[
"BIOS",
1956,
null,
534,
null
],
[
"BIOS",
1957,
362.4796366,
625,
null
],
[
"BIOS",
1958,
364.8347559,
694,
null
],
[
"BIOS",
1959,
1626.35737,
698,
122
],
[
"BIOS",
1960,
-872.4423813,
718,
109
],
[
"BIOS",
1961,
-1569.748288,
754,
121
],
[
"BIOS",
1962,
-2212.940904,
788,
126
],
[
"BIOS",
1963,
1231.060348,
834,
132
],
[
"BIOS",
1964,
-2184.674935,
878,
123
],
[
"BIOS",
1965,
612.4444686,
929,
157
],
[
"BIOS",
1966,
null,
937,
158
],
[
"BIOS",
1967,
null,
976,
156
],
[
"BIOS",
1968,
null,
1070,
165
],
[
"BIOS",
1969,
null,
1134,
160
],
[
"BIOS",
1970,
null,
1150,
163
],
[
"BIOS",
1971,
null,
1175,
159
],
[
"BIOS",
1972,
-3593.009062,
1157,
148
],
[
"BIOS",
1973,
-9263.156223,
1155,
140
],
[
"BIOS",
1974,
-6858.887966,
1137,
146
],
[
"BIOS",
1975,
13733.26678,
1193,
150
],
[
"BIOS",
1976,
2703.622527,
1185,
137
],
[
"BIOS",
1977,
8813.337458,
1208,
135
],
[
"BIOS",
1978,
3700.123882,
1348,
133
],
[
"BIOS",
1979,
-1859.591326,
1445,
131
],
[
"BIOS",
1980,
3670.174388,
1444,
141
],
[
"BIOS",
1981,
null,
1343,
143
],
[
"BIOS",
1982,
null,
1316,
134
],
[
"BIOS",
1983,
null,
1249,
138
],
[
"BIOS",
1984,
10589.37428,
1251,
148
],
[
"BIOS",
1985,
28922.79383,
1286,
141
],
[
"BIOS",
1986,
18712.0583,
1281,
148
],
[
"BIOS",
1987,
-4794.641763,
1299,
150
],
[
"BIOS",
1988,
-27467.77026,
1301,
159
],
[
"BIOS",
1989,
-7190.147524,
1423,
179
],
[
"BIOS",
1990,
3585.771268,
1475,
184
],
[
"BIOS",
1991,
-4273.248295,
1480,
181
],
[
"BIOS",
1992,
11790.11757,
1445,
276
],
[
"BIOS",
1993,
3208.679908,
1430,
296
],
[
"BIOS",
1994,
3533.586543,
1402,
300
],
[
"BIOS",
1995,
-3013.554415,
1391,
298
],
[
"BIOS",
1996,
2520.7491,
1354,
303
],
[
"BIOS",
1997,
-608.0654896,
1318,
366
],
[
"BIOS",
1998,
-12343.27566,
1289,
359
],
[
"BIOS",
1999,
-3115.201183,
1279,
357
],
[
"BIOS",
2000,
15985.31567,
1230,
351
],
[
"BIOS",
2001,
4631,
1161,
333
],
[
"BIOS",
2002,
-6492,
1146,
328
],
[
"BIOS",
2003,
561,
1099,
325
],
[
"BIOS",
2004,
-5101,
1025,
309
],
[
"BIOS",
2005,
-710,
966,
287
],
[
"BIOS",
2006,
11328,
907,
276
],
[
"BIOS",
2007,
-8871,
856,
262
],
[
"BIOS",
2008,
-7010,
832,
262
],
[
"BIOS",
2009,
72835,
796,
243
],
[
"BIOS",
2010,
-17567,
769,
222
],
[
"BIOS",
2011,
-23494,
765,
225
],
[
"BIOS",
2012,
-7152,
790,
228
],
[
"BIOS",
2013,
5390,
865,
235
],
[
"BIOS",
2014,
13360,
880,
227
],
[
"BIOS",
2015,
null,
877,
227
],
[
"OFFS",
1947,
null,
null,
null
],
[
"OFFS",
1948,
-83.94933998,
166,
null
],
[
"OFFS",
1949,
279.9960067,
182,
null
],
[
"OFFS",
1950,
35.56275553,
210,
null
],
[
"OFFS",
1951,
-198.3790971,
268,
null
],
[
"OFFS",
1952,
688.3845878,
300,
null
],
[
"OFFS",
1953,
999.196809,
386,
74
],
[
"OFFS",
1954,
1033.171334,
426,
77
],
[
"OFFS",
1955,
-1415.113604,
460,
73
],
[
"OFFS",
1956,
null,
534,
null
],
[
"OFFS",
1957,
362.4796366,
625,
null
],
[
"OFFS",
1958,
364.8347559,
694,
null
],
[
"OFFS",
1959,
1626.35737,
698,
96
],
[
"OFFS",
1960,
-872.4423813,
718,
96
],
[
"OFFS",
1961,
-1569.748288,
754,
100
],
[
"OFFS",
1962,
-2212.940904,
788,
102
],
[
"OFFS",
1963,
1231.060348,
834,
104
],
[
"OFFS",
1964,
-2184.674935,
878,
99
],
[
"OFFS",
1965,
612.4444686,
929,
null
],
[
"OFFS",
1966,
null,
937,
null
],
[
"OFFS",
1967,
null,
976,
null
],
[
"OFFS",
1968,
null,
1070,
null
],
[
"OFFS",
1969,
null,
1134,
null
],
[
"OFFS",
1970,
null,
1150,
null
],
[
"OFFS",
1971,
null,
1175,
null
],
[
"OFFS",
1972,
-3593.009062,
1157,
null
],
[
"OFFS",
1973,
-9263.156223,
1155,
null
],
[
"OFFS",
1974,
-6858.887966,
1137,
null
],
[
"OFFS",
1975,
13733.26678,
1193,
null
],
[
"OFFS",
1976,
2703.622527,
1185,
null
],
[
"OFFS",
1977,
8813.337458,
1208,
null
],
[
"OFFS",
1978,
3700.123882,
1348,
null
],
[
"OFFS",
1979,
-1859.591326,
1445,
null
],
[
"OFFS",
1980,
3670.174388,
1444,
null
],
[
"OFFS",
1981,
null,
1343,
null
],
[
"OFFS",
1982,
null,
1316,
null
],
[
"OFFS",
1983,
null,
1249,
null
],
[
"OFFS",
1984,
10589.37428,
1251,
null
],
[
"OFFS",
1985,
28922.79383,
1286,
null
],
[
"OFFS",
1986,
18712.0583,
1281,
null
],
[
"OFFS",
1987,
-4794.641763,
1299,
null
],
[
"OFFS",
1988,
-27467.77026,
1301,
null
],
[
"OFFS",
1989,
-7190.147524,
1423,
null
],
[
"OFFS",
1990,
3585.771268,
1475,
null
],
[
"OFFS",
1991,
-4273.248295,
1480,
null
],
[
"OFFS",
1992,
11790.11757,
1445,
null
],
[
"OFFS",
1993,
3208.679908,
1430,
null
],
[
"OFFS",
1994,
3533.586543,
1402,
null
],
[
"OFFS",
1995,
-3013.554415,
1391,
null
],
[
"OFFS",
1996,
2520.7491,
1354,
null
],
[
"OFFS",
1997,
-608.0654896,
1318,
null
],
[
"OFFS",
1998,
-12343.27566,
1289,
null
],
[
"OFFS",
1999,
-3115.201183,
1279,
null
],
[
"OFFS",
2000,
15985.31567,
1230,
null
],
[
"OFFS",
2001,
4631,
1161,
null
],
[
"OFFS",
2002,
-6492,
1146,
null
],
[
"OFFS",
2003,
561,
1099,
null
],
[
"OFFS",
2004,
-5101,
1025,
null
],
[
"OFFS",
2005,
-710,
966,
null
],
[
"OFFS",
2006,
11328,
907,
null
],
[
"OFFS",
2007,
-8871,
856,
null
],
[
"OFFS",
2008,
-7010,
832,
null
],
[
"OFFS",
2009,
72835,
796,
null
],
[
"OFFS",
2010,
-17567,
769,
null
],
[
"OFFS",
2011,
-23494,
765,
null
],
[
"OFFS",
2012,
-7152,
790,
null
],
[
"OFFS",
2013,
5390,
865,
null
],
[
"OFFS",
2014,
13360,
880,
null
],
[
"OFFS",
2015,
null,
877,
null
],
[
"MATH",
1947,
null,
null,
null
],
[
"MATH",
1948,
-83.94933998,
166,
null
],
[
"MATH",
1949,
279.9960067,
182,
null
],
[
"MATH",
1950,
35.56275553,
210,
null
],
[
"MATH",
1951,
-198.3790971,
268,
null
],
[
"MATH",
1952,
688.3845878,
300,
null
],
[
"MATH",
1953,
999.196809,
386,
69
],
[
"MATH",
1954,
1033.171334,
426,
73
],
[
"MATH",
1955,
-1415.113604,
460,
null
],
[
"MATH",
1956,
null,
534,
null
],
[
"MATH",
1957,
362.4796366,
625,
null
],
[
"MATH",
1958,
364.8347559,
694,
null
],
[
"MATH",
1959,
1626.35737,
698,
139
],
[
"MATH",
1960,
-872.4423813,
718,
136
],
[
"MATH",
1961,
-1569.748288,
754,
140
],
[
"MATH",
1962,
-2212.940904,
788,
150
],
[
"MATH",
1963,
1231.060348,
834,
166
],
[
"MATH",
1964,
-2184.674935,
878,
158
],
[
"MATH",
1965,
612.4444686,
929,
171
],
[
"MATH",
1966,
null,
937,
188
],
[
"MATH",
1967,
null,
976,
201
],
[
"MATH",
1968,
null,
1070,
219
],
[
"MATH",
1969,
null,
1134,
241
],
[
"MATH",
1970,
null,
1150,
254
],
[
"MATH",
1971,
null,
1175,
277
],
[
"MATH",
1972,
-3593.009062,
1157,
307
],
[
"MATH",
1973,
-9263.156223,
1155,
320
],
[
"MATH",
1974,
-6858.887966,
1137,
338
],
[
"MATH",
1975,
13733.26678,
1193,
354
],
[
"MATH",
1976,
2703.622527,
1185,
354
],
[
"MATH",
1977,
8813.337458,
1208,
381
],
[
"MATH",
1978,
3700.123882,
1348,
400
],
[
"MATH",
1979,
-1859.591326,
1445,
415
],
[
"MATH",
1980,
3670.174388,
1444,
406
],
[
"MATH",
1981,
null,
1343,
408
],
[
"MATH",
1982,
null,
1316,
399
],
[
"MATH",
1983,
null,
1249,
376
],
[
"MATH",
1984,
10589.37428,
1251,
366
],
[
"MATH",
1985,
28922.79383,
1286,
351
],
[
"MATH",
1986,
18712.0583,
1281,
346
],
[
"MATH",
1987,
-4794.641763,
1299,
349
],
[
"MATH",
1988,
-27467.77026,
1301,
331
],
[
"MATH",
1989,
-7190.147524,
1423,
359
],
[
"MATH",
1990,
3585.771268,
1475,
355
],
[
"MATH",
1991,
-4273.248295,
1480,
377
],
[
"MATH",
1992,
11790.11757,
1445,
441
],
[
"MATH",
1993,
3208.679908,
1430,
451
],
[
"MATH",
1994,
3533.586543,
1402,
452
],
[
"MATH",
1995,
-3013.554415,
1391,
452
],
[
"MATH",
1996,
2520.7491,
1354,
428
],
[
"MATH",
1997,
-608.0654896,
1318,
415
],
[
"MATH",
1998,
-12343.27566,
1289,
401
],
[
"MATH",
1999,
-3115.201183,
1279,
370
],
[
"MATH",
2000,
15985.31567,
1230,
356
],
[
"MATH",
2001,
4631,
1161,
340
],
[
"MATH",
2002,
-6492,
1146,
342
],
[
"MATH",
2003,
561,
1099,
331
],
[
"MATH",
2004,
-5101,
1025,
309
],
[
"MATH",
2005,
-710,
966,
295
],
[
"MATH",
2006,
11328,
907,
271
],
[
"MATH",
2007,
-8871,
856,
265
],
[
"MATH",
2008,
-7010,
832,
265
],
[
"MATH",
2009,
72835,
796,
244
],
[
"MATH",
2010,
-17567,
769,
218
],
[
"MATH",
2011,
-23494,
765,
227
],
[
"MATH",
2012,
-7152,
790,
226
],
[
"MATH",
2013,
5390,
865,
232
],
[
"MATH",
2014,
13360,
880,
226
],
[
"MATH",
2015,
null,
877,
237
],
[
"ECNS",
1947,
null,
null,
null
],
[
"ECNS",
1948,
-83.94933998,
166,
null
],
[
"ECNS",
1949,
279.9960067,
182,
null
],
[
"ECNS",
1950,
35.56275553,
210,
null
],
[
"ECNS",
1951,
-198.3790971,
268,
null
],
[
"ECNS",
1952,
688.3845878,
300,
null
],
[
"ECNS",
1953,
999.196809,
386,
null
],
[
"ECNS",
1954,
1033.171334,
426,
null
],
[
"ECNS",
1955,
-1415.113604,
460,
null
],
[
"ECNS",
1956,
null,
534,
null
],
[
"ECNS",
1957,
362.4796366,
625,
57
],
[
"ECNS",
1958,
364.8347559,
694,
123
],
[
"ECNS",
1959,
1626.35737,
698,
177
],
[
"ECNS",
1960,
-872.4423813,
718,
184
],
[
"ECNS",
1961,
-1569.748288,
754,
200
],
[
"ECNS",
1962,
-2212.940904,
788,
211
],
[
"ECNS",
1963,
1231.060348,
834,
232
],
[
"ECNS",
1964,
-2184.674935,
878,
247
],
[
"ECNS",
1965,
612.4444686,
929,
262
],
[
"ECNS",
1966,
null,
937,
264
],
[
"ECNS",
1967,
null,
976,
253
],
[
"ECNS",
1968,
null,
1070,
244
],
[
"ECNS",
1969,
null,
1134,
250
],
[
"ECNS",
1970,
null,
1150,
247
],
[
"ECNS",
1971,
null,
1175,
248
],
[
"ECNS",
1972,
-3593.009062,
1157,
247
],
[
"ECNS",
1973,
-9263.156223,
1155,
239
],
[
"ECNS",
1974,
-6858.887966,
1137,
252
],
[
"ECNS",
1975,
13733.26678,
1193,
258
],
[
"ECNS",
1976,
2703.622527,
1185,
231
],
[
"ECNS",
1977,
8813.337458,
1208,
236
],
[
"ECNS",
1978,
3700.123882,
1348,
236
],
[
"ECNS",
1979,
-1859.591326,
1445,
236
],
[
"ECNS",
1980,
3670.174388,
1444,
226
],
[
"ECNS",
1981,
null,
1343,
221
],
[
"ECNS",
1982,
null,
1316,
217
],
[
"ECNS",
1983,
null,
1249,
193
],
[
"ECNS",
1984,
10589.37428,
1251,
183
],
[
"ECNS",
1985,
28922.79383,
1286,
173
],
[
"ECNS",
1986,
18712.0583,
1281,
169
],
[
"ECNS",
1987,
-4794.641763,
1299,
170
],
[
"ECNS",
1988,
-27467.77026,
1301,
173
],
[
"ECNS",
1989,
-7190.147524,
1423,
199
],
[
"ECNS",
1990,
3585.771268,
1475,
192
],
[
"ECNS",
1991,
-4273.248295,
1480,
197
],
[
"ECNS",
1992,
11790.11757,
1445,
269
],
[
"ECNS",
1993,
3208.679908,
1430,
270
],
[
"ECNS",
1994,
3533.586543,
1402,
270
],
[
"ECNS",
1995,
-3013.554415,
1391,
266
],
[
"ECNS",
1996,
2520.7491,
1354,
254
],
[
"ECNS",
1997,
-608.0654896,
1318,
251
],
[
"ECNS",
1998,
-12343.27566,
1289,
240
],
[
"ECNS",
1999,
-3115.201183,
1279,
240
],
[
"ECNS",
2000,
15985.31567,
1230,
223
],
[
"ECNS",
2001,
4631,
1161,
212
],
[
"ECNS",
2002,
-6492,
1146,
203
],
[
"ECNS",
2003,
561,
1099,
187
],
[
"ECNS",
2004,
-5101,
1025,
172
],
[
"ECNS",
2005,
-710,
966,
157
],
[
"ECNS",
2006,
11328,
907,
146
],
[
"ECNS",
2007,
-8871,
856,
140
],
[
"ECNS",
2008,
-7010,
832,
144
],
[
"ECNS",
2009,
72835,
796,
128
],
[
"ECNS",
2010,
-17567,
769,
124
],
[
"ECNS",
2011,
-23494,
765,
117
],
[
"ECNS",
2012,
-7152,
790,
110
],
[
"ECNS",
2013,
5390,
865,
111
],
[
"ECNS",
2014,
13360,
880,
104
],
[
"ECNS",
2015,
null,
877,
93
],
[
"OPRS",
1947,
null,
null,
null
],
[
"OPRS",
1948,
-83.94933998,
166,
null
],
[
"OPRS",
1949,
279.9960067,
182,
null
],
[
"OPRS",
1950,
35.56275553,
210,
null
],
[
"OPRS",
1951,
-198.3790971,
268,
null
],
[
"OPRS",
1952,
688.3845878,
300,
null
],
[
"OPRS",
1953,
999.196809,
386,
null
],
[
"OPRS",
1954,
1033.171334,
426,
null
],
[
"OPRS",
1955,
-1415.113604,
460,
null
],
[
"OPRS",
1956,
null,
534,
null
],
[
"OPRS",
1957,
362.4796366,
625,
null
],
[
"OPRS",
1958,
364.8347559,
694,
null
],
[
"OPRS",
1959,
1626.35737,
698,
91
],
[
"OPRS",
1960,
-872.4423813,
718,
97
],
[
"OPRS",
1961,
-1569.748288,
754,
115
],
[
"OPRS",
1962,
-2212.940904,
788,
151
],
[
"OPRS",
1963,
1231.060348,
834,
161
],
[
"OPRS",
1964,
-2184.674935,
878,
194
],
[
"OPRS",
1965,
612.4444686,
929,
256
],
[
"OPRS",
1966,
null,
937,
277
],
[
"OPRS",
1967,
null,
976,
282
],
[
"OPRS",
1968,
null,
1070,
292
],
[
"OPRS",
1969,
null,
1134,
316
],
[
"OPRS",
1970,
null,
1150,
335
],
[
"OPRS",
1971,
null,
1175,
386
],
[
"OPRS",
1972,
-3593.009062,
1157,
414
],
[
"OPRS",
1973,
-9263.156223,
1155,
433
],
[
"OPRS",
1974,
-6858.887966,
1137,
458
],
[
"OPRS",
1975,
13733.26678,
1193,
471
],
[
"OPRS",
1976,
2703.622527,
1185,
455
],
[
"OPRS",
1977,
8813.337458,
1208,
460
],
[
"OPRS",
1978,
3700.123882,
1348,
467
],
[
"OPRS",
1979,
-1859.591326,
1445,
536
],
[
"OPRS",
1980,
3670.174388,
1444,
509
],
[
"OPRS",
1981,
null,
1343,
445
],
[
"OPRS",
1982,
null,
1316,
439
],
[
"OPRS",
1983,
null,
1249,
411
],
[
"OPRS",
1984,
10589.37428,
1251,
405
],
[
"OPRS",
1985,
28922.79383,
1286,
380
],
[
"OPRS",
1986,
18712.0583,
1281,
366
],
[
"OPRS",
1987,
-4794.641763,
1299,
375
],
[
"OPRS",
1988,
-27467.77026,
1301,
369
],
[
"OPRS",
1989,
-7190.147524,
1423,
426
],
[
"OPRS",
1990,
3585.771268,
1475,
433
],
[
"OPRS",
1991,
-4273.248295,
1480,
457
],
[
"OPRS",
1992,
11790.11757,
1445,
528
],
[
"OPRS",
1993,
3208.679908,
1430,
510
],
[
"OPRS",
1994,
3533.586543,
1402,
503
],
[
"OPRS",
1995,
-3013.554415,
1391,
493
],
[
"OPRS",
1996,
2520.7491,
1354,
477
],
[
"OPRS",
1997,
-608.0654896,
1318,
462
],
[
"OPRS",
1998,
-12343.27566,
1289,
456
],
[
"OPRS",
1999,
-3115.201183,
1279,
438
],
[
"OPRS",
2000,
15985.31567,
1230,
404
],
[
"OPRS",
2001,
4631,
1161,
371
],
[
"OPRS",
2002,
-6492,
1146,
374
],
[
"OPRS",
2003,
561,
1099,
349
],
[
"OPRS",
2004,
-5101,
1025,
316
],
[
"OPRS",
2005,
-710,
966,
289
],
[
"OPRS",
2006,
11328,
907,
279
],
[
"OPRS",
2007,
-8871,
856,
265
],
[
"OPRS",
2008,
-7010,
832,
283
],
[
"OPRS",
2009,
72835,
796,
273
],
[
"OPRS",
2010,
-17567,
769,
240
],
[
"OPRS",
2011,
-23494,
765,
244
],
[
"OPRS",
2012,
-7152,
790,
253
],
[
"OPRS",
2013,
5390,
865,
261
],
[
"OPRS",
2014,
13360,
880,
299
],
[
"OPRS",
2015,
null,
877,
269
],
[
"AGRI",
1947,
null,
null,
null
],
[
"AGRI",
1948,
-83.94933998,
166,
null
],
[
"AGRI",
1949,
279.9960067,
182,
null
],
[
"AGRI",
1950,
35.56275553,
210,
null
],
[
"AGRI",
1951,
-198.3790971,
268,
null
],
[
"AGRI",
1952,
688.3845878,
300,
null
],
[
"AGRI",
1953,
999.196809,
386,
null
],
[
"AGRI",
1954,
1033.171334,
426,
null
],
[
"AGRI",
1955,
-1415.113604,
460,
null
],
[
"AGRI",
1956,
null,
534,
null
],
[
"AGRI",
1957,
362.4796366,
625,
null
],
[
"AGRI",
1958,
364.8347559,
694,
null
],
[
"AGRI",
1959,
1626.35737,
698,
null
],
[
"AGRI",
1960,
-872.4423813,
718,
null
],
[
"AGRI",
1961,
-1569.748288,
754,
null
],
[
"AGRI",
1962,
-2212.940904,
788,
null
],
[
"AGRI",
1963,
1231.060348,
834,
15
],
[
"AGRI",
1964,
-2184.674935,
878,
19
],
[
"AGRI",
1965,
612.4444686,
929,
31
],
[
"AGRI",
1966,
null,
937,
33
],
[
"AGRI",
1967,
null,
976,
46
],
[
"AGRI",
1968,
null,
1070,
50
],
[
"AGRI",
1969,
null,
1134,
56
],
[
"AGRI",
1970,
null,
1150,
61
],
[
"AGRI",
1971,
null,
1175,
62
],
[
"AGRI",
1972,
-3593.009062,
1157,
59
],
[
"AGRI",
1973,
-9263.156223,
1155,
60
],
[
"AGRI",
1974,
-6858.887966,
1137,
62
],
[
"AGRI",
1975,
13733.26678,
1193,
60
],
[
"AGRI",
1976,
2703.622527,
1185,
64
],
[
"AGRI",
1977,
8813.337458,
1208,
66
],
[
"AGRI",
1978,
3700.123882,
1348,
64
],
[
"AGRI",
1979,
-1859.591326,
1445,
68
],
[
"AGRI",
1980,
3670.174388,
1444,
68
],
[
"AGRI",
1981,
null,
1343,
71
],
[
"AGRI",
1982,
null,
1316,
68
],
[
"AGRI",
1983,
null,
1249,
66
],
[
"AGRI",
1984,
10589.37428,
1251,
67
],
[
"AGRI",
1985,
28922.79383,
1286,
56
],
[
"AGRI",
1986,
18712.0583,
1281,
56
],
[
"AGRI",
1987,
-4794.641763,
1299,
63
],
[
"AGRI",
1988,
-27467.77026,
1301,
67
],
[
"AGRI",
1989,
-7190.147524,
1423,
76
],
[
"AGRI",
1990,
3585.771268,
1475,
75
],
[
"AGRI",
1991,
-4273.248295,
1480,
80
],
[
"AGRI",
1992,
11790.11757,
1445,
178
],
[
"AGRI",
1993,
3208.679908,
1430,
191
],
[
"AGRI",
1994,
3533.586543,
1402,
190
],
[
"AGRI",
1995,
-3013.554415,
1391,
189
],
[
"AGRI",
1996,
2520.7491,
1354,
188
],
[
"AGRI",
1997,
-608.0654896,
1318,
null
],
[
"AGRI",
1998,
-12343.27566,
1289,
null
],
[
"AGRI",
1999,
-3115.201183,
1279,
null
],
[
"AGRI",
2000,
15985.31567,
1230,
null
],
[
"AGRI",
2001,
4631,
1161,
null
],
[
"AGRI",
2002,
-6492,
1146,
null
],
[
"AGRI",
2003,
561,
1099,
null
],
[
"AGRI",
2004,
-5101,
1025,
null
],
[
"AGRI",
2005,
-710,
966,
null
],
[
"AGRI",
2006,
11328,
907,
null
],
[
"AGRI",
2007,
-8871,
856,
null
],
[
"AGRI",
2008,
-7010,
832,
null
],
[
"AGRI",
2009,
72835,
796,
null
],
[
"AGRI",
2010,
-17567,
769,
null
],
[
"AGRI",
2011,
-23494,
765,
null
],
[
"AGRI",
2012,
-7152,
790,
null
],
[
"AGRI",
2013,
5390,
865,
null
],
[
"AGRI",
2014,
13360,
880,
null
],
[
"AGRI",
2015,
null,
877,
null
],
[
"SOCS",
1947,
null,
null,
null
],
[
"SOCS",
1948,
-83.94933998,
166,
null
],
[
"SOCS",
1949,
279.9960067,
182,
null
],
[
"SOCS",
1950,
35.56275553,
210,
null
],
[
"SOCS",
1951,
-198.3790971,
268,
null
],
[
"SOCS",
1952,
688.3845878,
300,
null
],
[
"SOCS",
1953,
999.196809,
386,
null
],
[
"SOCS",
1954,
1033.171334,
426,
null
],
[
"SOCS",
1955,
-1415.113604,
460,
null
],
[
"SOCS",
1956,
null,
534,
null
],
[
"SOCS",
1957,
362.4796366,
625,
null
],
[
"SOCS",
1958,
364.8347559,
694,
null
],
[
"SOCS",
1959,
1626.35737,
698,
null
],
[
"SOCS",
1960,
-872.4423813,
718,
null
],
[
"SOCS",
1961,
-1569.748288,
754,
null
],
[
"SOCS",
1962,
-2212.940904,
788,
null
],
[
"SOCS",
1963,
1231.060348,
834,
null
],
[
"SOCS",
1964,
-2184.674935,
878,
null
],
[
"SOCS",
1965,
612.4444686,
929,
83
],
[
"SOCS",
1966,
null,
937,
116
],
[
"SOCS",
1967,
null,
976,
121
],
[
"SOCS",
1968,
null,
1070,
120
],
[
"SOCS",
1969,
null,
1134,
112
],
[
"SOCS",
1970,
null,
1150,
108
],
[
"SOCS",
1971,
null,
1175,
109
],
[
"SOCS",
1972,
-3593.009062,
1157,
103
],
[
"SOCS",
1973,
-9263.156223,
1155,
97
],
[
"SOCS",
1974,
-6858.887966,
1137,
102
],
[
"SOCS",
1975,
13733.26678,
1193,
112
],
[
"SOCS",
1976,
2703.622527,
1185,
110
],
[
"SOCS",
1977,
8813.337458,
1208,
124
],
[
"SOCS",
1978,
3700.123882,
1348,
278
],
[
"SOCS",
1979,
-1859.591326,
1445,
334
],
[
"SOCS",
1980,
3670.174388,
1444,
355
],
[
"SOCS",
1981,
null,
1343,
320
],
[
"SOCS",
1982,
null,
1316,
321
],
[
"SOCS",
1983,
null,
1249,
303
],
[
"SOCS",
1984,
10589.37428,
1251,
281
],
[
"SOCS",
1985,
28922.79383,
1286,
256
],
[
"SOCS",
1986,
18712.0583,
1281,
252
],
[
"SOCS",
1987,
-4794.641763,
1299,
249
],
[
"SOCS",
1988,
-27467.77026,
1301,
251
],
[
"SOCS",
1989,
-7190.147524,
1423,
280
],
[
"SOCS",
1990,
3585.771268,
1475,
277
],
[
"SOCS",
1991,
-4273.248295,
1480,
283
],
[
"SOCS",
1992,
11790.11757,
1445,
371
],
[
"SOCS",
1993,
3208.679908,
1430,
375
],
[
"SOCS",
1994,
3533.586543,
1402,
375
],
[
"SOCS",
1995,
-3013.554415,
1391,
376
],
[
"SOCS",
1996,
2520.7491,
1354,
368
],
[
"SOCS",
1997,
-608.0654896,
1318,
364
],
[
"SOCS",
1998,
-12343.27566,
1289,
351
],
[
"SOCS",
1999,
-3115.201183,
1279,
346
],
[
"SOCS",
2000,
15985.31567,
1230,
343
],
[
"SOCS",
2001,
4631,
1161,
337
],
[
"SOCS",
2002,
-6492,
1146,
325
],
[
"SOCS",
2003,
561,
1099,
321
],
[
"SOCS",
2004,
-5101,
1025,
286
],
[
"SOCS",
2005,
-710,
966,
268
],
[
"SOCS",
2006,
11328,
907,
253
],
[
"SOCS",
2007,
-8871,
856,
240
],
[
"SOCS",
2008,
-7010,
832,
229
],
[
"SOCS",
2009,
72835,
796,
211
],
[
"SOCS",
2010,
-17567,
769,
184
],
[
"SOCS",
2011,
-23494,
765,
194
],
[
"SOCS",
2012,
-7152,
790,
201
],
[
"SOCS",
2013,
5390,
865,
222
],
[
"SOCS",
2014,
13360,
880,
215
],
[
"SOCS",
2015,
null,
877,
208
],
[
"SSFP",
1947,
null,
null,
null
],
[
"SSFP",
1948,
-83.94933998,
166,
null
],
[
"SSFP",
1949,
279.9960067,
182,
null
],
[
"SSFP",
1950,
35.56275553,
210,
null
],
[
"SSFP",
1951,
-198.3790971,
268,
null
],
[
"SSFP",
1952,
688.3845878,
300,
null
],
[
"SSFP",
1953,
999.196809,
386,
null
],
[
"SSFP",
1954,
1033.171334,
426,
null
],
[
"SSFP",
1955,
-1415.113604,
460,
null
],
[
"SSFP",
1956,
null,
534,
null
],
[
"SSFP",
1957,
362.4796366,
625,
null
],
[
"SSFP",
1958,
364.8347559,
694,
null
],
[
"SSFP",
1959,
1626.35737,
698,
null
],
[
"SSFP",
1960,
-872.4423813,
718,
null
],
[
"SSFP",
1961,
-1569.748288,
754,
null
],
[
"SSFP",
1962,
-2212.940904,
788,
null
],
[
"SSFP",
1963,
1231.060348,
834,
null
],
[
"SSFP",
1964,
-2184.674935,
878,
null
],
[
"SSFP",
1965,
612.4444686,
929,
null
],
[
"SSFP",
1966,
null,
937,
null
],
[
"SSFP",
1967,
null,
976,
null
],
[
"SSFP",
1968,
null,
1070,
null
],
[
"SSFP",
1969,
null,
1134,
null
],
[
"SSFP",
1970,
null,
1150,
null
],
[
"SSFP",
1971,
null,
1175,
null
],
[
"SSFP",
1972,
-3593.009062,
1157,
null
],
[
"SSFP",
1973,
-9263.156223,
1155,
null
],
[
"SSFP",
1974,
-6858.887966,
1137,
null
],
[
"SSFP",
1975,
13733.26678,
1193,
null
],
[
"SSFP",
1976,
2703.622527,
1185,
null
],
[
"SSFP",
1977,
8813.337458,
1208,
null
],
[
"SSFP",
1978,
3700.123882,
1348,
null
],
[
"SSFP",
1979,
-1859.591326,
1445,
null
],
[
"SSFP",
1980,
3670.174388,
1444,
null
],
[
"SSFP",
1981,
null,
1343,
null
],
[
"SSFP",
1982,
null,
1316,
null
],
[
"SSFP",
1983,
null,
1249,
86
],
[
"SSFP",
1984,
10589.37428,
1251,
105
],
[
"SSFP",
1985,
28922.79383,
1286,
127
],
[
"SSFP",
1986,
18712.0583,
1281,
138
],
[
"SSFP",
1987,
-4794.641763,
1299,
153
],
[
"SSFP",
1988,
-27467.77026,
1301,
182
],
[
"SSFP",
1989,
-7190.147524,
1423,
217
],
[
"SSFP",
1990,
3585.771268,
1475,
229
],
[
"SSFP",
1991,
-4273.248295,
1480,
227
],
[
"SSFP",
1992,
11790.11757,
1445,
313
],
[
"SSFP",
1993,
3208.679908,
1430,
323
],
[
"SSFP",
1994,
3533.586543,
1402,
320
],
[
"SSFP",
1995,
-3013.554415,
1391,
319
],
[
"SSFP",
1996,
2520.7491,
1354,
309
],
[
"SSFP",
1997,
-608.0654896,
1318,
301
],
[
"SSFP",
1998,
-12343.27566,
1289,
288
],
[
"SSFP",
1999,
-3115.201183,
1279,
273
],
[
"SSFP",
2000,
15985.31567,
1230,
261
],
[
"SSFP",
2001,
4631,
1161,
243
],
[
"SSFP",
2002,
-6492,
1146,
231
],
[
"SSFP",
2003,
561,
1099,
220
],
[
"SSFP",
2004,
-5101,
1025,
202
],
[
"SSFP",
2005,
-710,
966,
186
],
[
"SSFP",
2006,
11328,
907,
163
],
[
"SSFP",
2007,
-8871,
856,
155
],
[
"SSFP",
2008,
-7010,
832,
148
],
[
"SSFP",
2009,
72835,
796,
136
],
[
"SSFP",
2010,
-17567,
769,
null
],
[
"SSFP",
2011,
-23494,
765,
null
],
[
"SSFP",
2012,
-7152,
790,
null
],
[
"SSFP",
2013,
5390,
865,
null
],
[
"SSFP",
2014,
13360,
880,
null
],
[
"SSFP",
2015,
null,
877,
null
] 
];
data.addColumn('string','sect');
data.addColumn('number','Year');
data.addColumn('number','Rslt');
data.addColumn('number','N');
data.addColumn('number','nsect');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartID127c555c1490f() {
var data = gvisDataMotionChartID127c555c1490f();
var options = {};
options["width"] = 600;
options["height"] = 500;
options["state"] = "";

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartID127c555c1490f')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartID127c555c1490f);
})();
function displayChartMotionChartID127c555c1490f() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID127c555c1490f"></script>
 
<!-- divChart -->
  
<div id="MotionChartID127c555c1490f" 
  style="width: 600; height: 500;">
</div>


## Smth Motivating: [Young Statisticians](http://youngstatisticians.nl)

<img src="w1_slides_intro_and_basics_files/figure-html/unnamed-chunk-5-1.png" style="display: block; margin: auto;" />


## `R` and beyond

These slides were made using `R` and **markdown**

For now use the html files on blackboard.

Later you'll be able to recreate these from the source code that is also on the blackboard.


## `R` and beyond

E.g. build whole webpages with timelines on it:

[http://timelyportfolio.github.io/rCharts_timeline_r/](http://timelyportfolio.github.io/rCharts_timeline_r/)

More info [http://rcharts.io](http://rcharts.io)



# Let's start 

## `R`, roughly

Two types of things in `R`

* object a.k.a variable (e.g. a collection of numbers): data types and structures
* functions (e.g. a way to take the square root of this collection of numbers): control flow / programming structures


## Data types

* logical (`TRUE`/`FALSE`)
* character (`"text"`)
* numeric (`2017`)
* integer (`1L`)


# Before we go to live coding / exercises


## Project management: reproducibility

Researchers should be able to reproduce your work

This means:

* Manage your workflow well
* Documentation
* Use (`R`) scripts


# Live coding 1

# Exercises part 1


# Functions

## Functions
Functions are (usually) executed for a particular purpose, which comes in two flavours:

1. You want its `return` value.
2. You want it to have **some other effect**.

The latter set of goals are (a bit misleadingly) called **side effects**: any effect that is not the return value is a side effect (e.g. a plotting window, or a file you save to the hard disk).

## Functions

<div class="centered">
<img src="0_images/function.png" alt = "A function diagram" width="50%" height="50%">
</div>


# Errors: `NA` and `NULL` (and `NaN`)

## Simply put

`NA` is information about absence

`NULL` is absence of information 

`NaN` tells you it is Not A Number


# Live coding 2


## FAQ: About `=` vs. `<-`

[stackoverflow](https://stackoverflow.com/questions/1741820/what-are-the-differences-between-and-in-r)

Pro `<-` 


```r
a <- c(x1 = -1, x2 = -4, x3 = -7)
a <- c(x1 <- -1, x2 <- -4, x3 <- -7)
```

Contra `<-`


```r
a < -3
```

```
## [1] FALSE  TRUE  TRUE
```

```r
a<-3
```



## Creating an object: data types and simple containers 

Every object in `R` has a specific type of container, and a promise as to what the container contains

When you assign some value, or a set of values, to an object, `R` often decides for you what the type (mode) or the container (class) is

* type / mode: the thing the container contains
* container / class: how the container works

Note: in many cases, the way in which we interface with `R` is not necessarily how `R` stores the data! (almost everything in `R` is secretly a vector)

## Data types

These we've already seen:

* logical (`TRUE`/`FALSE`)
* character (`"text"`)
* numeric (`2017`)
* integer (`1L`)

## Data structures

* `vector`
* `matrix`
* `lists`
* `data.frames`


# Live coding 3: vectors

## Time for exercises

We've touched on most of the basic ingredients of `R`:

- Objects and functions
- Data types (e.g. numeric)
- Data structures (e.g. vectors)

Enough to get you working with each

# Exercises part 2


# Precursor to control flow


## Indexing and filtering
Using an index, we can access a particular element in a vector

The first element of a vector has index `1`.

Indexing is either:

- telling `R` which elements to DO select (using position *numbers* or entry *names*)
- telling `R` which elements to NOT select (using position *numbers*)
- or both (using *logicals*)

Filtering is usually done using logical vectors


# Live coding 4: indexing 

# Exercises part 3

# Nearing the end of Today's classes..

## Saving and loading your work

In order of priority (generally):

- saving and loading your script
- saving and loading workspace 
- saving and loading your Rhistory (hardly done)


## Packages
Allmost all `R` functions come in **packages**.

Some packages are loaded into `R` upon startup (such as `base`, `stats` and `graphics`)

Most packages can be found on either CRAN, Bioconductor or Github


# Live coding 5: saving, loading, and working with packages


## Some last remarks

Just like in an ordinary language there are rules to the language

See comprehensive list of *code precedence* at the end of these slides

## Topics for next week

Amongst others:

* Reading data files (remember loading workspaces)
* Classes and advanced containers (`matrix` and `data.frame`)
* Details of functions. For example, scoping


## Homework

swirl, R Programming: The basics of programming in R, lessons **1** through **4**, and **6** through **9**.

Complete and finish Today's exercises

Write down any questions you have: we will discuss these at the start of the next lecture!

Pay special attention to:

- the exercises
- **!! (vector) recycling !!**
- swirl lesson 2, about working directories and files
- swirl lesson 9, regarding functions, might be a bit tough


## More homework

After swirl read Matloff:

* chapter 1, (**not** 1.5)
* chapter 2, (**not** 2.9)
* chapter 3.1 through 3.7 (**not** 3.4)

Don't just read the text, but also check the code in RStudio!

# That's it for today!

## Precedence | From highest to lowest

- `[ [[ (` Indexing  
-  `::` or `:::`  access variables in a name space  
- `$` or `@` 	component   
-  `^` 		exponentiation  
-  `-` or `+` 	unary minus and plus  
-  `:` 		sequence operator  
-  `%any%`	special operators  
-  `*` or `/` 	multiply, divide  
-  `+` or `-` 	(binary) add, subtract  

## Precedence | From highest to lowest, continued.

-  `<`, `>`, `<=`, `>=`, `==`, or `!=`  ordering and comparison
-  `!` 			negation
-  `&` or `&&` 		and
-  `|` or `||` 		or
-  `~`			as in formulae
-  `->` or `->>` assignment
-  `=` 	assignment
-  `<-` or `<<-` 		assignment
-  `?`  help

## Extra course material 

On the "use of" or "programming in" R:

- [swirl](http://swirlstats.com): `install.packages('swirl')`

- [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r) 

- [R/EdX](https://www.edx.org/course/introduction-r-data-science-microsoft-dat204x-2)   
- [R/Coursera](https://www.mooc-list.com/course/r-programming-coursera)

- [R/MOOCs](https://www.mooc-list.com/tags/r-programing)

