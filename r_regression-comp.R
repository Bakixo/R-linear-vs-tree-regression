data(swiss) summary(swiss)
data_swiss <- swiss summary(data_swiss)
set.seed(123)
library(caret) traindex <- createDataPartition(data_swiss$Fertility, p=0.8,list=FALSE) train<-data_swiss[traindex,] test<-data_swiss[-traindex,]
lineer_model <- lm(Fertility~. , data=train) summary(lineer_model)
y_pred <- predict(lineer_model, newdata = test) y_pred y_true <- test$Fertility residuals_lineer <- y_true-y_pred residuals_lineer
#lineer hata metrikleri
mse <- mean(residuals_lineer^2) # 41.09 rmse <- sqrt(mse) # 6.4109 mae <- mean(abs(residuals_lineer)) # 5.65 rkare <- summary(lineer_model)$r.squared # 0.71

library(rpart) library(rpart.plot)
tree_model <- rpart(Fertility~., data = train, method="anova", control = rpart.control(cp=0, minsplit = 10, minbucket = 5, maxdepth = 10)) rpart.plot(tree_model)
y_pred_tree <- predict(tree_model,test) y_true<-test$Fertility
residuals_tree <- y_true - y_pred_tree residuals_tree
karar ağacları hata metrikleri
mse_tree <- mean(residuals_tree^2) # 77.89 rmse_tree <- sqrt(mse) # 6.41 mae_tree <- mean(abs(residuals_tree)) # 7.67875
sst <- sum((y_true-mean(y_true))^2) ssr <- sum((residuals_tree)^2) rkare_tree <- 1-(ssr/sst) # 0.166
lineer model seçerek new data oluşturuyorum
new_data <- data.frame(Agriculture=51, Examination= 15, Education=20, Catholic=50, Infant.Mortality=15) new_data
y_pred_new <- predict(lineer_model, newdata = new_data) y_pred_new # 59.45457
