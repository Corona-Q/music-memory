<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="music memory, music, listen, record" />
    <meta name="author" content="Codrops" />
    <link href="../image/icon4.ico" rel="icon" type="image/x-ico" />
    <link rel="stylesheet" type="text/css" href="../css/guessCSS/component.css" />
    <link rel="stylesheet" type="text/css" href="../css/guessCSS/demo.css" />
    <link rel="stylesheet" type="text/css" href="../css/guessCSS/normalize.css" />
    <link rel="stylesheet" href="../CSS/secondpageCSS.css" media="screen" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!--[if IE]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <title>音乐记忆</title>
    <script src="../JS/guessJS/modernizr.custom.js"></script>
    <script src="../JS/music.js"></script>
</head>
       
<body>

    <div class="jumbotron background" style="margin-bottom:0; height: 380px;">
        <div class="row">
            <div class="col-sm-1">

            </div>
            <div class="col-sm-10 ">
                <p class="title-box">开启音乐的世界</p>
            </div>
            <div class="col-sm-1">
                <div style="margin-left:-110px;margin-top:-58px; color:white">
                    <%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
                    <%Response.Write("您好，"+Session.Contents("username"))%>
                    <a class="aBox" href="exit.asp" style="text-decoration: none;" title="点击退出登录">退出登录</a>
                </div>
            </div>
        </div>
    </div>

    <div class="container" style="margin-top:70px">
        <div class="row">
            <div class="a11" style="margin-top:0px; margin-left:300px；">
                <h2 class="a111" style="margin-left:-100px">--历年音乐概况--</h2>
            </div>
                <div class="col-md-3 a121a">
                    <a href="16introduction page.html">
                    <img src="../image/israel-palacio-Y20JJ_ddy9M-unsplash.jpg" style="height: 180px">
                    </a>
                    <p class="littleTitle">2016年</p>
                </div>
                <div class="col-md-3 a121a">
                    <a href="17introduction page.html">
                    <img src="../image/malte-wingen-PDX_a_82obo-unsplash.jpg" style="height: 180px;">
                    </a>
                    <p class="littleTitle">2017年</p>
                </div>
                <div class="col-md-3 a121a">
                    <a href="18introduction page.html">
                    <img src="../image/pexels-photo-1626481.jpeg" style="height: 180px; ">
                    </a>
                    <p class="littleTitle">2018年</p>
                </div>
                <div class="col-md-3 a121a">
                    <a href="19introduction page.html">
                    <img src="../image/pexels-photo-1389429.jpeg" style="height: 180px;">
                    </a>
                    <p class="littleTitle">2019年</p>
                </div>
        </div>
    </div>
        <div style="margin-top: -20px;">
            <div class="a11" style="margin-bottom: -20px;">
            <h2 class="a111">--猜你喜欢--</h2>
            </div>
            <div class="container">
                <section class="grid3d horizontal" id="grid3d">
                    <div class="grid-wrap" style="height: 350px; ">
                        <div class="grid" >
                            <figure class="big"><img src="../image/4.jpg" alt="img04"/></figure class="big">
                            <figure class="big"><img src="../image/3.jpg" alt="img03"/></figure class="big">
                            <figure class="big"><img src="../image/1.jpg" alt="img01"/></figure class="big">
                            <figure class="big"><img src="../image/5.jpg" alt="img05"/></figure class="big">
                            <figure class="big"><img src="../image/2.jpg" alt="img02"/></figure class="big">
                            <figure class="big"><img src="../image/8.jpg" alt="img08"/></figure class="big">
                        </div> 
                    </div>

                    <div class="content">
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/4.jpg" alt="img04"/>
                                <div  class="play" id="player1" onclick="Player1()">
                                    <audio id="BGM1">
                                        <source src="../AUDIO/Depapepe - 风向仪.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                            <p class="dummy-text">《风向仪》是日本一支吉他曲，曲风清新明快。</p>
                            <p class="dummy-text">网友点评：第一次听到这首歌曲是在观看一个泰国人寿保险广告的时候，一个叫朵一的人收养几个孩子，面对生活困难依旧乐观向上。音乐节奏欢快，带来一种鼓舞人心的力量，生活中总是会出现一些低谷、挫折，但心怀阳光的人总是会在这其中找寻快乐。就像这首歌，开头曲调低沉，就像人身险挫折，后来慢慢出现转机，有着紧张、上扬的感觉，就像人以乐观对抗挫折，再后来仿佛是一种释怀，生活虽有不幸，我心依旧乐观！</p>
                            
                        </div>
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/3.jpg" alt="img03"/>
                                <div  class="play" id="player2" onclick="Player2()">
                                    <audio id="BGM2">
                                        <source src="../AUDIO/心如止水.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                           
                            <p class="dummy-text">《心如止水》是潘悦晨《成语接龙》专辑中的一首歌曲。 </p>
                            <p class="dummy-text">网友点评：原谅我这个所谓的心如止水、波澜不惊的唯物主义者，你仅仅出现，云海翻涌、江湖澎湃，连我自己也要化成溪流，全部向你的地方流淌。</p>
                            <p class="dummy-text">网友点评：说不上你哪里好，只是你的一笑一闹，皆可掀起海浪，于我心荡漾。好久不见。</p>

                        </div>
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/1.jpg" alt="img01"/>
                                <div  class="play" id="player3" onclick="Player3()">
                                    <audio id="BGM3">
                                        <source src="../AUDIO/心如止水.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                            <p class="dummy-text">《心如止水》是潘悦晨《成语接龙》专辑中的一首歌曲。 </p>
                            <p class="dummy-text">网友点评：原谅我这个所谓的心如止水、波澜不惊的唯物主义者，你仅仅出现，云海翻涌、江湖澎湃，连我自己也要化成溪流，全部向你的地方流淌。</p>
                            <p class="dummy-text">网友点评：说不上你哪里好，只是你的一笑一闹，皆可掀起海浪，于我心荡漾。好久不见。</p>

                        </div>
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/5.jpg" alt="img05"/>
                                <div  class="play" id="player" onclick="Player()">
                                    <audio id="BGM">
                                        <source src="../AUDIO/Depapepe - 风向仪.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                            <p class="dummy-text">《风向仪》是日本一支吉他曲，曲风清新明快。</p>
                            <p class="dummy-text">网友点评：第一次听到这首歌曲是在观看一个泰国人寿保险广告的时候，一个叫朵一的人收养几个孩子，面对生活困难依旧乐观向上。音乐节奏欢快，带来一种鼓舞人心的力量，生活中总是会出现一些低谷、挫折，但心怀阳光的人总是会在这其中找寻快乐。就像这首歌，开头曲调低沉，就像人身险挫折，后来慢慢出现转机，有着紧张、上扬的感觉，就像人以乐观对抗挫折，再后来仿佛是一种释怀，生活虽有不幸，我心依旧乐观！</p>
                        </div>
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/2.jpg" alt="img02"/>
                                <div  class="play" id="player" onclick="Player()">
                                    <audio id="BGM">
                                        <source src="../AUDIO/Depapepe - 风向仪.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                            <p class="dummy-text">《风向仪》是日本一支吉他曲，曲风清新明快。</p>
                            <p class="dummy-text">网友点评：第一次听到这首歌曲是在观看一个泰国人寿保险广告的时候，一个叫朵一的人收养几个孩子，面对生活困难依旧乐观向上。音乐节奏欢快，带来一种鼓舞人心的力量，生活中总是会出现一些低谷、挫折，但心怀阳光的人总是会在这其中找寻快乐。就像这首歌，开头曲调低沉，就像人身险挫折，后来慢慢出现转机，有着紧张、上扬的感觉，就像人以乐观对抗挫折，再后来仿佛是一种释怀，生活虽有不幸，我心依旧乐观！</p>
                        </div>
                        <div>
                            <div style="margin-left: 30px;">
                                <img src="../image/8.jpg" alt="img08"/>
                                <div  class="play" id="player" onclick="Player()">
                                    <audio id="BGM">
                                        <source src="../AUDIO/Depapepe - 风向仪.mp3" type="audio/mpeg">
                                    </audio>
                                </div>
                            </div>
                            <br><br>
                            <p class="dummy-text">《风向仪》是日本一支吉他曲，曲风清新明快。</p>
                            <p class="dummy-text">网友点评：第一次听到这首歌曲是在观看一个泰国人寿保险广告的时候，一个叫朵一的人收养几个孩子，面对生活困难依旧乐观向上。音乐节奏欢快，带来一种鼓舞人心的力量，生活中总是会出现一些低谷、挫折，但心怀阳光的人总是会在这其中找寻快乐。就像这首歌，开头曲调低沉，就像人身险挫折，后来慢慢出现转机，有着紧张、上扬的感觉，就像人以乐观对抗挫折，再后来仿佛是一种释怀，生活虽有不幸，我心依旧乐观！</p>
                        </div>
                        <span class="loading"></span>
                        <span class="icon close-content"></span>
                    </div>
                </section>
            </div>
        </div>

        <div class="A">
            <div class="a">
                <div class="a11">
                    <h2 class="a111">--精彩推荐--</h2>
                </div>
                <div class="a12">
                    <div class="a121">
                        <a href="#"><img src="../image/am6.jpg" alt=""></a>
                    </div>
                    <div class="a122">
                        <a href="#"><img src="../image/am7.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>

    <div style="height:70px;background-color:rgb(180, 180, 180); text-align:center;">
        <p style="padding-top:6px">
        Copyright [2020] by [QCH]<br>
        本站内容来自互联网，如有侵权请联系站长删除！
        </p>
    </div>


		<script src="../JS/guessJS/classie.js"></script>
		<script src="../JS/guessJS/helper.js"></script>
		<script src="../JS/guessJS/grid3d.js"></script>
		<script>
			new grid3D( document.getElementById( 'grid3d' ) );
        </script>
</body>
</html>