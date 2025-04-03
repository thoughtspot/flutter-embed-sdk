// ignore_for_file: constant_identifier_names

enum EmbedType {
  LiveboardEmbed("Liveboard"),
  SearchEmbed("SearchEmbed");

  final String value;
  const EmbedType(this.value);
}

enum IncomingShellMessageType {
  INIT_VERCEL_SHELL("INIT_VERCEL_SHELL"),
  REQUEST_AUTH_TOKEN("REQUEST_AUTH_TOKEN"),
  EMBED_EVENT("EMBED_EVENT"),
  HOST_EVENT_REPLY("HOST_EVENT_REPLY");

  final String value;
  const IncomingShellMessageType(this.value);
}

enum OutgoingShellMessageType {
  INIT("INIT"),
  EMBED("EMBED"),
  HOST_EVENT("HOST_EVENT"),
  AUTH_TOKEN_RESPONSE("AUTH_TOKEN_RESPONSE");

  final String value;
  const OutgoingShellMessageType(this.value);
}
