# 创建一个有权限调用的R库
mkdir -p ~/R/library
# 安装到私有的R的library
/software/miniconda/envs/txdbmaker/bin/R CMD INSTALL BSgenome.species_1.0.0.tar.gz -l ~/R/library
# 添加.libPaths()，使其能够调用
.libPaths(c("~/R/library", .libPaths()))
library(BSgenome.species)
