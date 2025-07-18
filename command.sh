# 1. Create a new React app
npx create-react-app my-app
cd my-app

# 2. Initialize git and commit
git init
git add .
git commit -m "Initial commit: Create React App"

# 3. Create GitHub repo and push
gh repo create my-app --public --source=. --remote=origin --push

# 4. Switch to update_logo branch
git checkout -b update_logo

# 5. Download and replace logo
wget -O src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Edit src/App.js to update link to https://www.propelleraero.com/dirtmate/

# 6. Commit and push updated logo and link
git add src/logo.svg src/App.js
git commit -m "Update logo and link to Propeller Aero"
git push --set-upstream origin update_logo

# 7. Create PR from update_logo to master
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replace logo and update link to Propeller Aero Dirtmate"

# 8. Merge PR (no approval required)
gh pr merge --merge

# REPO_URL <your_public_github_url>
