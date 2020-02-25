# Custom-Flutter-Templates
This is used to replace your current flutter app template upon "flutter create"

# How To Use:

   1. Clone the repository
   2. Locate your downloaded flutter install folder and navigate to {your-flutter-install}/packages/flutter-tools/templates/app/
   3. Delete the "lib" folder and replace with this repository's "lib" folder
       - If you decide in the future you want to revert to the original go to step 7
   4. Add "assets.tmpl" folder
   5. Add "pubspec.yaml" file
   6. [OPTIONAL] Copy *your* .vscode folder
       - ? This is nice to keep your emulator configurations/settings consitent throughout your projects
       - add ".tmpl" to the folder name, result should be like ".vscode.tmpl"
            - This tells flutter to import all files within without modifications
   
   7. *IF YOU WISH TO REVERT BACK TO THE ORIGINAL*
   8. Delete anything that you have added, including
        - The "lib" folder
        - The "assets.tmpl" folder
        - The ".vscode.tmpl" folder
   9. Run "flutter upgrade --force"
