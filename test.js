var t1 = {
  x: [1, 2, 3, 4],
  y: [1, 2, 3, 4],
  mode:markers
};

var t2 = {
  x: [2, 3, 4, 5],
  y: [2, 3, 4, 5],
  mode:markers
};

var data = [ t1, t2 ];

var layout = {
  title: "Hello!"
};

Plotly.newPlot('firstplot', data, layout);
