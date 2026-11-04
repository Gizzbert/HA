#!/bin/bash
# ha-push.sh – snel committen en pushen van Home Assistant config


# Status tonen
echo "=== Git status ==="
git status --short

# Alles toevoegen (respecteert .gitignore)
git add -A

# Check of er iets te committen is
if git diff --cached --quiet; then
  echo "Geen wijzigingen om te committen."
  exit 0
fi

# Commit met timestamp
git commit -m "Update HA config $(date '+%Y-%m-%d %H:%M')"

# Pushen
echo "=== Pushing ==="
git push

echo "Klaar."

