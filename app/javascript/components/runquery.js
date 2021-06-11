<%= blazer_js_var "data", {statement: query.statement, query_id: query.id, data_source: query.data_source, only_chart: true} %>;

const runQuery = (data, function (data) {
    $("#chart-<%= query.id %>").html(data)
    $("#chart-<%= query.id %> table").stupidtable(stupidtableCustomSettings)
  }, function (message) {
    $("#chart-<%= query.id %>").addClass("query-error").html(message)
  });

  export { runQuery };