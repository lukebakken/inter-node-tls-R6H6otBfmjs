@echo off
rem NOTE: If spaces are present in any of these paths,
rem double quotes must be used.

rem NOTE: the following path is **system dependent** and will vary between Erlang versions
rem       and installation paths
set SSL_PATH="C:/Program Files/erl-23.1.1/lib/ssl-10.1/ebin"

rem -pa $ERL_SSL_PATH prepends the directory ERL_SSL_PATH points at to the code path
rem -proto_dist inet_tls tells the runtime to encrypt inter-node communication
rem -ssl_dist_optfile tells the runtime where to find its inter-node TLS configuration file
set SERVER_ADDITIONAL_ERL_ARGS=-pa %SSL_PATH% -proto_dist inet_tls -ssl_dist_optfile "C:/Users/x-lbakken/AppData/Roaming/RabbitMQ/inter_node_tls.config"

rem Same as above but for CLI tools
set CTL_ERL_ARGS=-pa %SSL_PATH% -proto_dist inet_tls -ssl_dist_optfile "C:/Users/x-lbakken/AppData/Roaming/RabbitMQ/inter_node_tls.config"
