$(document).ready(function () {
    var ctx = document.getElementById('myChart3').getContext('2d');
                $.ajax({
                url: 'controller/gestionFiliere.php',
                        data: {op: 'countclasses'},
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                                var x = Array();
                                var y = Array();
                                data.forEach(function (e) {
                                        x.push(e.libelle);
                                        y.push(e.nbrclasses);
                                });
                                showGraph(x, y);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                        console.log(textStatus);
                        }
                });
                        var haha= [
                        'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                        ];
                function showGraph(x, y) {
                    var myChart = new Chart(ctx, {
                        type: 'pie',
                        data: {
                            labels: x,
                            datasets: [{
                                    data: y,
                                    backgroundColor: [
                                        'rgba(255, 99, 132, 0.2)',
                                        'rgba(54, 162, 235, 0.2)',
                                        'rgba(255, 206, 86, 0.2)',
                                        'rgba(75, 192, 192, 0.2)',
                                        'rgba(153, 102, 255, 0.2)',
                                        'rgba(255, 159, 64, 0.2)'
                                    ],
                                    borderColor: [
                                        'rgba(255, 99, 132, 1)',
                                        'rgba(54, 162, 235, 1)',
                                        'rgba(255, 206, 86, 1)',
                                        'rgba(75, 192, 192, 1)',
                                        'rgba(153, 102, 255, 1)',
                                        'rgba(255, 159, 64, 1)'
                                    ],
                                    borderWidth: 1
                                }]
                        },
                        options: {
                           
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'right',
                                    
                                    labels: {
                                        generateLabels: function (myChart) {
                                            return myChart.data.labels.map(function (label, i) {
                                                return {
                                                    
                                                    text: label,
                                                    fillStyle: haha[i]
                                                    
                                                };
                                            });
                                        }
                                    }
                                },
                                
                                title: {
                                    display: true,
                                    text: 'Nombre des classes par filière'
                                }
                            },
                            scales: {
                                y: {
                                    title: {
                                        display: true,
                                        text: 'Nombre des classes'
                                    }
                                },
                                x: {
                                    title: {
                                        display: true,
                                        text: 'Filière'
                                    }
                                }
//                                ,
//                                yAxes: [{
//					ticks: {
//						beginAtZero: true
//					}
//				}]
                            }
                        }
                    });
                }
    ;
});