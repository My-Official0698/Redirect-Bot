if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DesiBots/Redirect-Bot.git /repo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /repo
fi
cd /repo
pip3 install -U -r requirements.txt
echo "Starting Kylie Bot🔥...."
python3 bot.py
