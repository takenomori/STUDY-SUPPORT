#Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
stringDate =(date)->
    return date.getMonth()+'/'+date.getDate()

window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')

    d = new Date();
    oneDay = 3600000*24
    days = [stringDate(d)];
    for i in [1..6]
        wd = new Date(d-oneDay*i)
        days.unshift(stringDate(wd))

    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: days,
            datasets: [{
                label: '# of Votes',
                data: [gon.time0, gon.time1, gon.time2, gon.time3, gon.time4, gon.time5, gon.time6],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
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
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })