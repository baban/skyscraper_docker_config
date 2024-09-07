
sudo useradd vagrant
sudo mkdir -p  /home/vagrant/docker/
sudo mkdir -p  /home/vagrant/docker/data/wiki_backup
sudo chmod 777 /home/vagrant/docker/data/wiki_backup
sudo mkdir -p  /home/vagrant/docker/data/mysql
sudo chmod 777 /home/vagrant/docker/data/mysql
sudo mkdir -p  /home/vagrant/docker/data/upload_files
sudo chmod 777 /home/vagrant/docker/data/upload_files

git clone https://github.com/baban/skyscraper_html_contents.git html_contents 
git clone https://github.com/baban/skyscraper_publify_theme.git themes/baban

