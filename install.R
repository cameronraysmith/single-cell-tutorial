ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)

r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)
install.packages(c('devtools', 'gam', 'RColorBrewer', 'BiocManager'), lib="/opt/conda/lib/R/library")
update.packages(ask=F)

devtools::install_github("grimbough/Rhdf5lib")
BiocManager::install(c("scran","MAST","monocle","ComplexHeatmap","slingshot"), lib="/opt/conda/lib/R/library")

ip <- as.data.frame(installed.packages()[,c(1,3:4)])
rownames(ip) <- NULL
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
print(ip, row.names=FALSE)