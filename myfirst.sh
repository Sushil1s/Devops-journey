#!/bin/bash

echo "=============================="
echo " Sushil's DevOps Journey Log"
echo "=============================="

NAME="Sushil"
DAY=2

echo "Engineer: $NAME"
echo "Day: $DAY"

echo ""
echo "Skills I am learning:"
skills=("Linux" "Git" "Docker" "Azure Pipelines" "Terraform" "Kubernetes")
for skill in "${skills[@]}"
do
  echo "  -> $skill"
done

echo ""
if [ -d "test-folder" ]; then
  echo "test-folder EXISTS"
else
  echo "test-folder NOT found - creating it now"
  mkdir test-folder
fi

echo ""
echo "Script complete! Day $DAY done!"
