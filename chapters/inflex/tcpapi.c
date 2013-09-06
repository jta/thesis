...
if (is_inflex(pkt)) {
  if (!is_inflex(sock) ||
      (is_pending(sock) && is_reply(pkt))) {
	  copy_label(sock, pkt);
	  clear_echo(sock);
  }

} else if (is_inflex(sock))
  clear_inflex(sock)
...
