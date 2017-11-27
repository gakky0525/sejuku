<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
    <meta charset="utf-8"/>
    <title>貸出</title>
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
            height:438px;
            border:1px solid #000;
            text-align:center;
        }
        #controls {
            height:80px;
            border:1px solid #000;
        }
        #Ikkatu{
              float:right;
        }

        .commonCols {
            display:inline-block;
            width:80px;
            background-color:#808080;
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
            background-color:#808080;
            color:#fff;
            margin:1px;
            padding:3px;
        }
        .linkBtn {
            border:1px slid #000;
            background-color:#808080;
            color:#fff;
            margin:5px;
            padding:15px;
            text-align:center;
            text-decoration: none;
            border-radius: 3px;
        }


           form#form1 {
            width:100%;
            padding: 10px;
             margin-bottom: 15px;
             border: 1px solid #ccc;
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
        <ul style="list-style:none">
        <li><a href="" class="linkBtn">カルテ貸出</a></li>
        <li><a href="" class="linkBtn">カルテ一覧</a></li>
        <li><a href="" class="linkBtn">カルテ管理</a></li>
        <li><a href="" class="linkBtn">終了</a></li>
        </ul>
    </div>

    <div id="contents">
        <form id="form1">
            <div id="type">
               <label class="kasidasiType"><input type="radio" name="kasidasiType"/>貸出</label>
               <label class="kasidasiType"><input type="radio" name="kasidasiType"/>返却</label>
               <label class="kasidasiType"><input type="radio" name="kasidasiType"/>すべて</label>
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
                    <label>
                        <span class="commonCols">性別</span>
                        <select id="gender">
                            <option value="">選択してください</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </label>
                </div>
                <div id="commonCols">
                    <input type="submit" value="検索"/>
                    <input type="submit" value="クリア"/>
                </div>
            </div>
        </form>
    <div id="detail">
        <table border="3" rules="all">
            <tr class="detailCols"><th>氏名 </th><th>フリガナ</th><th>ID</th><th>カルテ番号</th><th>診療科</th><th>入院日</th><th>退院日</th><th>提出先</th><th>貸出状況</th><th>選択</th></tr>
            <tr><td>${dto.name}</td><td>${dto.kana}</td><td>${dto.id}</td><td>${dto.karteNo}</td><td>${dto.kaMei}</td><td>${dto.nyuinDate}</td><td>${dto.taiinDate}</td><td>${dto.teisyutu}</td><td>${dto.kasidasi}</td><td></td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>

            <tr><td>セル１</td><td>セル２</td><td>セル３</td><td>セル4</td><td>セル5</td><td>セル6</td><td>セル7</td><td>セル8</td><td>セル9</td><td>セル10</td></tr>
            </table>
        </div>

        <div id="controls" style="clear:both;">
            <input type="submit" id="Ikkatu" value="一括貸出・返却"/>
        </div>
     </div>

</body>
</html>