tab=read.csv("results.metrics.csv")
cat("vgpr       :", tab$vgpr, "\n")
cat("sgpr       :", tab$sgpr, "\n")
cat("Scratch    :", tab$scr, "\n")
cat("Read  (b)  :", tab$FETCH_SIZE*1024, "\n")
cat("Write (b)  :", tab$WRITE_SIZE*1024, "\n")
cat("L2CacheHit :", tab$L2CacheHit, "\n")
