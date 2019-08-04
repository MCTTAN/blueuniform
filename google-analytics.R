
require(googleAnalyticsR)

# Authorize the Google Analytics account
# This need not be executed in every session once the token object is created 
# and saved
token <- Auth("916005612054-ojq9k6t7gh6le792lv7s91e83psuss38.apps.googleusercontent.com","wnzP4cxojq6-klbBMwXmpGpV")


query.list <- Init(start.date = "2014-09-01",
                   end.date = "2014-11-29",
                   dimensions = "ga:date",
                   metrics = "ga:transactions,ga:transactionRevenue",
                   segment = "users::sequence::^ga:userType==New%20Visitor;dateOfSession<>2014-09-01_2014-09-07;ga:campaign==Campaign%20A;->>perSession::ga:transactions>0",
                   max.results = 10000,
                   sort = "ga:date",
                   table.id = tableId)
