library(treemap)
load("pref2016.Rda")
t = pref2016[,c("Ds_Funcao","Valor")]
t <- transform(t, Valor = as.numeric(Valor))
t <- aggregate(Valor ~ Ds_Funcao, data=t, sum)
t$Perc = round(t$Valor/sum(t$Valor)*100,2)

treemap(t, 'Ds_Funcao', 'Valor', 'Ds_Funcao', type='categorical', position.legend='none', aspRatio=4/3, title="")
