FROM asia-northeast1-docker.pkg.dev/cloud-workstations-images/predefined/intellij-ultimate:latest

RUN apt -y update && \
    apt -y upgrade &&  \
    apt -y install curl zip unzip

RUN curl -s "https://get.sdkman.io" | bash && \
    sed -i 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' $HOME/.sdkman/etc/config && \
    sed -i 's/sdkman_selfupdate_feature=true/sdkman_selfupdate_feature=false/g' $HOME/.sdkman/etc/config && \
    sed -i 's/sdkman_colour_enable=true/sdkman_colour_enable=false/g' $HOME/.sdkman/etc/config

ENV BASH_ENV="\$HOME/.sdkman/bin/sdkman-init.sh"
