# Setup
Run `git submodule init` to initialize all submodules. To update the projects run `git submodule update`. To pull the latest changes from each submodule run `git submodule foreach git pull`. For further information of the usage of git submodules look at the offical [documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

Create a file with the name `cookie_password.txt` in which the at least 32 characters long secret key for the cookie is stored.
Run `docker compose build` and `docker compose up -d` to start the container. 

# Git Access on the VM
We currently rely on SSH agent forwarding to have easy access to our git repositories on the VM we use for deployment. Checkout the official [documentation](https://docs.github.com/en/developers/overview/using-ssh-agent-forwarding) for further information.