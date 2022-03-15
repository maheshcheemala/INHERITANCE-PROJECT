Feature: Gmail mail compose

  Scenario: 
    Given open "chrome" browser
    And launch site using "http://www.gmail.com"
    When do login using "prathapagirirajender9@gmail.com" and "@Shivakumar@12" credentials
    Then compose is displayed
    When click on compose and fill fields and send mail and check response
      | to                   | subject   | body      | attachment                     |
      | madishettyrajashekar@gmail.com | birthday wishes   hii      | hii shiva happy birth day | C:\Users\prath\Dropbox\PC\Pictures\pics.jlm.pdf|
    	#| prathapagiri1234@gmail.com     | hii ganesh how are you hii | Thinnava  Padukoega       | C:\\Users\\prath\\Desktop\\RESUME\\8499056919.PDF |
     # | rakeshrodda143@gmail.com | hii bro     hellow | Thinnava  Paduko ega | C:\\Users\\prath\\Desktop\\RESUME\\8499056919.PDF |
    When do logout
    Then login page should be redisplayed
    When close site
