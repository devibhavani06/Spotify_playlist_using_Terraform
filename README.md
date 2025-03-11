This project automates the creation of Spotify playlists using Terraform, providing a streamlined way to manage and organize your favorite songs via Infrastructure as Code (IaC).

🚀 Features
   Automates Spotify playlist creation using Terraform.
   Efficiently manages playlist details such as name, description, and track additions.
   Ensures reproducibility and scalability with Terraform configuration files.



🛠 Tech Stack
   Terraform – Infrastructure as Code (IaC) tool.
   HCL – Configuration language used in Terraform.
   Spotify API – For playlist creation and management.
   Git – Version control system.
   VS Code – Code editor for development and debugging.



📂 Project Structure:-
   Spotify-Terraform/
   ─> providers.tf
   ─> variables.tf
   ─> .gitignore
   ─> README.md



⚙ Setup Instructions
1. Clone the Repository:-
   git clone https://github.com/devibhavani06/Spotify_playlist_using_Terraform.git
   cd Spotify_playlist_using_Terraform

3. Install Terraform:-
   Download and install Terraform from the official website.

4. Set Up Spotify Developer Account:-
   Visit the Spotify Developer Dashboard.
   Create an application and note your Client ID and Client Secret.

5. Add Spotify Credentials to Environment Variables:-
   export SPOTIFY_CLIENT_ID=your_client_id
   export SPOTIFY_CLIENT_SECRET=your_client_secret

7. Initialize Terraform:-
   terraform init

8. Apply Terraform Configuration:-
   terraform apply

10. Confirm Playlist Creation:-
    After successful execution, check your Spotify account for the newly created playlist.




📝 .gitignore
Recommended .gitignore entries:
*.tfstate
*.tfstate.backup
.terraform/
terraform.tfvars
*.log
.env




🚨 Troubleshooting
Error: pathspec '.' did not match any files
Solution: Run git rm -r --cached . followed by git add . to refresh the Git cache.

Error: Spotify API authentication failure
Solution: Double-check your Client ID and Client Secret.


