<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-88738417-1', 'auto');
  ga('send', 'pageview');

</script>

<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="//v2.zopim.com/?3JIHp9xO6xZcaFZ39U9Kt3zYma8QtlUf";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zopim Live Chat Script-->

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        litTime.Text = "Current Time: " + DateTime.Now.AddHours(-1).ToString("HH:mm") + " GMT"
    End Sub

    Protected Sub tmr_Tick(sender As Object, e As EventArgs)
        litTime.Text = "Current Time: " + DateTime.Now.AddHours(-1).ToString("HH:mm") + " GMT"
    End Sub
</script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<link href='//fonts.googleapis.com/css?family=Lato:400,700|Alfa+Slab+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<%= SkinPath%>css/normalize.css">
<link rel="stylesheet" href="<%= SkinPath%>css/main.css">
<link rel="stylesheet" href="<%= SkinPath%>css/additional.css">
<link rel="stylesheet" href="<%= SkinPath%>css/navigataur.css" type="text/css" />

  <link rel="stylesheet" type="text/css" href="<%= SkinPath%>css/jquery.cookiebar.css" />
<script type="text/javascript" src="<%= SkinPath%>js/jquery.cookiebar.js"></script>

<script src="<%= SkinPath%>js/vendor/modernizr-2.6.2.min.js"></script>
<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<script type='text/javascript' src='<%= SkinPath%>js/jquery.simplemodal.js'></script>

  <script type="text/javascript" src="<%= SkinPath%>js/jquery.timepicker.js"></script>

<link rel="stylesheet" type="text/css" href="<%= SkinPath%>/css/jquery.timepicker.css" />



<script type="text/javascript" src="<%= SkinPath%>js/vendor/bootstrap-datepicker.js"></script>

<link rel="stylesheet" type="text/css" href="<%= SkinPath%>/css/bootstrap-datepicker.css" />
<link rel="stylesheet" type="text/css" href="<%= SkinPath%>css/bootstrap-datetimepicker.min.css?v=2" />
<script type="text/javascript" src="<%= SkinPath%>js/bootstrap-datetimepicker.min.js?v=2"></script>
<script type="text/javascript">

    function onkeywordclick() {
        var url;
        var searchtype = document.getElementById("search_type").text();

        if (searchtype == 'Therapist') {
            var searchtext = document.getElementById("iSearch").value;
            url = "/find-a-therapist?keyword=" + searchtext + "&specialism=&gender=undefined&lang=&online=undefined&date=&starttime=&endtime=&religion=";
        }
        else {
            url = "/search?search=" + document.getElementById("iSearch").value;
        }
        window.location = url;
        return false;

    }

    $('input[txtKeyword]').on('keyup', function (e) {
        if (e.which == 13) {
            e.preventDefault();
        }
    });

    $(document).ready(function () {

			$.cookieBar();

        $("#search-button").click(function () {



            var url;
            var searchtype = $("#search_type option:selected").text();

            if (searchtype == 'Therapist') {
                var searchtext = document.getElementById("iSearch").value;
                url = "/find-a-therapist?keyword=" + searchtext + "&specialism=&gender=undefined&lang=&online=undefined&date=&starttime=&endtime=&religion=";
            }
            else {
                url = "/search?search=" + document.getElementById("iSearch").value;
            }
            window.location = url;
            return false;
        });
    });



</script>

<script type="text/javascript">

  if (screen.width <= 800) {
    window.location = "http://m.tosps.com";
  }

</script>

<style type="text/css">
.home-selectsearch {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  width: 150px;
  height: 61px;
  margin-left: 52px;
  padding-left: 25px;
  border: 2px solid rgba(0,150,255,0.91);
  -webkit-border-radius: 10px;
  border-radius: 10px;
  font: 18px/1 "Trebuchet MS",Times,serif;
  color:#006084;
  -o-text-overflow: ellipsis;
  text-overflow: ellipsis;
}
</style>

<!-- FACEBOOK -->
<!-- Facebook Conversion Code for tHE ONE STOP PSYCHOTHERAPY SHOP -->
<script>(function() {
var _fbq = window._fbq || (window._fbq = []);
if (!_fbq.loaded) {
var fbds = document.createElement('script');
fbds.async = true;
fbds.src = '//connect.facebook.net/en_US/fbds.js';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(fbds, s);
_fbq.loaded = true;
}
})();
window._fbq = window._fbq || [];
window._fbq.push(['track', '6023661918438', {'value':'0.01','currency':'GBP'}]);
</script>
<noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?ev=6023661918438&amp;cd[value]=0.01&amp;cd[currency]=GBP&amp;noscript=1" /></noscript>


<!-- header -->
<header  style="display:none;">
    <!-- container -->

    <div class="container">

        <div class="header-lower" style="display:none;">

            <div class="actions" style="display:none;">
                <div class="login-panel">
                    <div style="float:left;margin-left:22px;">
                        <asp:UpdatePanel ID="updTime" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="tmr" runat="server" Interval="60000" OnTick="tmr_Tick" Enabled="true"></asp:Timer>
                                <asp:Literal ID="litTime" runat="server"></asp:Literal>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <%
                        If Request.IsAuthenticated Then%>
                    <ul>
                        <%
                            Dim ui As DotNetNuke.Entities.Users.UserInfo = DotNetNuke.Entities.Users.UserController.GetUserById(Me.PortalSettings.PortalId, Me.PortalSettings.UserId)

                            If ui.IsInRole("Therapist") Then%>
                            <li><a href="/therapist/profile">Welcome <%= PortalSettings.UserInfo.DisplayName %> - View my profile</a>
                        <% Else%>
                            <li><a href="/user/profile">Welcome <%= PortalSettings.UserInfo.DisplayName %> - View my profile</a>
                        <%End If%>
						&nbsp;|&nbsp;
                        <a href="/home/ctl/logoff">Log out</a> </li>
                    </ul>
                    <% Else%>
                   <ul>
                        <li>Welcome Guest/Therapist <a href="/log-on">Log in</a> |</li>
                           <li><a href="/registration">Create an account</a></li>
                    </ul>
                    <%End If%>
                </div>
                <div class="buttons mobile">
                    <ul>
                        <li class="speak"><a href="/speak-to-a-therapist-now"><i></i>Speak to a therapist now</a></li>
                        <li class="book"><a href="/find-a-therapist"><i></i>Book a session</a></li>
                    </ul>
                </div>
                <div class="buttons web">
                    <ul>
                        <li class="book"><a href="/find-a-therapist"><i></i>Book a session</a></li>
                        <li class="speak"><a href="/speak-to-a-therapist-now"><i></i>Speak to a therapist now</a></li>
                    </ul>

                </div>
            </div>


		</div>
    </div>
    <!-- container -->


</header>
<!-- header -->
<nav class="main-navigation" style="display:none;">
    <!-- container -->
    <div class="container">
        <input type="checkbox" id="toggle" />
        <label for="toggle" class="toggle"><i class="dropdown">&#9660;</i></label>
        <ul class="menu">
            <li><a class="active" href="/">Home</a></li>
            <!-- <li><a href="/How-the-site-works">How the site works</a></li> -->
            <li><a href="/Find-a-therapist">Find a therapist</a></li>
            <li><a href="/Are-you-a-therapist-looking-to-help">Are you a therapist?</a></li>
            <li><a href="/contact-us">Contact us</a></li>
              <li><a href="https://itunes.apple.com/gb/app/therapy-chat/id975625866?mt=8" style="display:inline-block;overflow:hidden;background:url(//linkmaker.itunes.apple.com/assets/shared/badges/en-us/appstore-lrg.svg) no-repeat;width:130px;height:40px;background-size:contain;margin-top: 20px;margin-left: 20px;"></a></li>
        </ul>
    </div>
    <!-- container -->
</nav>


        <div class="content_" >
            <div id="ContentPane" class="container" runat="server" width="100%" style="width:100% !important">
    <%--            <section class="billboard web">
                <ul class="row">
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row">
                    <li class="promo width2">
                        <a href="#">
                            <div class="profile-shot width2">
                                <p>Providing you with <span class="darken">video call counselling</span> and therapy services.</p>
                            </div>
                        </a>
                    </li>
                    <li class="promo">
                        <a href="#">
                            <div class="profile-shot">
                                <img class="play-button" src="./img/play-button.png" />
                                <p>Watch video</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row">
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="promo width2 talk">
                        <a href="#">
                            <div class="profile-shot width2">
                                <p><span class="darken">Talk anytime, 24/7.</span><br />
                                    <span class="shrink">Available when you need us.</span></p>
                            </div>
                        </a>
                    </li>
                </ul>
                <ul class="row">
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/1.jpg" />
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/2.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="profile-shot">
                                <img src="./img/profiles/3.jpg" />
                                <div class="status">
                                    Online now
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                </section>

                <section class="billboard mobile">
                    <ul class="row">
                        <div class="width66 left">
                            <li class="promo width2">
                                <a href="#">
                                    <div class="profile-shot width2">
                                        <p>Providing you with <span class="darken">video call counselling</span> and therapy services.</p>
                                    </div>
                                </a>
                            </li>
                            <li class="promo width40">
                                <a href="#">
                                    <div class="profile-shot">
                                        <img class="play-button" src="./img/play-button.png" />
                                        <p>Watch video</p>
                                    </div>
                                </a>
                            </li>
                            <li class="promo width60 talk">
                                <a href="#">
                                    <div class="profile-shot width2">
                                        <p><span class="darken">Talk anytime, 24/7.</span><br />
                                            <span class="shrink">Available when you need us.</span></p>
                                    </div>
                                </a>
                            </li>
                        </div>
                        <div class="width33 right">
                            <li>
                                <a href="#">
                                    <div class="profile-shot">
                                        <img src="./img/profiles/2.jpg" />
                                        <div class="status">
                                            Online now
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="profile-shot">
                                        <img src="./img/profiles/3.jpg" />
                                        <div class="status">
                                            Online now
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </div>
                    </ul>
                </section>--%>

            </div>

    <!--        <section class="search">
                <div class="container">
                    <h3>Search for a therapist here<i class="search"></i></h3>
                    <input id="iSearch" type="text" placeholder="Search for a therapist based on a keyword" />
                    <a class="advanced" href="/find-a-therapist">Advanced search</a>
					<select id="search_type" class="home-selectsearch">
						<option value="Therapist" selected>Therapist</option>
						<option value="Whole_Site">Whole Site</option>
					</select>

                    <button id="search-button" class="search" onclick="onkeywordclick();return false;">Search</button>

                </div>
            </section> -->

        </div>

<script type="text/javascript">
    $(document).ready(function () {
        $('.search').keydown(function (event) {
            if (event.keyCode == 13) {
                var url;
                var searchtype = $("#search_type option:selected").text();

                if (searchtype == 'Therapist') {
                    var searchtext = document.getElementById("iSearch").value;
                    url = "/find-a-therapist?keyword=" + searchtext + "&specialism=&gender=undefined&lang=&online=undefined&date=&starttime=&endtime=&religion=";
                }
                else {
                    url = "/search?search=" + document.getElementById("iSearch").value;
                }
                window.location = url;
                return false;

            }
        });
    });
</script>





<!-- <section class="further-info">
    <div class="container">
        <h4>What is therapy and counselling?</h4>
        <p class="width66">
            Therapy offers you a safe, confidential place to talk about your life and anything that may be
                    confusing, painful or uncomfortable. It allows you to talk with someone who is trained to listen
                    attentively and to help you improve things.
        </p>
        <h4>How will therapy make me feel?</h4>
        <p class="width50">
            Therapy is a very personal process. Sometimes it is necessary to talk about painful feelings or difficult decisions, so you may go through a period of feeling worse than when you started.
                    However, therapy should enable you to feel better in the long-run.
        </p>
        <p class="width50">
            If you do experience a period of feeling worse, talk to your therapist
                    about it to ensure you get the best out of your therapy.
        </p>
        <div class="buttons">
            <ul>
                <li class="speak"><a href="#"><i></i>Speak to a therapist now</a></li>
            </ul>
        </div>
        <div class="in-the-news web">
            <%
                Dim bp As OSPS.Shared.Blog_Posts

                Dim sTitle As String
                Dim sDate As String

                bp = OSPS.Shared.Bll.GetLatestBlogPost("News")

                If Not IsNothing(bp) Then
                    sDate = bp.PublishedOnDate.ToString("dd MMM")
                    sTitle = bp.Title
                    litNewsSummary.Text = Server.HtmlDecode(bp.Summary)

                End If

                bp = Nothing

            %>
            <p class="main-date"><%=sDate%></p>
            <h5>In the news</h5>
            <p class="sub-date"><%=DateTime.Now.AddHours(-1).ToString("dd MMM yyyy")%></p>
            <h6><%=sTitle%></h6>
            <p>


<div style="height:150px;  overflow: scroll;  -webkit-overflow-scrolling: touch;overflow-x: hidden;">
                <asp:literal ID="litNewsSummary" runat="server"></asp:literal>
				</div>
            </p>
        </div>
        <div class="from-the-blog web" >
            <%
                sTitle = ""

                bp = OSPS.Shared.Bll.GetLatestBlogPost("EverythingElse")

                If Not IsNothing(bp) Then
                    sDate = bp.PublishedOnDate.ToString("dd MMM")
                    sTitle = bp.Title
                    litBlogSummary.Text = Server.HtmlDecode(bp.Summary)
                End If

                bp = Nothing
            %>
            <p class="main-date"><%=sDate%></p>
            <h5>From the blog</h5>
            <p class="sub-date"><%=DateTime.Now.AddHours(-1).ToString("dd MMM yyyy")%></p>
            <h6><%=sTitle%></h6>
            <p>
<div style="height:150px;  overflow: scroll;  -webkit-overflow-scrolling: touch;overflow-x: hidden;">
               <asp:literal ID="litBlogSummary" runat="server"></asp:literal>
                    </div>
            </p>
        </div>
    </div>
</section>

<section class="faq">
    <div class="container">
        <div class="column left width33">
            <div class="inner">
                <h4>What is therapy and counselling?</h4>
                <p class="web">
                    Therapy offers you a safe, confidential placeto talk about your life and anything that maybe confusing, painful or uncomfortable. Itallows you to talk with someone who is trainedto listen attentively and to help you improvethings.<br />
                    <br />

                    Therapy is a very personal process. Sometimesit is necessary to talk about painful feelings ordifficult decisions, so you may go through aperiod of feeling worse than when you started.<br />
                    <br />

                    However, therapy should enable you to feelbetter in the long-run.

                </p>
                <hr class="hand-drawn" />
                <%--<a class="read-more" href="">Read more here <i class="play-button"></i></a>--%>
            </div>
        </div>
        <div class="column left width33">
            <div class="inner">
                <h4>What can counselling help with?</h4>
                <p class="web">
                    Talking therapies, such as counselling, can be
                            used to treat many different health conditions including:

                    <ul class="web">
                        <li>depression</li>
                        <li>anxiety</li>
                        <li>borderline personality disorder (BPD)</li>
                        <li>obsessive compulsive disorder (OCD)</li>
                        <li>post-traumatic stress disorder (PTSD)</li>
                        <li>long-term illnesses</li>
                        <li>eating disorders, such as anorexia nervosa and bulimia</li>
                        <li>drug misuse</li>
                    </ul>
                </p>
                <hr class="hand-drawn" />
                <%--<a class="read-more" href="">Read more here <i class="play-button"></i></a>--%>
            </div>
        </div>
        <div class="column left width33 no-background-image">
            <div class="inner">
                <h4>Face to face Counselling</h4>
                <p class="web">
                    When life gives you issues, the pain, loss, uncertainty may feel too much to face alone.<br />
                    <br />

                    On line face to face therapy and counselling via web cam is a great way to give you control of choosing the time and  counsellor to  suite your needs. You can see who you are talking to and read about your counsellor or therapist in advance ,  this will help you decide who you want to talk to  and give you the freedom to be in control of your time, budget, and ultimately the choice in choosing the counsellor who will help you.
                       <br/><br/>
                </p>
                <hr class="hand-drawn" />
                <%--<a class="read-more" href="">Read more here <i class="play-button"></i></a> --%>
            </div>
        </div>
    </div>
</section>
-->

<footer class="main-footer">
    <div class="container">
        <div class="column left width25 web">
            <ul>
            <li><a href="/">Home</a></li>
            <!-- <li><a href="/How-the-site-works">How the site works</a></li>-->
            <!--<li><a href="/Find-a-therapist">Find a therapist</a></li>-->
            <!-- <li><a href="/Are-you-a-therapist-looking-to-help">Are you a therapist?</a></li>-->
                        <li><a href="/Privaacy-Policy">Privacy Policy</a></li>
                        <li><a href="/about-us">About us</a></li>
            </ul>
        </div>
        <div class="column left width25 web">
        <ul>
        <li><a href="/news">News</a></li>

        <li><a href="/blog">Blog</a></li>
        <li><a href="/payment-methods">Payment methods</a></li>

            <!-- <li><a href="/forthcoming-events">Forthcoming events</a></li>-->
        </ul>
        </div>
        <div class="column left width25 web">
        <ul>
        <li><a href="/faqs">FAQs</a></li>

        <li><a href="/TermsAndConditions">T&Cs</a> | <a href="/Site_Map">Sitemap</a></li>
            <li><a href="/log-on">Log in<a>&nbsp;|&nbsp; <a href="/registration">Create an account</a></li>
        </ul>
        </div>
        <div class="column right width25 information">
            <div class="social-links">
                <ul>
                    <li class="facebook"><a href="https://www.facebook.com/pages/The-One-stop-Psychotherapy-Shop-Ltd-TOSPS/484319421703368" target="_blank">F</a></li>
                    <li class="linkedin"><a href="https://www.linkedin.com/company/the-one-stop-psychotherapy-shop-ltd" target="_blank">L</a></li>
                    <li class="googleplus"><a href="https://plus.google.com/109037968997011775900/videos" target="_blank">G+</a></li>
                    <li class="twitter"><a href="https://twitter.com/T0SPS" target="_blank">T</a></li>
                </ul>
            </div>
            <button class="contact-us">Contact us</button>
            <a class="link-back" href="http://www.proxicon.io">Powered by | Proxicon</a>
        </div></div>
</footer>

<%--        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="<%= SkinPath%>js/vendor/jquery-1.10.2.min.js"><\/script>')</script>--%>
<script src="<%= SkinPath%>js/plugins.js"></script>
<script src="<%= SkinPath%>js/main.js"></script>
