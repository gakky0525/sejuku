<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
<html lang="ja">
<head>
    <meta charset="utf-8"/>
    <title>カルテ一覧</title>
    <style>
        body {
            width:1024px;
            height:768px;
            border:1px solid #000;
        }
        div {
            box-sizing: border-box;
            padding:5px;
        }
        #sideNav {
            width:200px;
            height:100%;
            float:left;
            border:1px solid #000;
             /*↓背景グラデーションの指定*/
            background: -moz-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: -webkit-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: linear-gradient(#FBFCFC, #F0F8F1);
        }

        #end{
            margin-top: 480px;
        }


        #contents {
            width:824px;
            height:100%;
            float:left;
            border:1px solid #000;
        }
         #type {
             border:1px solid #000;
        }
        #common {
            height:230px;
            border:1px solid #000;

        }
        #detail {
            height:470px;
            border:1px solid #000;
            text-align:center;
             /*↓背景グラデーションの指定*/
            background: -moz-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: -webkit-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: linear-gradient(#FBFCFC, #F0F8F1);
        }
        #controls {
            height:80px;
            border:1px solid #000;
             /*↓背景グラデーションの指定*/
            background: -moz-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: -webkit-linear-gradient(top, #FBFCFC, #F0F8F1);
            background: linear-gradient(#FBFCFC, #F0F8F1);

        }
        #Ikkatu{
              float:right;
        }

        .commonCols {
            display:inline-block;
            width:80px;
            background-color:#8FBC8F;
            color:#fff;
            margin:1px;
            padding:3px;
            text-align:center;
        }

        #age,#gender{
            display:inline-block;
            width:40px;
            background-color:#ffffff;
            /*color:#fff;*/
            margin:1px;
            padding:3px;
            text-align:center;
        }
        #gender {
            width:100px;
        }
        .detailCols {
            width:100px;
            background-color:#8FBC8F;
            color:#fff;
            margin:1px;
            padding:3px;
        }
   /*    .linkBtn {
            display:inline-block;
            border:1px slid #000;
            background-color:#808080;
            color:#fff;
            margin:5px;
            padding:15px;
            text-align:center;
            text-decoration: none;
            border-radius: 3px;
        }  */
        .linkBtn{
            display: inline-block;
            text-decoration: none;
            background: #8FBC8F;
            color: #fff;
            width: 120px;
            height: 50px;
            font-size: 15px;
            line-height: 50px;
            border-radius: 3px;
            text-align: center;
            overflow: hidden;
            font-weight: bold;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.29);
            border-bottom: solid 5px #556B2f;
            text-shadow: -1px -1px rgba(255, 255, 255, 0.43), 1px 1px rgba(0, 0, 0, 0.49);
            transition: .4s;
          }

         .linkBtn:active{
            -ms-transform: translateY(2px);
            -webkit-transform: translateY(2px);
            transform: translateY(2px);
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.35);
            border-bottom: none;
          }

           form#form1 {
            width:100%;
           /* padding: 10px;*/
             margin-bottom: 15px;
             border: 1px solid #CCC;
             color: #666;
             background: #F0F8F1;
             /*↓背景グラデーションの指定*/
             background: -moz-linear-gradient(top, #FBFCFC, #F0F8F1);
             background: -webkit-linear-gradient(top, #FBFCFC, #F0F8F1);
             background: linear-gradient(#FBFCFC, #F0F8F1);
        }

        .kasidasiType {
            margin-right:25px;

        }




    </style>
    <link type="text/css" rel="stylesheet"
        href="http://code.jquery.com/ui/1.10.3/themes/cupertino/jquery-ui.min.css" />
    <script type="text/javascript"
            src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript"
        src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>

    <script>
        $(function() {
        $( "#firstday" ).datepicker({
        beforeShowDay: $.datepicker.noWeekends
        });
        });

        $(function() {
        $( "#enddatebtn" ).datepicker({
        beforeShowDay: $.datepicker.noWeekends
        });
        });

    </script>


</head>
<body>
    <div id="sideNav">
        <ul style="list-style:none;">
        <li><a href="kasidasi.jsp" class="linkBtn">カルテ貸出</a></li>
        <li><a href="karuteichiran.jsp" class="linkBtn">カルテ一覧</a></li>
        <li><a href="kanri.jsp" class="linkBtn">カルテ管理</a></li>
        <li id="end"><a href="" class="linkBtn">終　　　了</a></li>
        </ul>
    </div>

    <div id="contents">
        <form id="form1">
         <div id="type">
              カルテ一覧
            </div>
            <div id="common">
               <div>
                    <label><span class="commonCols">検索内容</span>
                    <select name="example">
					<option value="サンプル1">未作成退院サマリー</option>
					<option value="サンプル2">カルテ未返却リスト</option>
					<option value="サンプル3">カルテ不明リスト</option>
					</select>
					</label>
                </div>
                <div>
                    <label><span class="commonCols">開始日</span><input type="text" id="firstday" /></label>
                </div>
                <div>
                    <label><span class="commonCols">終了日</span><input type="text" id="enddatebtn" /></label>
                </div>

                <div id="commonCols">
                    <input type="submit" value="検索"/>
                    <input type="submit" value="クリア"/>
                </div>
            </div>
        </form>
    <div id="detail">
        <table border="3" rules="all" style="margin:auto;" >
            <tr class="detailCols"><th>ID</th><th>氏名</th><th>入院日</th><th>退院日</th><th>返却日</th><th>搬入日</th></tr>
      <!--       <tr><td>${dto.name}</td><td>${dto.kana}</td><td>${dto.id}</td><td>${dto.karteNo}</td><td>${dto.kaMei}</td><td>${dto.nyuinDate}</td><td>${dto.taiinDate}</td><td>${dto.teisyutu}</td><td>${dto.kasidasi}</td><td></td></tr>

          -->

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td></tr>
            </table>
        </div>

  <!--      <div id="controls" style="clear:both;">
            <input type="submit" id="Ikkatu" value="一括貸出・返却"/>
        </div> -->
     </div>

</body>
</html>