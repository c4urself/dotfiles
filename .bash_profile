#SVN
export SVN_EDITOR=nano
export PATH="/lol/bin:/lol/sbin:$PATH"

#VIRTUALENVWRAPPER
export WORKON_HOME=$HOME/Sites/.virtualenvs
export PROJECT_HOME=$HOME/Sites
source /usr/local/bin/virtualenvwrapper.sh


#PGDATA
export PGDATA=/Library/PostgresSQL/9.0/data

export MAVEN_OPTS='-Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=256m -Djava.util.logging.config.file=/Users/christianverkerk/Sites/ziggo/logging.properties'


test -r /sw/bin/init.sh && . /sw/bin/init.sh

#POSTGRES
PATH="${PATH}:/Library/PostgreSQL/9.0/bin"
alias psql=/Library/PostgreSQL/9.0/bin/psql

#MYSQL
PATH="${PATH}:/usr/local/mysql/bin"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##
# Your previous /Users/christianverkerk/.bash_profile file was backed up as /Users/christianverkerk/.bash_profile.macports-saved_2012-03-06_at_21:39:13
##

# MacPorts Installer addition on 2012-03-06_at_21:39:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

