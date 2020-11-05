https://groups.google.com/forum/?oldui=1#!topic/rabbitmq-users/R6H6otBfmjs

* Install Erlang 23.1.1 via `exe` installer (https://github.com/erlang/otp/releases/download/OTP-23.1.1/otp_win64_23.1.1.exe)
* Install RabbitMQ 3.8.9 via `exe` installer.
* Generate certificates using the `basic` profile of this project: https://github.com/michaelklishin/tls-gen
* Open an administrative command prompt (user `x-lbakken`) and do the following:
    ```
    cd C:\Program Files\RabbitMQ Server\rabbitmq_server-3.8.9
    .\sbin\rabbitmq-service.bat stop
    .\sbin\rabbitmq-service.bat remove
    ```
* Close that administrative command prompt and open a new one. Do the following:
    ```
    mkdir %AppData%\RabbitMQ\certs
    copy *.pem %AppData%\RabbitMQ\certs
    copy inter_node_tls.config %AppData%\RabbitMQ 
    copy rabbitmq-env-conf.bat %AppData%\RabbitMQ 
    cd C:\Program Files\RabbitMQ Server\rabbitmq_server-3.8.9
    .\sbin\rabbitmq-service.bat install
    .\sbin\rabbitmq-service.bat start
    .\sbin\rabbitmqctl.bat status
    ```
