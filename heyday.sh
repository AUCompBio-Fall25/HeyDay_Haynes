## This script is a celebration of Auburn's annual tradition of "Hey Day" on campus.

# Prompt tiger for name to greet them with Auburn spirit!

echo "War Eagle and welcome! Please type your name:" 
read tiger_name
echo "Hey $tiger_name! Welcome to the Loveliest Village on the Plains!"

# Asks tiger about their Auburn experience. 

read -p "What college are you a student in? (Engineering, Business, Liberal Arts, Sciences, Agriculture, Education, 
Veterinary Medicine):" college
if [[ "$college" == "Engineering" || "$college" == "Business" || "$college" == "Liberal Arts" || "$college" == "Scie
nces" || "$college" == "Agriculture" || "$college" == "Education" || "$college" == "Veterinary Medicine" ]]; then
        echo "Woah tiger! You're in the college of $college!"
else
        echo "Invalid input! Please select from Engineering, Business, Liberal Arts, Sciences, Agriculture, Educatio
n, Veterinary Medicine."
fi

# Asks tiger what their favorite Auburn sport is, giving them the option to only input one of the specified options.

read -p "Okay tiger, tell me which sport you cheer the loudest for here on the Plains (Football, Basketball, Basebal
l, Gymnastics):" sport
if [[ "$sport" == "Football" || "$sport" == "Basketball" || "$sport" == "Baseball" || "$sport" == "Gymnastics" ]]; then
        echo "War Damn! Sounds like you really bleed orange and blue for $sport"
else
        echo "Sorry $tiger_name! Please select from Football, Basketball, Baseball, Gymnastics."        
fi

# Search for Auburn notable people who are related to the tiger's interests to provide them with fun facts!

echo "A Notable Auburn Tiger from the college of $college:"
notable_tiger=$(grep -i "$college" auburn_notables.txt | head -1)
echo "$notable_tiger"

echo "A notable Auburn $sport legend is:"
sport_tiger=$(awk -v s="$sport" '$0 ~ s' auburn_notables.txt | head -1)
echo "$sport_tiger"

# Gives tiger a random fun fact about Auburn and ends script.

fun_fact=$(gshuf -n 1 auburn_facts.txt)
echo "$fun_fact"
echo "Hey $tiger_name! War Eagle! See you next time in the Loveliest Village on the Plains!"
