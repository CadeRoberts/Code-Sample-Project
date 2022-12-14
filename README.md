![gameScreenshotHome](https://user-images.githubusercontent.com/120150327/207439893-42f0327b-d810-4dd5-a1c6-823f7a52bcb8.PNG)



# :palm_tree: About the Project :video_game:
## What is it?
This is a repository containing a project I made in GML about a boy taking pictures of animals by the beach. 
I started the project with the intention of learning how to program and ended up really enjoying it, so I continue working on it when I can. 
I drew everything :pencil2: in aesprite, made the music/sound effects :speaker: in FL Studio, and implimented mechanics from scratch :computer:, including....
  - A fun, responsive portable camera that zooms, rotates, flashes, clicks, turns into a laser, and, obviously, takes pictures.
  - A few unique animals to run into as you explore the world, each with their own stats, behaviors, and actions.
  - Developing photos of creatures that you have taken, including variable backgrounds
  - A photo cataloguing system that saves the pictures you have taken for you to revisit throughout your journey

## **NOTE TO POTENTIAL EMPLOYERS**
I made the Project/Github to show that I have good ideas and the problem-solving ability to implement them. 
I direct you to the following areas of the repository, which serve as code samples 100% written by me. *The ".GML" files contain the code written by me. The ".YY" files do not.* 
It is, to my knowledge, bug-free, scalable, and written in a way that others can easily understand. I would be happy to explain how any of it works, in any level of detail. 
   - In the "Scripts" folder: the files titled...
        - **"dslrfunc"** - contains functions related to the movement of the camera about the player, zooming in and out, 
                     taking pictures, turning into the "laser" item (used for reflection puzzles in the game), all of the sounds involved, and more
       - **"CreatureCaught"** - when an animal is caught in a picture, this script records information about the creatuer and it's environment, and creates an object (o_polaroid) to store these stats and make a custom photo/journal entry using this information
       - **"birdstates"** - contains all of the functions for the bird animals in the game (the individual types of birds having different variations of these functions)
                       including them wandering around, chirping (random intervals, length of sound, and pitch), and them flying away if you get too close
   - In the "objects" folder: the files titled...
      -  **"o_polaroid"** - this object displays the picture the player just took in a satisfying way by drawing shapes and sprites with various 
                       timers and alpha gradients.
      -  **"o_polaroidCycle"** - this object stores the pictures you take and allows you to cycle through them at any time in your journey.
                      
![gamescreenshotBEach](https://user-images.githubusercontent.com/120150327/207507476-a4f1bbdc-8acf-4f8a-9c5b-59986242a502.PNG)
