
using RDatasets, DataFrames
anscombe = dataset("datasets","anscombe")

typeof(anscombe)
size(anscombe) # number of rows, number of columns
length(anscombe)
head(anscombe)
tail(anscombe)
showcols(anscombe)
