# HeyDay_Haynes
This script is a celebration of the annual tradition at Auburn of "Hey Day!" On this day each year, all students wear nametags around campus and greet each other with their names and a "War Eagle!"

This code prompts the user to specify which college they are a student in using an if, then statement. The only valid inputs are those specified in the prompt.

'
read -p "What college are you a student in? (Engineering, Business, Liberal Arts, Sciences, Agriculture, Education, 
Veterinary Medicine):" college
if [[ "$college" == "Engineering" || "$college" == "Business" || "$college" == "Liberal Arts" || "$college" == "Scie
nces" || "$college" == "Agriculture" || "$college" == "Education" || "$college" == "Veterinary Medicine" ]]; then
        echo "Woah tiger! You're in the college of $college!"
else
        echo "Invalid input! Please select from Engineering, Business, Liberal Arts, Sciences, Agriculture, Educatio
n, Veterinary Medicine."
fi
'
