# uhum

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---
## Code Push Steps

Follow the below steps to contribute changes in the master branch:

1. Download git CLI and clone the project into your machine.

2. To add a new feature create the branch with syntax `feature/<branch-name>` (replace <branch-name> with the name of your branch). Keep the branch name relevant to the feature      you are adding. To add a bug-fix, create follow the same but start branch name with `bugfix` instead of `feature`.
```
git branch feature/<branch-name>
git checkout feature/<branch-name>
```
  
3. Make the changes into your branch.

4. Add the new and updated files.
```
# Check the files changed
git status
git add <space seperated list of files changed and to be added>
```
5. Commit the changes
```
git commit -m "<Add a relevant message for the changes you have made in the added files>"
```
**Note: Add a relevant message with all commits.**

6. Push the changes into your branch
```
git push origin <branch-name>
```
**Note: Always give your branch name in the push command.**

7. Create a PR to push your changes into master branch. 
- Go the UI and click on `Pull Requests`
- Click on `New Pull Request`
- In the `base` select `master` or any other branch you want to merge your changes and in `compare` select your branch.
- In the description, add details of what changes have been done to this branch.
- Create the Pull request
- Pull request can be merged after the default reviewers has approved the changes.



### To install firebase_auth and cloud_firestore packages in your system:
```
flutter pub get
```

To Do:
- [x] Add firebase_auth package
- [x] Add cloud_firestore package
- [ ] Add google-services.json file in /android/app directory (needed for firebase)
- [ ] Add google-services dependency in /android/build.gradle (needed for firebase)
- [ ] Apply google-services plugin in /android/app/build.gradle (needed for firebase)