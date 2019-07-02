<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

	
	<%@ include file="/WEB-INF/views/include/head.jsp"%>
	
	<!-- css 넣으세요 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/chart.css">
	
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<!-- 본문 시작 -->
	<!-- ##### Blog Wrapper Area Start ##### -->
    <div class="single-blog-wrapper">

        <!-- Single Blog Post Thumb -->
        <div class="single-blog-post-thumb">
            <img src="${pageContext.request.contextPath}/resources/img/bg-img/bg-7.jpg" alt="">
        </div>

        <!-- Single Blog Content Wrap -->
        <div class="single-blog-content-wrapper d-flex">

            <!-- Blog Content -->
            <div class="single-blog--text">

                <div id="chartdiv"></div>
                <table class="table">
                    <caption>표 제목</caption>
                    <tr><th>순위</th><th>태그</th><th>태그 가격</th><th>전주 대비</th><th>연관 태그1</th><th>연관 태그2</th></tr>
                    <tr><td>1</td><td>여름</td><td>30,000</td><td>+3</td><td>샌들</td><td>바다</td></tr>
                    <tr><td>2</td><td>여름</td><td>30,000</td><td>+3</td><td>샌들</td><td>바다</td></tr>
                    <tr><td>3</td><td>여름</td><td>30,000</td><td>+3</td><td>샌들</td><td>바다</td></tr>
                  </table> 
            </div>

            <!-- Related Blog Post -->
            <div class="related-blog-post">
                <!-- Single Related Blog Post -->
                <div class="single-related-blog-post" >
                    <img src="${pageContext.request.contextPath}/resources/img/bg-img/rp1.jpg" alt="">
                    <a href="#" >
                        <h5>한국어</h5>
                    </a>
                </div>
                <!-- Single Related Blog Post -->
                <div class="single-related-blog-post">
                    <img src="${pageContext.request.contextPath}/resources/img/bg-img/rp2.jpg" alt="">
                    <a href="#">
                        <h5>中國語</h5>
                    </a>
                </div>
                <!-- Single Related Blog Post -->
                <div class="single-related-blog-post">
                    <img src="${pageContext.request.contextPath}/resources/img/bg-img/rp3.jpg" alt="">
                    <a href="#">
                        <h5>日本語</h5>
                    </a>
                </div>
                <!-- Single Related Blog Post -->
                <div class="single-related-blog-post">
                    <img src="${pageContext.request.contextPath}/resources/img/bg-img/rp4.jpg" alt="">
                    <a href="#">
                        <h5>English</h5>
                    </a>
                </div>
            </div>

        </div>
    </div>
    <!-- ##### Blog Wrapper Area End ##### -->
	
	<!-- 본문 끝 -->
	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
    
    <!-- js파일 ! -->
        
    <!-- chart -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/plugins/wordCloud.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/dataviz.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
    am4core.ready(function() {
    
    // Themes begin
    am4core.useTheme(am4themes_dataviz);
    am4core.useTheme(am4themes_animated);
    // Themes end
    
    var chart = am4core.create("chartdiv", am4plugins_wordCloud.WordCloud);
    chart.fontFamily = "Courier New";
    var series = chart.series.push(new am4plugins_wordCloud.WordCloudSeries());
    series.randomness = 0.1;
    series.rotationThreshold = 0.5;
    
    series.data = [ {
        "tag": "javascript",
        "count": "1765836"
    }, {
        "tag": "java",
        "count": "1517355"
    }, {
        "tag": "c#",
        "count": "1287629"
    }, {
        "tag": "php",
        "count": "1263946"
    }, {
        "tag": "android",
        "count": "1174721"
    }, {
        "tag": "python",
        "count": "1116769"
    }, {
        "tag": "jquery",
        "count": "944983"
    }, {
        "tag": "html",
        "count": "805679"
    }, {
        "tag": "c++",
        "count": "606051"
    }, {
        "tag": "ios",
        "count": "591410"
    }, {
        "tag": "css",
        "count": "574684"
    }, {
        "tag": "mysql",
        "count": "550916"
    }, {
        "tag": "sql",
        "count": "479892"
    }, {
        "tag": "asp.net",
        "count": "343092"
    }, {
        "tag": "ruby-on-rails",
        "count": "303311"
    }, {
        "tag": "c",
        "count": "296963"
    }, {
        "tag": "arrays",
        "count": "288445"
    }, {
        "tag": "objective-c",
        "count": "286823"
    }, {
        "tag": ".net",
        "count": "280079"
    }, {
        "tag": "r",
        "count": "277144"
    }, {
        "tag": "node.js",
        "count": "263451"
    }, {
        "tag": "angularjs",
        "count": "257159"
    }, {
        "tag": "json",
        "count": "255661"
    }, {
        "tag": "sql-server",
        "count": "253824"
    }, {
        "tag": "swift",
        "count": "222387"
    }, {
        "tag": "iphone",
        "count": "219827"
    }, {
        "tag": "regex",
        "count": "203121"
    }, {
        "tag": "ruby",
        "count": "202547"
    }, {
        "tag": "ajax",
        "count": "196727"
    }, {
        "tag": "django",
        "count": "191174"
    }, {
        "tag": "excel",
        "count": "188787"
    }, {
        "tag": "xml",
        "count": "180742"
    }, {
        "tag": "asp.net-mvc",
        "count": "178291"
    }, {
        "tag": "linux",
        "count": "173278"
    }, {
        "tag": "angular",
        "count": "154447"
    }, {
        "tag": "database",
        "count": "153581"
    }, {
        "tag": "wpf",
        "count": "147538"
    }, {
        "tag": "spring",
        "count": "147456"
    }, {
        "tag": "wordpress",
        "count": "145801"
    }, {
        "tag": "python-3.x",
        "count": "145685"
    }, {
        "tag": "vba",
        "count": "139940"
    }, {
        "tag": "string",
        "count": "136649"
    }, {
        "tag": "xcode",
        "count": "130591"
    }, {
        "tag": "windows",
        "count": "127680"
    }, {
        "tag": "reactjs",
        "count": "125021"
    }, {
        "tag": "vb.net",
        "count": "122559"
    }, {
        "tag": "html5",
        "count": "118810"
    }, {
        "tag": "eclipse",
        "count": "115802"
    }, {
        "tag": "multithreading",
        "count": "113719"
    }, {
        "tag": "mongodb",
        "count": "110348"
    }, {
        "tag": "laravel",
        "count": "109340"
    }, {
        "tag": "bash",
        "count": "108797"
    }, {
        "tag": "git",
        "count": "108075"
    }, {
        "tag": "oracle",
        "count": "106936"
    }, {
        "tag": "pandas",
        "count": "96225"
    }, {
        "tag": "postgresql",
        "count": "96027"
    }, {
        "tag": "twitter-bootstrap",
        "count": "94348"
    }, {
        "tag": "forms",
        "count": "92995"
    }, {
        "tag": "image",
        "count": "92131"
    }, {
        "tag": "macos",
        "count": "90327"
    }, {
        "tag": "algorithm",
        "count": "89670"
    }, {
        "tag": "python-2.7",
        "count": "88762"
    }, {
        "tag": "scala",
        "count": "86971"
    }, {
        "tag": "visual-studio",
        "count": "85825"
    }, {
        "tag": "list",
        "count": "84392"
    }, {
        "tag": "excel-vba",
        "count": "83948"
    }, {
        "tag": "winforms",
        "count": "83600"
    }, {
        "tag": "apache",
        "count": "83367"
    }, {
        "tag": "facebook",
        "count": "83212"
    }, {
        "tag": "matlab",
        "count": "82452"
    }, {
        "tag": "performance",
        "count": "81443"
    }, {
        "tag": "css3",
        "count": "78250"
    }, {
        "tag": "entity-framework",
        "count": "78243"
    }, {
        "tag": "hibernate",
        "count": "76123"
    }, {
        "tag": "typescript",
        "count": "74867"
    }, {
        "tag": "linq",
        "count": "73128"
    }, {
        "tag": "swing",
        "count": "72333"
    }, {
        "tag": "function",
        "count": "72043"
    }, {
        "tag": "amazon-web-services",
        "count": "71155"
    }, {
        "tag": "qt",
        "count": "69552"
    }, {
        "tag": "rest",
        "count": "69138"
    }, {
        "tag": "shell",
        "count": "68854"
    }, {
        "tag": "azure",
        "count": "67431"
    }, {
        "tag": "firebase",
        "count": "66411"
    }, {
        "tag": "api",
        "count": "66158"
    }, {
        "tag": "maven",
        "count": "66113"
    }, {
        "tag": "powershell",
        "count": "65467"
    }, {
        "tag": ".htaccess",
        "count": "65014"
    }, {
        "tag": "sqlite",
        "count": "64888"
    }, {
        "tag": "file",
        "count": "62783"
    }, {
        "tag": "codeigniter",
        "count": "62393"
    }, {
        "tag": "unit-testing",
        "count": "61909"
    }, {
        "tag": "perl",
        "count": "61752"
    }, {
        "tag": "loops",
        "count": "61015"
    }, {
        "tag": "symfony",
        "count": "60820"
    }, {
        "tag": "selenium",
        "count": "59855"
    }, {
        "tag": "google-maps",
        "count": "59616"
    }, {
        "tag": "csv",
        "count": "59600"
    }, {
        "tag": "uitableview",
        "count": "59011"
    }, {
        "tag": "web-services",
        "count": "58916"
    }, {
        "tag": "cordova",
        "count": "58195"
    }, {
        "tag": "class",
        "count": "58055"
    }, {
        "tag": "numpy",
        "count": "57132"
    }, {
        "tag": "google-chrome",
        "count": "56836"
    }, {
        "tag": "ruby-on-rails-3",
        "count": "55962"
    }, {
        "tag": "android-studio",
        "count": "55801"
    }, {
        "tag": "tsql",
        "count": "55736"
    }, {
        "tag": "validation",
        "count": "55531"
    } ];
    
    series.dataFields.word = "tag";
    series.dataFields.value = "count";
    
    series.heatRules.push({
     "target": series.labels.template,
     "property": "fill",
     "min": am4core.color("#0000CC"),
     "max": am4core.color("#CC00CC"),
     "dataField": "value"
    });
    
    series.labels.template.url = "https://stackoverflow.com/questions/tagged/{word}";
    series.labels.template.urlTarget = "_blank";
    series.labels.template.tooltipText = "{word}: {value}";
    
    var hoverState = series.labels.template.states.create("hover");
    hoverState.properties.fill = am4core.color("#FF0000");
    
    var subtitle = chart.titles.create();
    subtitle.text = "";
    
    var title = chart.titles.create();
    title.text = "Tag Check";
    title.fontSize = 30;
    title.fontWeight = "800";
    
    }); // end am4core.ready()
    </script>