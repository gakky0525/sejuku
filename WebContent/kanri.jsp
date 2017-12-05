<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ja">
<head>
    <meta charset="utf-8"/>
    <title>カルテ管理</title>
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
            height:388px;
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
</head>
<body>
    <div id="sideNav">
        <ul style="list-style:none;">
        <li><a href="kanri.jsp" class="linkBtn">カルテ貸出</a></li>
        <li><a href="karuteichiran.jsp" class="linkBtn">カルテ一覧</a></li>
        <li><a href="kasidasi.jsp" class="linkBtn">カルテ管理</a></li>
        <li id="end"><a href="" class="linkBtn">終　　　了</a></li>
        </ul>
    </div>

    <div id="contents">
        <form id="form1">
            <div id="type">
                カルテ管理
            </div>
            <div id="common">
                <div>
                    <label><span class="commonCols">ID</span><input type="text" id="userId" /></label>
                </div>
                <div>
                    <label><span class="commonCols">カルテ番号</span><input type="text" id="karteNo" /></label>
                </div>
                <div>

                    <label><span class="commonCols">フリガナ</span><input type="text" id="kana"/></label>
                    <label><span class="commonCols">氏名</span><input type="text" id="name"/></label>
                </div>
                <div>
                    <label><span class="commonCols">生年月日</span><input type="text" id="birth" size="10"/></label>
                    <label><span class="commonCols">年齢</span><input type="text" id="age" size="2"/></label>
                    <label><span class="commonCols">血液型</span><input type="text" id="abo" size="2"/></label>
                    <label>
                        <span class="commonCols">性別</span>
                        <select id="gender">
                            <option value="">選択してください</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </label>
                </div>
                <div>

                    <label><span class="commonCols">住所</span><input type="text" id="address"/></label>
                    <label><span class="commonCols">電話番号</span><input type="text" id="tel"/></label>
                </div>
                <div id="commonCols">
                    <input type="submit" value="検索"/>
                    <input type="submit" value="クリア"/>
                </div>
            </div>
        </form>
    <div id="detail">
        <table border="3" rules="all"  style="margin:auto;">
            <tr class="detailCols">

                <tr>
                    <td>入院科</td> <td>内科</td> <td>主治医</td><td>長岐　由樹</td><td>死亡日</td><td>-----</td>
                </tr>
                <tr>
                    <td>入院病棟</td> <td>東５病棟</td> <td>担当医１</td><td>名医</td><td>解剖有無</td><td>-----</td>
                </tr>
                <tr>
                    <td>入院日</td> <td>2017/05/25</td> <td>担当医２</td><td>名医</td>
                </tr>
                <tr>
                    <td>退院日</td> <td>2017/10/22</td> <td>退院科</td><td>皮膚科</td>
                </tr>
                <tr>
                    <td>紹介状</td> <td>あり</td> <td>退院時病棟</td><td>西４病棟</td>
                </tr>
                <tr>
                    <td>救急車</td> <td>なし</td> <td>転帰</td><td>治癒</td>
                </tr>
        </table>


        </div>

        <div id="controls" style="clear:both;">
            <input type="submit" id="touroku" value="登録"/>
            <input type="submit" id="hennsyuu" value="編集"/>
            <input type="submit" id="sakujo" value="削除"/>
        </div>
     </div>

</body>
</html>