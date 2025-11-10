enum AppFlavor { dev, prod }


class Env {
Env._(this.flavor, this.apiBaseUrl, this.wsUrl);


static late Env _i;
static Env get I => _i;


final AppFlavor flavor;
final String apiBaseUrl;
final String wsUrl;


static void init({required AppFlavor flavor, required String apiBaseUrl, required String wsUrl}) {
_i = Env._(flavor, apiBaseUrl, wsUrl);
}
}