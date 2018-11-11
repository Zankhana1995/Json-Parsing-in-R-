
library(jsonlite)

# library("rjson")
# f <- file.choose()
# Origional_Data <- read.csv(file=f, header= TRUE)

 
# tab <- data.frame(name = "Test1",
#                   published_date = "1151367060",
#                   ratings ="[{'id': 7, 'name': 'Funny', 'count': 19645}, {'id': 1, 'name': 'Beautiful', 'count': 4573}, {'id': 9, 'name': 'Ingenious', 'count': 6073}, {'id': 3, 'name': 'Courageous', 'count': 3253}, {'id': 11, 'name': 'Longwinded', 'count': 387}, {'id': 2, 'name': 'Confusing', 'count': 242}, {'id': 8, 'name': 'Informative', 'count': 7346}, {'id': 22, 'name': 'Fascinating', 'count': 10581}, {'id': 21, 'name': 'Unconvincing', 'count': 300}, {'id': 24, 'name': 'Persuasive', 'count': 10704}, {'id': 23, 'name': 'Jaw-dropping', 'count': 4439}, {'id': 25, 'name': 'OK', 'count': 1174}, {'id': 26, 'name': 'Obnoxious', 'count': 209}, {'id': 10, 'name': 'Inspiring', 'count': 24924}]",
#                   stringsAsFactors = FALSE)
# 
# # Use jsonlite for parsing json
# # single quote is invalid, so if real, you need to replace them all by double quote
# tab$ratings <- gsub("'", "\"", tab$ratings)
# # parse the json
# 
# print(tab$ratings)
# rating <- fromJSON(tab$ratings)
# print(rating)




# 
# json <-
#   '[
# {"Name" : "Mario", "Age" : 32, "Occupation" : "Plumber"}, 
# {"Name" : "Peach", "Age" : 21, "Occupation" : "Princess"},
# {},
# {"Name" : "Bowser", "Occupation" : "Koopa"}
# ]'
# mydf <- fromJSON(json)
# 
# print(mydf)





f <- file.choose()
Origional_Data <- read.csv(file=f, header= TRUE)
print(Origional_Data$genres)
data1 <- Origional_Data$genres[1]
print(data1)
data2 <- gsub("\p{P}", "",data1, perl=TRUE)
print(data2)
data3 <- fromJSON(data2)

print(data3)
print(data3[1,2])
print(data3$id)
print(data3$id[1])


# print(data1)
# data2 <- fromJSON(data1[1])
# 
# #data3 <- as.character(data2)
# 
# 
# print(data2)




