#!/bin/bash

api="https://www.amiiboapi.com/api"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_amiibo_by_id() {
	# 1 - id: (string): <amiibo id>
	curl --request GET \
		--url "$api/amiibo/${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_by_name() {
	# 1 - name: (string): <amiibo name>
	curl --request GET \
		--url "$api/amiibo/?name=${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_by_game_series() {
	# 1 - game_series: (string): <amiibo game series>
	curl --request GET \
		--url "$api/amiibo/?gameseries=${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_by_character() {
	# 1 - character: (string): <amiibo character>
	curl --request GET \
		--url "$api/amiibo/?character=${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_by_amiibo_series() {
	# 1 - amiibo_series: (string): <amiibo series>
	curl --request GET \
		--url "$api/amiibo/?amiiboSeries=${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_by_type() {
	# 1 - type: (string): <amiibo type>
	curl --request GET \
		--url "$api/amiibo/?type=${1}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_list() {
	# 1 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/amiibo/?page=${1:-0}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_list_by_character() {
	# 1 - character: (string): <amiibo character>
	# 2 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/amiibo/?character=${1}&page=${2:-0}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_amiibo_list_by_amiibo_series() {
	# 1 - amiibo_series: (string): <amiibo series>
	# 2 - page: (integer): <page - default: 0>
	curl --request GET \
		--url "$api/amiibo/?amiiboSeries=${1}&page=${2:-0}" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}
