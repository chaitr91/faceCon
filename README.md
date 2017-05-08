# FaceCon
- Install all the openFace packages
- Opencv
- Torch


# To run locally using PostMan / Rest Client
- CLone the project and run python main.py 


# TO create profile :
https://faceconmcc.herokuapp.com/createProfile
- In case running locally : localhost:5000
- Header : Accept-Type and Content to be set as application/json
- Body   : raw type
           - json data {"Userid":"emma", "FirstName": "Emma", "LastName": "Watson", "Contact":774893 , 
    "Emailid": "emma@gmail.com", "Interest": "acting", "path1": "data/images/emma"} 

# To upload Image for training the neural nwk model
http://0.0.0.0:5000/uploadImage
- Body : form-data file  Attach the jpeg.png file


# To find the profile 
https://faceconmcc.herokuapp.com/findProfile
- Body : form-data file  Attach the jpeg.png file

# It will predict in the command line with some level of confidence score the name of the person 
```


# faceCon
