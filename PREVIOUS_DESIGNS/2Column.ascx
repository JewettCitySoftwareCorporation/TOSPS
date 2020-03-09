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
        litTime.Text = "Current Time: " + DateTime.Now.AddHours(-1).ToString("HH:mm") + " BST"
    End Sub

    Protected Sub tmr_Tick(sender As Object, e As EventArgs)
        litTime.Text = "Current Time: " + DateTime.Now.AddHours(-1).ToString("HH:mm") + " BST"
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
<link rel="stylesheet" href="<%= SkinPath%>css/jquery.toastmessage.css" type="text/css" />
<script src="<%= SkinPath%>js/vendor/modernizr-2.6.2.min.js"></script>
<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<script type='text/javascript' src='<%= SkinPath%>js/jquery.simplemodal.js'></script>
<script type="text/javascript" src="<%= SkinPath%>js/jquery.timepicker.js"></script>
<script type="text/javascript" src="<%= SkinPath%>js/jquery.toastmessage.js"></script>

<link rel="stylesheet" type="text/css" href="<%= SkinPath%>/css/jquery.timepicker.css" />


<script type="text/javascript" src="<%= SkinPath%>js/vendor/bootstrap-datepicker.js"></script>

<link rel="stylesheet" type="text/css" href="<%= SkinPath%>/css/bootstrap-datepicker.css" />
<link rel="stylesheet" type="text/css" href="<%= SkinPath%>css/bootstrap-datetimepicker.min.css?v=2" />
<script type="text/javascript" src="<%= SkinPath%>js/bootstrap-datetimepicker.min.js?v=2"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#dnn_MenuPane").delay(200).fadeIn('slow');        
    });

</script>

<style>

body { background-color: #102544; }
#Form.showControlBar { margin-top: 50px !important; }
#ControlBar { height: 49px !important; }
#ControlEditPageMenu > li > a { height: 40px !important; }
#ControlEditPageMenu > li ul { top: 40px !important; }

header { position: relative; overflow: hidden; background: transparent; min-height: 300px; }
header .container { background: transparent; }
header:after { content: ''; position: absolute; bottom: 0; width: 0; height: 0; border-style: solid; border-width: 0px 0 80px 100vw; border-color: transparent transparent #ffffff transparent; }

#head_image { position: absolute; top: 0; bottom: 0; left: 0; right: 0; z-index: -1; background: url(https://tosps.com/DesktopModules/proxicon.TOSPSLanding/Landing/img/background.jpg) 0 36% no-repeat; background-size: 100% auto; }
#head_image img { width: 100%; display: block; }
#head_image .cover {
    z-index: 0; content: ''; position: absolute; left: 0; right: 0; top: 0; bottom: 0px; background: -moz-linear-gradient(left, rgba(13, 29, 59, 0.95) 0%, rgba(13, 29, 59, 0.2) 200%);
    background: -webkit-gradient(left top, right top, color-stop(0%, rgba(13, 29, 59, 0.95)), color-stop(200%, rgba(13, 29, 59, 0.2)));
    background: -webkit-linear-gradient(left, rgba(13, 29, 59, 0.95) 0%, rgba(13, 29, 59, 0.2) 200%);
    background: -o-linear-gradient(left, rgba(13, 29, 59, 0.95) 0%, rgba(13, 29, 59, 0.2) 200%);
    background: -ms-linear-gradient(left, rgba(13, 29, 59, 0.95) 0%, rgba(13, 29, 59, 0.2) 200%);
    background: linear-gradient(to right, rgba(13, 29, 59, 0.95) 0%, rgba(13, 29, 59, 0.2) 200%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0d1d3b', endColorstr='#f85032', GradientType=1 );
}
.header-top { height: auto; background: rgba(255, 255, 255, 0.05); padding: 0; }
.header-lower .logo h1 a, .header-lower .logo h1 a:hover { margin-top: -25px; display: block; width: 220px; height: 113px; background: #1a3252 url(https://tosps.com/Portals/_default/Skins/OSPS/img/18-logo-w.png) 0px 0px no-repeat; background-size: 100% auto; }
.header-lower .actions { width: 80%; }

nav.secondary-navigation { width: auto; }
.secondary-navigation > ul { color: #fff; }
.secondary-navigation ul li a { padding: 0; height: auto; line-height: inherit; }
.secondary-navigation ul li a, .secondary-navigation ul li, .secondary-navigation ul li a:hover { color: #fff; }
.secondary-navigation > ul > li { position: relative; padding: 14px 6px !important; display: inline-block; }
.secondary-navigation ul > li > ul { display: none; position: absolute; width: auto; background: #fff; border-radius: 6px; top: 48px; padding: 13px 16px; margin: 0; left: -66px }
.secondary-navigation ul li:hover ul { display: block; }
.secondary-navigation ul > li > ul:before { content: ''; position: absolute; top: -13px; right: 26px; width: 0; height: 0; border-style: solid; border-width: 0 10px 13px 10px; border-color: transparent transparent #fff transparent; -webkit-transform:rotate(360deg); }
.secondary-navigation ul > li > ul > li { display: block; }
.secondary-navigation ul > li > ul li a, .secondary-navigation ul > li > ul li a:hover { color: #01aeef; line-height: 22px; }

.badgelnk a { border: solid 1px #4fbbeb !important; }
.badgelnk a img { margin: 0px 6px 0 -3px; position: relative; top: -3px; }

.login-panel { margin-top: 12px; }
.login-panel a { color: #fff !important; padding: 10px; border-radius: 6px; border: solid 1px #fff; margin-right: 10px; text-decoration: none !important; }
.login-panel a:hover { background: rgba(255, 255, 255, 0.05); }
.login-panel .S_T a, .login-panel .S_T a:hover { border-color: #10d28a; color: #10f9a2 !important; }

.header-lower .logo { width: auto; height: auto; margin-bottom: 32px; }

#awards span { font-size: 14px; color: #fff; border-radius: 100%; padding: 0 10px 0; }
#awards span img { height: 50px; display: inline-block; margin-right: 6px; }
#awards span img.rnd { background: #fff; border-radius: 24px; padding: 10px 9px; }


#dnn_MenuPane { background-color: #1b3352; border-radius: 10px; display: none; }
.therapist-search #dnn_MenuPane { background-color: #18bd8f; }

#dnn_MenuPane a { color: #fff; }
#dnn_MenuPane h2 { display: none; }
#dnn_MenuPane h4 { font-family: "Lato", "Helvetica Neue", Sans-serif; background: transparent; margin-bottom: 15px !important; color: #fff; text-align: center; }
.content aside { width: 332px; }
aside span.cent { text-align: center; display: inline-block; margin: -6px 0 12px; position: relative; width: 100%; }
aside hr { border-top: 1px solid rgba(255, 255, 255, 0.35); }
.content aside input[type="text"], .content aside select { margin-bottom: 17px !important; color: #333 !important; font-size: 14px; }
.content aside select { height: 43px !important; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; padding: 0 21px 0 8px !important; display: block; -webkit-appearance: none; -ms-appearance: none; -moz-appearance: none; appearance: none; background: #ffffff url(../Portals/_default/Skins/OSPS/img/select-arrow.png) no-repeat 97% 45%; background-size: auto 50%; }
.content aside select::-ms-expand { display: none; }
.content aside input[type="checkbox"], .content aside input[type="radio"] { margin: 13px 9px 16px 15px; color: #fff; }
.content aside input[type="text"]:focus { border-color: #75e4c5; -webkit-box-shadow: none; -moz-box-shadow: none; -o-box-shadow: none; box-shadow: none; }

.content aside input[type="radio"] { display: none; }
.content aside input[type="radio"] + label { color: #fff; font-weight: bold; padding: 7px 13px; border: solid 1px #fff; border-radius: 5px; margin: 15px 2px; display: inline-block; font-size: 13px; }
.content aside input[type="radio"] + label:hover { cursor: pointer; background: rgba(255, 255, 255, 0.35); }
.content aside input[type="radio"]:checked + label { background: #fff; color: #555; }
/*
#dnn_ctr2573_View_rblGender_2 + label { visibility: hidden; padding: 0; border: 0; }
#dnn_ctr2573_View_rblGender_2 + label:after { visibility: visible; content: 'No Preference'; border: solid 1px #fff; padding: 9px 13px; white-space: nowrap; border-radius: 5px; display: inline-block; }
#dnn_ctr2573_View_rblGender_2 + label:hover:before { cursor: pointer; background: rgba(255, 255, 255, 0.35); }
#dnn_ctr2573_View_rblGender_2:checked + label:before { background: #fff; color: #555; }
*/
#lblNoRecords { display: block; padding: 20px; background: #f0f0f0; border-radius: 10px; margin-top: 20px; }

.content aside button.search { text-shadow: none; background: #18be8e; border: 2px solid #ffffff; font-family: "Lato", "Helvetica Neue", Sans-serif; width: 100%; margin-top: 3px; height: 50px; }
.content aside button.search:hover { box-shadow: none; -webkit-box-shadow: none; background: #16d09a; }
.content aside ul.dark { color: #fff; }

.therapist-search .content aside button.search { background: #213f65; }
.therapist-search .content aside button.search:hover { background: #274771; }

h1, h2, h3, h4, h5, button { font-family: "Lato", "Helvetica Neue", Sans-serif; }

#wizRegular { margin: 20px 0; }
#wizRegular #breadcrumbs, #wizRegular .chevron-breadcrumb { display: none; }
.therapist-details-avatar .status { background-color: rgba(40, 162, 228, 0.71); font-size: 13px; line-height: 30px; }
#wizRegular #lnkStep2Next { font-family: "Lato", "Helvetica Neue", Sans-serif; font-weight: bold; background-color: #18bd8f; color: #fff; box-shadow: none; -webkit-box-shadow: none; border-radius: 6px; width: 100%; text-shadow: none; margin: 0; text-align: center; }
#wizRegular #lnkStep2Next:hover { box-shadow: none; -webkit-box-shadow: none; background-color: #13d09b; }
#wizRegular #lnkStep2Next i { display: inline-block; float: none; margin: 0px 10px -5px -1px; }

#wizRegular #hlViewTherapist { border: solid 1px #0094cb; padding: 7px 16px; background: #fff; font-weight: bold; color: #0094cb; border-radius: 6px; margin-bottom: 16px; text-align: center; text-decoration: none; }
#wizRegular #hlViewTherapist:hover { color: #08a9e4; }
#wizRegular .therapist-name { color: #333; margin: 10px 0 10px 10px; min-height: 30px; }
#wizRegular .therapist-biography { font-size: 14px; line-height: 19px; min-height: 160px; }

.therapist-results-grid .therapist-details .therapist-details-avatar { height: 245px; background: #f0f0f0; }
.therapist-results-grid .therapist-details { background: #f0f0f0; border-top: 0; padding: 12px; margin-right: 20px; margin-left: 0; width: 270px; box-sizing: border-box; }
.therapist-results-grid .therapist-details .therapist-details-avatar img { margin-top: 0; }
.therapist-results-grid .therapist-details div.therapist-details-details { width: 100%; margin: 0; }
.therapist-results-grid .therapist-details .therapist-rate { background: #fff; padding: 4px; text-align: center; margin-top: 10px; }


.blog-listing { padding: 40px; border: solid 1px #ddd; margin-bottom: 30px; }
#dnn_ContentPane h2 { font-size: 24px; line-height: 33px; }
.blog-listing h4, .blog-listing h4 a { font-size: 30px; margin-bottom: 5px; display: inline-block; }
.blog-listing h5.blog-owner { display: block; margin-bottom: 10px; margin-bottom: 10px !important; }



footer.main-footer { background: #0C1E39; }
footer.main-footer .column > ul { padding: 20px 0 20px 0; background: #1c3150; min-height: 115px; margin: 20px 20px; text-align: center; }
.social-links li { margin: 0 4px; }
.social-links { display: block; text-align: center; float: left; width: 100%; }
.social-links ul { padding: 0 !important; margin: 0; }
footer.main-footer button.contact-us { float: none; margin: 0px auto; box-shadow: none; -webkit-box-shadow: none; font-family: "Lato", "Helvetica Neue", Sans-serif; font-weight: bold; border: solid 1px #fff; text-shadow:none;}
footer.main-footer button.contact-us:hover { box-shadow: none; -webkit-box-shadow: none; }
footer .container { max-width: 1236px; width: 100%; }


::-webkit-input-placeholder { /* Chrome */
  color: #666 !important;
}
:-ms-input-placeholder { /* IE 10+ */
  color: #666 !important;
}
::-moz-placeholder { /* Firefox 19+ */
  color: #666 !important;
}
:-moz-placeholder { /* Firefox 4 - 18 */
  color: #666 !important;
}

</style>

<!-- header -->
<header>
    <!-- container -->

    <div id="head_image">
        <div class="cover"></div>
    </div>

    
    <div class="header-top clearfix">
        <div class="container">
            <!--<div class="social-links">
                <ul>
                    <li class="facebook"><a href="https://www.facebook.com/pages/The-One-stop-Psychotherapy-Shop-Ltd-TOSPS/484319421703368" target="_blank">Facebook</a></li>
                    <li class="linkedin"><a href="https://www.linkedin.com/company/the-one-stop-psychotherapy-shop-ltd" target="_blank">LinkedIn</a></li>
                    <li class="googleplus"><a href="https://plus.google.com/109037968997011775900/videos" target="_blank">Google+</a></li>
                    <li class="twitter"><a href="https://twitter.com/T0SPS" target="_blank">Twitter</a></li>
                </ul>
            </div>-->
            <nav class="secondary-navigation">
                <ul>
                    <li><a href="/are-you-a-therapist-looking-to-help">Are you a therapist?</a></li>
                    |
                    <li><a href="/about-us">About</a></li>
                    |
                    <li><a href="/news">News</a></li>
                    |
                    <li><a href="/blog">Blog</a></li>
                    |
                    <li><a href="/payment-methods">Payment methods</a></li>
                    |
                    <li><a href="/faqs">FAQ's</a></li>
                    |
                    <li><a href="/contact-us">Contact</a></li>
                    |
                    <li>Cyber Education Hub
                        <ul>
                            <li><a href="/Cyber-hub-for-clients">Cyber info for Clients</a></li>
                            <li><a href="/cyber-hub-for-therapists">Cyber info for Therapists</a></li>
                            <li><a href="http://tosps-security.proxicon.io/tosps-cyber-security-seal/">TOSPS Cyber Security Badge</a></li>
                            <li><a href="/tospsitglossary.pdf">I.T. Glossary</a></li>
                        </ul>   
                    </li>    
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="header-lower clearfix">
            <div class="logo">
                <h1><a href="/">The One Stop Psychotherapy Shop</a></h1>
                <!--
                <div class="blink-image">
                  <a href="http://tosps-security.proxicon.io/tosps-cyber-security-seal/" target="_blank">
                    <h2 class="sub-header">Video call counselling and therapy services
                    </h2>
                  </a>
                </div>-->
            </div>
            <div class="actions">
                    <div class="login-panel">
                    <!--<div style="float:left;margin-left:22px;">
                        <asp:UpdatePanel ID="updTime" runat="server">
                            <ContentTemplate>
                                <asp:Timer ID="tmr" runat="server" Interval="60000" OnTick="tmr_Tick" Enabled="true"></asp:Timer>
                                <asp:Literal ID="litTime" runat="server"></asp:Literal>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>-->

                    <% If Request.IsAuthenticated Then%>
                    <ul>
                          <%
                            Dim ui As DotNetNuke.Entities.Users.UserInfo = DotNetNuke.Entities.Users.UserController.GetUserById(Me.PortalSettings.PortalId, Me.PortalSettings.UserId)
                            If ui.IsInRole("Therapist") Then%>

                            <li class="badgelnk"><a href="ttp://tosps-security.proxicon.io/tosps-cyber-security-seal/"><img src="https://tosps.com/Portals/_default/Skins/OSPS/img/Badge-18.png" style="height:50px;"/>Gain the TOSPS cyber security badge</a></li>
                            <li><a href="/therapist/profile"><%= PortalSettings.UserInfo.DisplayName %> - Profile</a>
                        <% Else%>
                            <li class="S_T"><a href="/speak-to-a-therapist-now"><i></i>Speak To A Therapist Now</a></li>
                            <li><a href="/user/profile"><%= PortalSettings.UserInfo.DisplayName %> - Profile</a>
                        <%End If%>
						</li>
                        <li><a href="/home/ctl/logoff">Log out</a></li>
                    </ul>
                    <% Else%>
                   <ul> 
                        <li class="S_T"><a href="/speak-to-a-therapist-now"><i></i>Speak To a Therapist Now</a></li>
                        <li><a href="/log-on">Log In</a></li>
                        <li><a href="/registration">Create An Account</a></li>
                    </ul>
                    <%End If%>
                </div>
                <!--<div class="buttons mobile">
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
                </div>-->
            </div>
        </div>
    </div>
    <!-- container -->
    <div id="awards" class="container">
        <span>
        <img src="https://tosps.com/Portals/_default/Skins/OSPS/img/NationalTechnologyAwards-shortlisted.jpg" class="rnd"/>
        Award Winning Service
        </span>
        <span>
        <img src="https://tosps.com/DesktopModules/proxicon.TOSPSLanding/Landing/img/NHS_CHOICES.png" style="height:25px;"/>
        Approved by NHS Choices
        </span>
        <span>
        <img src="https://tosps.com/Portals/_default/Skins/OSPS/img/Badge-18.png" style="height:50px;"/>
        Banking Grade Security
        </span>
    </div>
</header>

<!--
<nav class="main-navigation">
    <div class="container">
        <input type="checkbox" id="toggle" />
        <label for="toggle" class="toggle"><i class="dropdown">&#9660;</i></label>
        <ul class="menu">
            <li><a class="active" href="/">Home</a></li>
            <li><a href="/Find-a-therapist">Find a therapist</a></li>
            <li><a href="/contact-us">Contact us</a></li>
              <li><a href="https://itunes.apple.com/gb/app/therapy-chat/id975625866?mt=8" style="display:inline-block;overflow:hidden;background:url(//linkmaker.itunes.apple.com/assets/shared/badges/en-us/appstore-lrg.svg) no-repeat;width:130px;height:40px;background-size:contain;margin-top: 20px;margin-left: 20px;"></a></li>
        </ul>
    </div>
</nav>-->

        <div class="content two_col">

            <div class="container">
                <aside id="MenuPane" runat="server">
                    <%--<div class="search-for-a-therapist">
                        <h4>Search for a therapist here<i class="search"></i></h4>
                        <input type="text" placeholder="Enter a keyword" />
                        <select>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">5</option>
                        </select>
                        <hr class="sidebar" />
                        <h5>Gender</h5>
                        <input type="radio" name="Male" value="Male">Male
                        <input type="radio" name="Female" value="Female">Female
                        <input type="radio" name="Either" value="Either">Either
                        <select>
                            <option value="1">Choose a language</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">5</option>
                        </select>
                        <hr class="sidebar"  />
                        <h5>Online</h5>
                        <input type="radio" name="Online" value="Online">Online now
                        <input type="radio" name="DoesntMatter" value="DoesntMatter">Doesn't Matter
                        <hr class="sidebar"/>
                        <h5>Availability</h5>
                        <input type="text" placeholder="" />
                        <a class="pref" href="#">Save my custom preferences</a><br />
                        <button class="search">Search</button>
                    </div>--%>
                </aside>
                <div class="main-body"  id="ContentPane" runat="server">
             </div>
            </div>
        </div>


        <%--<div  id="ContentPane" class="content" runat="server">
            <div class="container">

                <section class="billboard web">
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
                </section>

            </div>

            <section class="search">
                <div class="container">
                    <h3>Search for a therapist here<i class="search"></i></h3>
                    <input type="text" placeholder="Search for a therapist based on a keyword" />
                    <a class="advanced" href="#">Advanced search</a>
                    <button class="search">Search</button>
                </div>
            </section>
        </div>--%>

<%--<section class="further-info">
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
            <p class="main-date">05 May</p>
            <h5>In the news</h5>
            <p class="sub-date">27 Nov 2013</p>
            <h6>Increase in students counselling.</h6>
            <p>
                The number of students seeking counselling support at Glasgow University has more than doubled in the last four years, the largest increase seen within the UK.<br />
                <br />

                There was an average increase of a third in demand for counselling at universities throughout the UK in the last four years, according to a study by Help me Investigate. Glasgow University has seen the number of students registered with CAPS rise from 512 students in 2008-9 to 1251 in 2012-13. Glasgow University has the longest waiting list of the universities in the UK, with 239 people on it.<br />
                <br />

                This increase has raised concerns that the University�s provision of the Counselling and Psychological Services (CAPS) is not sufficient for the demand of students.

            </p>
        </div>
        <div class="from-the-blog web">
            <p class="main-date">07 May</p>
            <h5>From the blog</h5>
            <p class="sub-date">25 Nov 2013</p>
            <h6>Fish oils to treat ADHD?</h6>
            <p>
                A new study suggests omega fish oil supplements could improve symptoms of ADHD.<br />
                <br />

                New research has found that fish oil supplements could work just as well as prescribed drugs, such as Ritalin to help improve brain function in hyperactive youngsters.<br />
                <br />

                In the trial � which has been published in the Journal of Attention Disorders � 90 children who had been recently diagnosed with ADHD were tested over the course of 12 months.

            </p>

        </div>
    </div>
</section>--%>

<%--<section class="faq">
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
                <a class="read-more" href="">Read more here <i class="play-button"></i></a>
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
                <a class="read-more" href="">Read more here <i class="play-button"></i></a>
            </div>
        </div>
        <div class="column left width33 no-background-image">
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
                <a class="read-more" href="">Read more here <i class="play-button"></i></a>
            </div>
        </div>
    </div>
</section>--%>

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
                      <li><a href="/TermsAndConditions">T&amp;Cs</a> | <a href="/Site_Map">Sitemap</a></li>
                      <li><a href="/log-on">Log in<a>&nbsp;|&nbsp; <a href="/registration">Create an account</a></li>
                    </ul>
                </div>
                <div class="column right width25">
                  <ul>
                    <button type="reset" onclick="location.href='/Contact-us'" class="contact-us">Contact Us</button>
                  </ul>
                </div>

                  <div class="social-links">
                      <ul>
                          <li class="facebook"><a href="https://www.facebook.com/pages/The-One-stop-Psychotherapy-Shop-Ltd-TOSPS/484319421703368" target="_blank">F</a></li>
                          <li class="linkedin"><a href="https://www.linkedin.com/company/the-one-stop-psychotherapy-shop-ltd" target="_blank">L</a></li>
                          <li class="googleplus"><a href="https://plus.google.com/109037968997011775900/videos" target="_blank">G+</a></li>
                          <li class="twitter"><a href="https://twitter.com/T0SPS" target="_blank">T</a></li>
                      </ul>
                  </div>
          </div>
</footer>

<%--        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="<%= SkinPath%>js/vendor/jquery-1.10.2.min.js"><\/script>')</script>--%>
<script src="<%= SkinPath%>js/plugins.js"></script>
<script src="<%= SkinPath%>js/main.js"></script>
