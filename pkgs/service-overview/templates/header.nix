{ lib
, lang ? "en"
, title ? "Service Overview"
, robots ? "noindex, nofollow"
, author ? "" }:

''
  <!DOCTYPE html>
  <html lang="${lang}">
    <head>
      <title>${title}</title>
      <link rel="shortcut icon" href="assets/img/favicons/favicon.ico">
      <link rel="icon" href="assets/img/favicons/favicon.png">
      <link rel="stylesheet" href="assets/css/spectre.min.css">
      <link rel="stylesheet" href="assets/css/spectre-icons.min.css">
      <link rel="stylesheet" href="assets/css/spectre-exp.min.css">
      <link rel="stylesheet" href="assets/css/custom.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, shrink-to-fit=no">
      <meta charset="utf-8">
      <meta name="generator" content="Nix">
      <meta name="robots" content="${robots}">
'' + lib.optionalString (author != "") ''
      <meta name="author" content="${author}">
'' + ''
    </head>
  <body>
    <header class="navbar">
      <section class="navbar-section">
      </section>
      <section class="navbar-center m-1">
      <img class="logo" src="assets/img/logo.png" alt="Mayflower Logo" />
      <h3 class="text-bold logo-text">${title}</h3>
      </section>
      <section class="navbar-section">
      </section>
    </header>
    <div class="container grid-lg">
      <div class="columns">
        <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th class="hide-sm"><h5 class="text-bold">Service</h5></th>
              <th class="hide-sm"><h5 class="text-bold">Address</h5></th>
              <th class="hide-sm"><h5 class="text-bold">Info</h5></th>
              <th class="hide-sm"><h5 class="text-bold">Status</h5></th>
            </tr>
          </thead>
          <tbody>
''
