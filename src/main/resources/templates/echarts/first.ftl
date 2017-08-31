<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="${base}/static/js/echarts.min.js"></script>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            //show:false,//是否显示标题
            text: 'ECharts 入门示例',//标题名称
            link: 'http://www.baidu.com',//标题链接
            target: 'blank',//是否在当前窗口打开（self,blank）；
            textStyle: {
                color: '#f0f',
                align: 'right'
            },
            subtext: '学习'
        },
        tooltip: {},
        legend: {
            left: 'center',
            show: true,
            width:1000,
            height:10,
            orient: 'vertical',
            // 使用回调函数
            formatter: function (name) {
                return 'Legend ' + name;
            },
            data:['销量','年份']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>