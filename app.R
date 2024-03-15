library("plumber")

root <- pr("plumber.R")
pr_run(root, host = "0.0.0.0", port = 8080)