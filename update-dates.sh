#!/usr/bin/env bash

# Script to update all dates for W26 (Winter 2026)
# First day of class: Monday, January 5, 2026
# Schedule: Monday/Wednesday

echo "Updating lecture dates for W26 MW schedule..."

# MW Schedule for Winter 2026 (Jan 5 - March 11, with holidays)
# Week 1: Mon 01-05, Wed 01-07
# Week 2: Mon 01-12, Wed 01-14
# Week 3: Mon 01-19 (MLK Day - NO CLASS), Wed 01-21
# Week 4: Mon 01-26, Wed 01-28
# Week 5: Mon 02-02, Wed 02-04
# Week 6: Mon 02-09, Wed 02-11
# Week 7: Mon 02-16 (Presidents Day - NO CLASS), Wed 02-18
# Week 8: Mon 02-23, Wed 02-25
# Week 9: Mon 03-02, Wed 03-04
# Week 10: Mon 03-09, Wed 03-11

declare -a lecture_dates=(
  "2026-01-05"  # lect01 - Week 1 Mon
  "2026-01-07"  # lect02 - Week 1 Wed
  "2026-01-12"  # lect03 - Week 2 Mon
  "2026-01-14"  # lect04 - Week 2 Wed
  "2026-01-21"  # lect05 - Week 3 Wed (MLK Mon 1/19 - no class)
  "2026-01-26"  # lect06 - Week 4 Mon
  "2026-01-28"  # lect07 - Week 4 Wed
  "2026-02-02"  # lect08 - Week 5 Mon
  "2026-02-04"  # lect09 - Week 5 Wed
  "2026-02-09"  # lect10 - Week 6 Mon
  "2026-02-11"  # lect11 - Week 6 Wed
  "2026-02-18"  # lect12 - Week 7 Wed (Presidents Day Mon 2/16 - no class)
  "2026-02-23"  # lect13 - Week 8 Mon
  "2026-02-25"  # lect14 - Week 8 Wed
  "2026-03-02"  # lect15 - Week 9 Mon
  "2026-03-04"  # lect16 - Week 9 Wed
  "2026-03-09"  # lect17 - Week 10 Mon
  "2026-03-11"  # lect18 - Week 10 Wed
)

# Update lecture dates
for i in {1..18}; do
  lect_num=$(printf "%02d" $i)
  lect_file="_lectures/lect${lect_num}.md"

  if [ -f "$lect_file" ]; then
    idx=$((i-1))
    new_date="${lecture_dates[$idx]}"

    # Use sed to replace the lecture_date line
    if [[ "$OSTYPE" == "darwin"* ]]; then
      # macOS sed requires backup extension
      sed -i '' "s/lecture_date: [0-9-]*/lecture_date: $new_date/" "$lect_file"
    else
      # Linux sed
      sed -i "s/lecture_date: [0-9-]*/lecture_date: $new_date/" "$lect_file"
    fi

    echo "Updated $lect_file to $new_date"
  fi
done

echo ""
echo "Updating lab assignment dates..."

# Lab assignments - typically due ~2 weeks after assigned
# lab01: Assigned Week 1 Mon, Due Week 2 Fri
sed -i '' 's/assigned: 2025-03-31/assigned: 2026-01-05/' _lab/lab01.md
sed -i '' 's/due: 2025-04-11/due: 2026-01-16/' _lab/lab01.md

# lab02: Assigned Week 2 Mon, Due Week 3 Fri
sed -i '' 's/assigned: 2025-04-07/assigned: 2026-01-12/' _lab/lab02.md
sed -i '' 's/due: 2025-04-18/due: 2026-01-23/' _lab/lab02.md

# lab03: Assigned Week 3 Wed, Due Week 4 Fri
sed -i '' 's/assigned: 2025-04-16/assigned: 2026-01-21/' _lab/lab03.md
sed -i '' 's/due: 2025-04-25/due: 2026-01-30/' _lab/lab03.md

# lab04: Assigned Week 4 Mon, Due Week 5 Fri
sed -i '' 's/assigned: 2025-04-21/assigned: 2026-01-26/' _lab/lab04.md
sed -i '' 's/due: 2025-05-02/due: 2026-02-06/' _lab/lab04.md

# lab05: Assigned Week 6 Mon, Due Week 7 Fri
sed -i '' 's/assigned: 2025-05-05/assigned: 2026-02-09/' _lab/lab05.md
sed -i '' 's/due: 2025-05-16/due: 2026-02-20/' _lab/lab05.md

# lab06: Assigned Week 8 Mon, Due Week 9 Fri
sed -i '' 's/assigned: 2025-05-19/assigned: 2026-02-23/' _lab/lab06.md
sed -i '' 's/due: 2025-05-30/due: 2026-03-06/' _lab/lab06.md

echo "Updated lab assignment dates"

echo ""
echo "Updating programming assignment dates..."

# PA assignments - typically 3 week assignments
# pa01: Assigned Week 4 Mon, Due Week 7 Fri
sed -i '' 's/assigned: 2025-04-25/assigned: 2026-01-26/' _pa/pa01.md
sed -i '' 's/due: 2025-05-16/due: 2026-02-20/' _pa/pa01.md

# pa02: Assigned Week 5 Mon, Due Week 8 Fri
sed -i '' 's/assigned: 2025-05-01/assigned: 2026-02-02/' _pa/pa02.md
sed -i '' 's/due: 2025-05-23/due: 2026-02-27/' _pa/pa02.md

# pa03: Assigned Week 7 Wed, Due Finals Week
sed -i '' 's/assigned: 2025-05-14/assigned: 2026-02-18/' _pa/pa03.md
sed -i '' 's/due: 2025-06-06/due: 2026-03-18/' _pa/pa03.md

# pa03-tutorial
if [ -f "_pa/pa03-tutorial.md" ]; then
  sed -i '' 's/assigned: 2025-05-14/assigned: 2026-02-18/' _pa/pa03-tutorial.md
  sed -i '' 's/due: 2025-06-06/due: 2026-03-18/' _pa/pa03-tutorial.md
fi

echo "Updated programming assignment dates"

echo ""
echo "Updating LeetCode practice dates..."

# LeetCode practice sets - weekly releases
# lp01: Week 2
sed -i '' 's/assigned: 2025-04-07/assigned: 2026-01-12/' _lp/lp01.md
sed -i '' 's/due: 2025-04-18/due: 2026-01-23/' _lp/lp01.md

# lp02: Week 4
sed -i '' 's/assigned: 2025-04-21/assigned: 2026-01-26/' _lp/lp02.md
sed -i '' 's/due: 2025-05-02/due: 2026-02-06/' _lp/lp02.md

# lp03: Week 6
sed -i '' 's/assigned: 2025-05-05/assigned: 2026-02-09/' _lp/lp03.md
sed -i '' 's/due: 2025-05-16/due: 2026-02-20/' _lp/lp03.md

# lp04: Week 7
sed -i '' 's/assigned: 2025-05-12/assigned: 2026-02-18/' _lp/lp04.md
sed -i '' 's/due: 2025-05-23/due: 2026-02-27/' _lp/lp04.md

# lp05: Week 9
sed -i '' 's/assigned: 2025-05-26/assigned: 2026-03-02/' _lp/lp05.md
sed -i '' 's/due: 2025-06-06/due: 2026-03-13/' _lp/lp05.md

echo "Updated LeetCode practice dates"

echo ""
echo "All dates updated successfully!"
echo ""
echo "Summary:"
echo "- 18 lectures updated to MW schedule (Jan 5 - Mar 11)"
echo "- Holidays accounted for: MLK Day (1/19), Presidents Day (2/16)"
echo "- 6 lab assignments updated"
echo "- 3 programming assignments updated"
echo "- 5 LeetCode practice sets updated"
echo ""
echo "Please review the changes and restart Jekyll to see the updates."
