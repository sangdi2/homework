<%--
  Created by IntelliJ IDEA.
  User: sangdi
  Date: 2021/6/7
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>心灵驿站测试</title>
    <script language="JavaScript">
        function processForm() {
            var sum = 0;
            //创建数组
            hc = new Array(15);
            //如果识别到文档中表单see中第一个问题的第一个选项被选中就使sum+该选项得分
            if (document.see.c1[0].checked == 1) sum += 0;
            if (document.see.c1[1].checked == 1) sum += 1;
            if (document.see.c1[2].checked == 1) sum += 2;
            if (document.see.c1[3].checked == 1) sum += 3;

            if (document.see.c2[0].checked == 1) sum += 0;
            if (document.see.c2[1].checked == 1) sum += 1;
            if (document.see.c2[2].checked == 1) sum += 2;
            if (document.see.c2[3].checked == 1) sum += 3;

            if (document.see.c3[0].checked == 1) sum += 0;
            if (document.see.c3[1].checked == 1) sum += 1;
            if (document.see.c3[2].checked == 1) sum += 2;
            if (document.see.c3[3].checked == 1) sum += 3;

            if (document.see.c4[0].checked == 1) sum += 0;
            if (document.see.c4[1].checked == 1) sum += 1;
            if (document.see.c4[2].checked == 1) sum += 2;
            if (document.see.c4[3].checked == 1) sum += 3;

            if (document.see.c5[0].checked == 1) sum += 0;
            if (document.see.c5[1].checked == 1) sum += 1;
            if (document.see.c5[2].checked == 1) sum += 2;
            if (document.see.c5[3].checked == 1) sum += 3;

            if (document.see.c6[0].checked == 1) sum += 0;
            if (document.see.c6[1].checked == 1) sum += 1;
            if (document.see.c6[2].checked == 1) sum += 2;
            if (document.see.c6[3].checked == 1) sum += 3;

            if (document.see.c7[0].checked == 1) sum += 0;
            if (document.see.c7[1].checked == 1) sum += 1;
            if (document.see.c7[2].checked == 1) sum += 2;
            if (document.see.c7[3].checked == 1) sum += 3;

            if (document.see.c8[0].checked == 1) sum += 0;
            if (document.see.c8[1].checked == 1) sum += 1;
            if (document.see.c8[2].checked == 1) sum += 2;
            if (document.see.c8[3].checked == 1) sum += 3;

            if (document.see.c9[0].checked == 1) sum += 0;
            if (document.see.c9[1].checked == 1) sum += 1;
            if (document.see.c9[2].checked == 1) sum += 2;
            if (document.see.c9[3].checked == 1) sum += 3;

            if (document.see.c10[0].checked == 1) sum += 0;
            if (document.see.c10[1].checked == 1) sum += 1;
            if (document.see.c10[2].checked == 1) sum += 2;
            if (document.see.c10[3].checked == 1) sum += 3;

            if (document.see.c11[0].checked == 1) sum += 0;
            if (document.see.c11[1].checked == 1) sum += 1;
            if (document.see.c11[2].checked == 1) sum += 2;
            if (document.see.c11[3].checked == 1) sum += 3;

            if (document.see.c12[0].checked == 1) sum += 0;
            if (document.see.c12[1].checked == 1) sum += 1;
            if (document.see.c12[2].checked == 1) sum += 2;
            if (document.see.c12[3].checked == 1) sum += 3;

            if (document.see.c13[0].checked == 1) sum += 0;
            if (document.see.c13[1].checked == 1) sum += 1;
            if (document.see.c13[2].checked == 1) sum += 2;
            if (document.see.c13[3].checked == 1) sum += 3;

            if (document.see.c14[0].checked == 1) sum += 0;
            if (document.see.c14[1].checked == 1) sum += 1;
            if (document.see.c14[2].checked == 1) sum += 2;
            if (document.see.c14[3].checked == 1) sum += 3;

            if (document.see.c15[0].checked == 1) sum += 0;
            if (document.see.c15[1].checked == 1) sum += 1;
            if (document.see.c15[2].checked == 1) sum += 2;
            if (document.see.c15[3].checked == 1) sum += 3;


            if (sum <= 4) document.see.answer.value = "您的得分为"+sum+"分\n您精神健康，没有抑郁";
            if (sum <= 10 && sum >= 5) document.see.answer.value = "您的得分为"+sum+"分\n您偶尔有抑郁情绪";
            if (sum <= 20 && sum >= 11) document.see.answer.value = "您的得分为"+sum+"分\n您有轻度抑郁症";
            if (sum <= 30 && sum >= 21) document.see.answer.value = "您的得分为"+sum+"分\n您有中度抑郁症";
            if (sum <= 45 && sum >= 31) document.see.answer.value = "您的得分为"+sum+"分\n您有严重抑郁症并需要立即接受专科医生的治疗";

        }
    </script>
    <style>
        .da {
            width:650px;
            height: 1450px;
            margin: 0 auto;
            background-color:rgba(0,0,0,.3);
            padding-left: 250px;
        }
        h3 {
            margin-left: 150px;
        }
        body {
            background-image: url("img/meng.jpeg");
        }
    </style>
</head>
<body>
<div class="da">
    <form name="see">
        <h3>心灵驿站测试</h3>
        <p><b>1、你是否感到食欲不振?或情不自禁地暴饮暴食?</b></p>
        <p>
            <input onclick="begintimer()" type="radio" value="12" name="c1" />没有
            <input onclick="begintimer()" type="radio" value="32" name="c1" />轻度
            <input onclick="begintimer()" type="radio" value="32" name="c1" />中度
            <input onclick=" begintimer()"type="radio" value="32" name="c1" />严重
        </p>
        <p><b>2、你是否患有失眠症?或整天感到体力不支，昏昏欲睡?</b></p>
        <p>
            <input type="radio" value="11" name="c2" />没有
            <input type="radio" value="31" name="c2" />轻度
            <input type="radio" value="31" name="c2" />中度
            <input type="radio" value="31" name="c2" />严重
        </p>
        <p><b>3、你是否丧失了对性的兴趣?</b></p>
        <p>
            <input type="radio" value="11" name="c3" />没有
            <input type="radio" value="31" name="c3" />轻度
            <input type="radio" value="31" name="c3" />中度
            <input type="radio" value="31" name="c3" />严重
        </p>
        <p><b>4、你是否经常担心自己的健康?</b></p>
        <p>
            <input type="radio" value="13" name="c4" />没有
            <input type="radio" value="33" name="c4" />轻度
            <input type="radio" value="33" name="c4" />中度
            <input type="radio" value="33" name="c4" />严重
        </p>
        <p><b>5、你是否认为生存没有价值，或生不如死?</b></p>
        <p>
            <input type="radio" value="14" name="c5" />没有
            <input type="radio" value="34" name="c5" />轻度
            <input type="radio" value="34" name="c5" />中度
            <input type="radio" value="34" name="c5" />严重
        </p>
        <p><b>6、你是否一直感到伤心或悲哀?</b></p>
        <p>
            <input type="radio" value="14" name="c6" />没有
            <input type="radio" value="34" name="c6" />轻度
            <input type="radio" value="34" name="c6" />中度
            <input type="radio" value="34" name="c6" />严重
        </p>
        <p><b>7、你是否感到前景渺茫?</b></p>
        <p>
            <input type="radio" value="14" name="c7" />没有
            <input type="radio" value="34" name="c7" />轻度
            <input type="radio" value="34" name="c7" />中度
            <input type="radio" value="34" name="c7" />严重
        </p>
        <p><b>8、你是否觉得自己没有价值或自以为是一一个失败者?</b></p>
        <p>
            <input type="radio" value="14" name="c8" />没有
            <input type="radio" value="34" name="c8" />轻度
            <input type="radio" value="34" name="c8" />中度
            <input type="radio" value="34" name="c8" />严重
        </p>
        <p><b>9、你是否觉得力不从心或自叹比不上别人?</b></p>
        <p>
            <input type="radio" value="14" name="c9" />没有
            <input type="radio" value="34" name="c9" />轻度
            <input type="radio" value="34" name="c9" />中度
            <input type="radio" value="34" name="c9" />严重
        </p>
        <p><b>10、你是否对任何事都自责?</b></p>
        <p>
            <input type="radio" value="14" name="c10" />没有
            <input type="radio" value="34" name="c10" />轻度
            <input type="radio" value="34" name="c10" />中度
            <input type="radio" value="34" name="c10" />严重
        </p>
        <p><b>11、你是否在做决定时犹豫不决?</b></p>
        <p>
            <input type="radio" value="14" name="c11" />没有
            <input type="radio" value="34" name="c11" />轻度
            <input type="radio" value="34" name="c11" />中度
            <input type="radio" value="34" name="c11" />严重
        </p>
        <p><b>12、这段时间你是否一直处于愤怒和不满状态?</b></p>
        <p>
            <input type="radio" value="14" name="c12" />没有
            <input type="radio" value="34" name="c12" />轻度
            <input type="radio" value="34" name="c12" />中度
            <input type="radio" value="34" name="c12" />严重
        </p>
        <p><b>13、你对事业、家庭、爱好或朋友是否丧失了兴趣?</b></p>
        <p>
            <input type="radio" value="14" name="c13" />没有
            <input type="radio" value="34" name="c13" />轻度
            <input type="radio" value="34" name="c13" />中度
            <input type="radio" value="34" name="c13" />严重
        </p>
        <p><b>14、你是否感到一蹶不振，做事情毫无动力?</b></p>
        <p>
            <input type="radio" value="14" name="c14" />没有
            <input type="radio" value="34" name="c14" />轻度
            <input type="radio" value="34" name="c14" />中度
            <input type="radio" value="34" name="c14" />严重
        </p>
        <p><b>15、你是否以为自己已衰老或失去魅力?</b></p>
        <p>
            <input type="radio" value="14" name="c15" />没有
            <input type="radio" value="34" name="c15" />轻度
            <input type="radio" value="34" name="c15" />中度
            <input type="radio" value="34" name="c15" />严重
        </p>
        <br /><br /><br />
        <p>
            <input id="btn" onclick=" processForm()" type="button" value="查看测试结果" /></p>
        <br /><br />
        <!--创建文本区域用来存放测试结果-->
        <p><textarea style="width: 500px" name="answer" rows="6" cols="50"></textarea></p>
    </form>
</div>
</body>
</html>
