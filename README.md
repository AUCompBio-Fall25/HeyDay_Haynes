# HeyDay_Haynes

## Motivation
This script is a celebration of the annual tradition at Auburn of "Hey Day!" On this day each year, all students wear nametags around campus and greet each other with their names and a "War Eagle!"

Read more about this tradition here: [Hey Day Tradition](https://alumni.auburn.edu/2024/10/01/auburn-tradition-hey-day/)

## Key pieces of code
This code prompts the user to specify which college they are a student in using an if, then statement. The only valid inputs are those specified in the prompt.
```
read -p "What college are you a student in? (Engineering, Business, Liberal Arts, Sciences, Agriculture, Education, 
Veterinary Medicine):" college
if [[ "$college" == "Engineering" || "$college" == "Business" || "$college" == "Liberal Arts" || "$college" == "Scie
nces" || "$college" == "Agriculture" || "$college" == "Education" || "$college" == "Veterinary Medicine" ]]; then
        echo "Woah tiger! You're in the college of $college!"
else
        echo "Invalid input! Please select from Engineering, Business, Liberal Arts, Sciences, Agriculture, Educatio
n, Veterinary Medicine."
fi
```

This part of the script uses the variable previously set of which college the student is a part of at Auburn to give them the name of a notable Auburn person that was in their same college using grep to search for that pattern.
```
echo "A Notable Auburn Tiger from the college of $college:"
notable_tiger=$(grep -i "$college" auburn_notables.txt | head -1)
echo "$notable_tiger"
```

## Example Output
```
$ ./heyday.sh
War Eagle and welcome! Please type your name:
Aubie
Hey Aubie! Welcome to the Loveliest Village on the Plains!
What college are you a student in? (Engineering, Business, Liberal Arts, Sciences, Agriculture, Education, Veterinary Medicine):Sciences
Woah tiger! You're in the college of Sciences!
Okay tiger, tell me which sport you cheer the loudest for here on the Plains (Football, Basketball, Baseball, Gymnastics):Baseball
War Damn! Sounds like you really bleed orange and blue for Baseball
A Notable Auburn Tiger from the college of Sciences:
Loretta Spencer|Sciences|Alumni|First African American Mayor of Huntsville, AL
A notable Auburn Baseball legend is:
Bo Jackson|Liberal Arts|Athlete-Football-Baseball|1985 Heisman Trophy winner, MLB All-Star
The university's official colors, burnt orange and navy blue, were chosen in 1892 and inspired by a sunset over the plains.
Hey Aubie! War Eagle! See you next time in the Loveliest Village on the Plains!
```
