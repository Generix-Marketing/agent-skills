#!/usr/bin/env bash
# validate-skills.sh
# Checks every SKILL.md file in skills/ for required frontmatter and basic structural issues.
# Usage: ./validate-skills.sh
# Exit code: 0 if all skills pass, 1 if any fail.

set -uo pipefail

SKILLS_DIR="skills"
ERRORS=0
SKILLS_CHECKED=0

if [[ ! -d "$SKILLS_DIR" ]]; then
  echo "Error: $SKILLS_DIR directory not found. Run this script from the repo root."
  exit 1
fi

echo "Validating SKILL.md files in $SKILLS_DIR/"
echo ""

# Find every SKILL.md file
while IFS= read -r -d '' skill_file; do
  SKILLS_CHECKED=$((SKILLS_CHECKED + 1))
  skill_path="${skill_file#./}"
  skill_dir=$(dirname "$skill_path")

  # Read the first ~20 lines for frontmatter check
  first_lines=$(head -n 20 "$skill_file")

  # Check 1: File starts with frontmatter
  if [[ ! "$first_lines" =~ ^---$'\n' ]]; then
    echo "  FAIL: $skill_path"
    echo "        Missing YAML frontmatter (file must start with ---)"
    ERRORS=$((ERRORS + 1))
    continue
  fi

  # Check 2: Has name field
  if ! grep -q "^name:" "$skill_file"; then
    echo "  FAIL: $skill_path"
    echo "        Missing 'name:' field in frontmatter"
    ERRORS=$((ERRORS + 1))
  fi

  # Check 3: Has description field
  if ! grep -q "^description:" "$skill_file"; then
    echo "  FAIL: $skill_path"
    echo "        Missing 'description:' field in frontmatter"
    ERRORS=$((ERRORS + 1))
  fi

  # Check 4: Frontmatter closes
  if [[ $(grep -c "^---$" "$skill_file") -lt 2 ]]; then
    echo "  FAIL: $skill_path"
    echo "        Frontmatter not closed (need a second --- line)"
    ERRORS=$((ERRORS + 1))
    continue
  fi

  # Check 5: No em dashes (style rule)
  if grep -q $'\xe2\x80\x94' "$skill_file"; then
    echo "  WARN: $skill_path"
    echo "        Contains em dash character (use colons, periods, or commas)"
  fi

  # Check 6: Folder name matches kebab-case
  folder_name=$(basename "$skill_dir")
  if [[ ! "$folder_name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    echo "  WARN: $skill_path"
    echo "        Folder name '$folder_name' is not kebab-case"
  fi

done < <(find "$SKILLS_DIR" -name "SKILL.md" -type f -print0)

echo ""
echo "Checked $SKILLS_CHECKED skill(s)."

if [[ $ERRORS -gt 0 ]]; then
  echo "$ERRORS error(s) found."
  exit 1
else
  echo "All skills passed validation."
  exit 0
fi
