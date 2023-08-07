class Models {
  String? name;
  String? version;
  String? main;
  String? author;
  Scripts? scripts;
  Engines? engines;
  String? license;
  Dependencies? dependencies;
  DevDependencies? devDependencies;

  Models(
      {this.name,
        this.version,
        this.main,
        this.author,
        this.scripts,
        this.engines,
        this.license,
        this.dependencies,
        this.devDependencies, required title, required url});

  Models.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    version = json['version'];
    main = json['main'];
    author = json['author'];
    scripts =
    json['scripts'] != null ? new Scripts.fromJson(json['scripts']) : null;
    engines =
    json['engines'] != null ? new Engines.fromJson(json['engines']) : null;
    license = json['license'];
    dependencies = json['dependencies'] != null
        ? new Dependencies.fromJson(json['dependencies'])
        : null;
    devDependencies = json['devDependencies'] != null
        ? new DevDependencies.fromJson(json['devDependencies'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['version'] = this.version;
    data['main'] = this.main;
    data['author'] = this.author;
    if (this.scripts != null) {
      data['scripts'] = this.scripts!.toJson();
    }
    if (this.engines != null) {
      data['engines'] = this.engines!.toJson();
    }
    data['license'] = this.license;
    if (this.dependencies != null) {
      data['dependencies'] = this.dependencies!.toJson();
    }
    if (this.devDependencies != null) {
      data['devDependencies'] = this.devDependencies!.toJson();
    }
    return data;
  }
}

class Scripts {
  String? start;
  String? dev;

  Scripts({this.start, this.dev});

  Scripts.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    dev = json['dev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['dev'] = this.dev;
    return data;
  }
}

class Engines {
  String? node;

  Engines({this.node});

  Engines.fromJson(Map<String, dynamic> json) {
    node = json['node'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['node'] = this.node;
    return data;
  }
}

class Dependencies {
  String? compression;
  String? cors;
  String? ejs;
  String? express;
  String? expressRateLimit;
  String? helmet;
  String? jsonwebtoken;
  String? mongodb;
  String? mongoose;
  String? multer;
  String? onFinished;
  String? onHeaders;

  Dependencies(
      {this.compression,
        this.cors,
        this.ejs,
        this.express,
        this.expressRateLimit,
        this.helmet,
        this.jsonwebtoken,
        this.mongodb,
        this.mongoose,
        this.multer,
        this.onFinished,
        this.onHeaders});

  Dependencies.fromJson(Map<String, dynamic> json) {
    compression = json['compression'];
    cors = json['cors'];
    ejs = json['ejs'];
    express = json['express'];
    expressRateLimit = json['express-rate-limit'];
    helmet = json['helmet'];
    jsonwebtoken = json['jsonwebtoken'];
    mongodb = json['mongodb'];
    mongoose = json['mongoose'];
    multer = json['multer'];
    onFinished = json['on-finished'];
    onHeaders = json['on-headers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['compression'] = this.compression;
    data['cors'] = this.cors;
    data['ejs'] = this.ejs;
    data['express'] = this.express;
    data['express-rate-limit'] = this.expressRateLimit;
    data['helmet'] = this.helmet;
    data['jsonwebtoken'] = this.jsonwebtoken;
    data['mongodb'] = this.mongodb;
    data['mongoose'] = this.mongoose;
    data['multer'] = this.multer;
    data['on-finished'] = this.onFinished;
    data['on-headers'] = this.onHeaders;
    return data;
  }
}

class DevDependencies {
  String? envCmd;
  String? eslint;
  String? eslintConfigAirbnbBase;
  String? eslintConfigPrettier;
  String? eslintPluginImport;
  String? eslintPluginPrettier;
  String? nodemon;
  String? prettier;

  DevDependencies(
      {this.envCmd,
        this.eslint,
        this.eslintConfigAirbnbBase,
        this.eslintConfigPrettier,
        this.eslintPluginImport,
        this.eslintPluginPrettier,
        this.nodemon,
        this.prettier});

  DevDependencies.fromJson(Map<String, dynamic> json) {
    envCmd = json['env-cmd'];
    eslint = json['eslint'];
    eslintConfigAirbnbBase = json['eslint-config-airbnb-base'];
    eslintConfigPrettier = json['eslint-config-prettier'];
    eslintPluginImport = json['eslint-plugin-import'];
    eslintPluginPrettier = json['eslint-plugin-prettier'];
    nodemon = json['nodemon'];
    prettier = json['prettier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['env-cmd'] = this.envCmd;
    data['eslint'] = this.eslint;
    data['eslint-config-airbnb-base'] = this.eslintConfigAirbnbBase;
    data['eslint-config-prettier'] = this.eslintConfigPrettier;
    data['eslint-plugin-import'] = this.eslintPluginImport;
    data['eslint-plugin-prettier'] = this.eslintPluginPrettier;
    data['nodemon'] = this.nodemon;
    data['prettier'] = this.prettier;
    return data;
  }
}