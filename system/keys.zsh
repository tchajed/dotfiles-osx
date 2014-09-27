# Pipe my public key to my clipboard.
function pubkey() {
	cat ~/.ssh/id_rsa.pub | pbcopy
	echo '=> Public key copied to pasteboard.'
}
