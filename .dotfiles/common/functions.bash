function mkdircd() { 
	mkdir -p "$@" && eval cd "\"\$$#\""; 
}

function mkcd() {
	mkdir -p "$@" && eval cd "\"\$$#\""; 
}

function cdd() {
	cd "$@" && ls;
}

function cdl() {
	cd "$@" && ls;
}

function cdls() {
	cd "$@" && ls;
}

function cdll() {
    to_call="ls -al"
	cd "$@" && $to_call;
}