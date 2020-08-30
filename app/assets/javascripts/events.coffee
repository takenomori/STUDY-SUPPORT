#Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
stringDate =(date)->
    return date.getMonth()+1+'/'+date.getDate()

window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')

    today = new Date();
    oneDay = 3600000*24
    days = [stringDate(today)];
    for i in [1..6]
        wd = new Date(today-oneDay*i)
        days.unshift(stringDate(wd))

    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: days,
            datasets: [{
                label: '勉強時間',
                data: [gon.time6, gon.time5, gon.time4, gon.time3, gon.time2, gon.time1, gon.time0],
                borderWidth: 2,
                backgroundColor: ['rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)'],
                borderColor: ['rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)'],
            },
            ## 積み重ね式のグラフ表示なら、二段目以降株のように追記していく
            # {
            #     label: '勉強時間',
            #     data: [gon.time6, gon.time5, gon.time4, gon.time3, gon.time2, gon.time1, gon.time0],
            #     borderWidth: 2,
            #     backgroundColor: ['rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)','rgba(54, 162, 235, 0.2)'],
            #     borderColor: ['rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)','rgba(54, 162, 235, 1)'],
            # },
            ]
        },
        options: {
            responsive: false,
            maintainAspectRatio: true,
            title: {
                display: false,
                text: '勉強時間', #グラフの見出し#
                padding:1
            },
            scales: {
                xAxes: [{
                    stacked: true, #積み上げ棒グラフにする設定#
                    categoryPercentage:0.4 #棒グラフの太さ#
                }],
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    },
                    stacked: true #積み上げ棒グラフにする設定#
                }]
            },
            legend: {
                labels: {
                    boxWidth:30,
                    padding:20 #凡例の各要素間の距離#
                },
                display: true
            },
            tooltips:{
            mode:'label' #マウスオーバー時に表示されるtooltip#
            }
        }
    })