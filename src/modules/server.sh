# $Id$

server_init() {
	if [ -n "$(echo ${server} | grep :)" ]; then
		server_host=$(echo "${server}" | cut -d : -f 1)
		server_port=$(echo "${server}" | cut -d : -f 2)
	else
		server_host=${server}
	fi
	
	mac_address=$(get_mac_address)
	
	if [ -z "${server_port}" ]; then
	server_port=8899
	fi
}

server_send_request() {
	local command="${1}"
	local args="${2}"

	fetch "stage7:///${command}?${args}" "/tmp/server_response"
	cat /tmp/server_response
}

server_get_profile() {
	local profile_uri=$(server_send_request "get_profile_path" "mac=${mac_address}")
	if [ -z "${profile_uri}" ]; then
		warn "Error in response the from server...could not retrieve profile URI."
		return 1
	else
		debug server_get_profile "profile URI is ${profile_uri}"
		if ! fetch "${profile_uri}" "/tmp/stage7_profile"; then
			error "Could not fetch a profile."
			exit 1
		fi
		notify "Fetched profile from ${profile_uri}"
	fi
}

pre_failure_cleanup() {
	if [ -n "${server_host}" ]; then
		warn "We should tell the server something went wrong..."
	fi
}
