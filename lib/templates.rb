template :layout do
  <<-eos
  <html>
  <head>
  <title>Teachers Pet</title>
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/foundation/5.2.3/css/foundation.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://code.highcharts.com/highcharts.js"></script>
  <link rel="stylesheet" href="all.css">
  </head>
  <body class="row">
    <div class="header">
      <span class="title"><a href="/">Teachers Pet</a></span>
      <span class="button-wrapper">
        <a href="/rubocop" class="button success">Rubocop</a>
        <a href="/simplecov" class="button">SimpleCov</a>
      </span>
    </div>

    <%= yield %>
  </body>
  </html>
  eos
end

template :index do
  <<-eos
  <p class="text-center panel">An app to monitor your Style Offenses and Test Coverage</p>
  eos
end

template :simplecov do
  <<-eos
  <center><h2 class="sub-header">SimpleCov Test Coverage</h2></center>
  <div class="row">

    <div class="chart-wrapper">
      <h3 class="chart-header">Nemo</h3>
      <center>
        <%= high_chart "Nemo", nemo_simplecov_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Lenny</h3>
      <center>
        <%= high_chart "Lenny", lenny_simplecov_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Holmes</h3>
      <center>
        <%= high_chart "Holmes", holmes_simplecov_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Panda</h3>
      <center>
        <%= high_chart "Panda", panda_simplecov_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Manisero</h3>
      <center>
        <%= high_chart "Manisero", manisero_simplecov_chart %>
      </center>
    </div>

    </div>
  eos
end

template :rubocop do
  <<-eos
  <center><h2 class="sub-header">Rubocop Offenses</h2></center>
  <div>
    <div class="chart-wrapper">
      <h3 class="chart-header">Nemo</h3>
      <center>
        <%= high_chart "Nemo", nemo_rubocop_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Lenny</h3>
      <center>
        <%= high_chart "Lenny", lenny_rubocop_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Holmes</h3>
      <center>
        <%= high_chart "Holmes", holmes_rubocop_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
    <h3 class="chart-header">Panda</h3>
      <center>
        <%= high_chart "Panda", panda_rubocop_chart %>
      </center>
    </div>

    <div class="chart-wrapper">
      <h3 class="chart-header">Manisero</h3>
      <center>
        <%= high_chart "Manisero", manisero_rubocop_chart %>
      </center>
    </div>

  </div>
  eos
end

