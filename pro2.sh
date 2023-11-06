birth_months=()
for ((i = 1; i <= 50; i++));
 do
  year=$((RANDOM % 2 + 92)) 
  month=$((RANDOM % 12 + 1)) 
  birth_months+=("$month/$year")
done
declare -A month_groups
for month_year in "${birth_months[@]}"; 
   do
  month_groups["$month_year"]+="Individual "
done
for month_year in "${!month_groups[@]}";
 do
  if [[ ${#month_groups["$month_year"]} -gt 1 ]]; 
   then
    echo "Birthdays in $month_year: ${month_groups["$month_year"]}"
  fi
done

