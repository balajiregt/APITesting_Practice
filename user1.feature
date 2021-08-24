Feature: Passing parameters
 * header Authorization = 'Bearer 3e445da142c752e34b142b814a29abf2e490348969b61cfaaa31fcd3d82d20fd'
   
   Scenario: passing the paramerts and validating
   
     Given url 'https://gorest.co.in/public-api/users'
     Given param name = 'Anderson'
     When method get
     Then status 200
     Then print response