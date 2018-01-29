<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>AUST OJ</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta property="og:image" content="Contents/images/austpc.JPG" />
    <meta property="og:image:type" content="image/jpg" />

    <meta name="author" content="Sifat Ahmed; CSE Batch-35, AUST; Email: sifat.69@live.com">
    <meta name="author" content="Asif Imtiaz Shaafi; CSE Batch-35, AUST; Email: #">
    <meta name="author" content="Sayef Reyadh Khan; CSE Batch-35, AUST; Email: #">


    <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <link href="Contents/css/bootstrap.css" rel="stylesheet" type="text/css" />

    <!-- Custom Theme files -->

    <link href="//fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet" type="text/css">
    <link href="Contents/css/style.css" rel="stylesheet" type="text/css" />
    <script src="Contents/js/jquery-1.11.1.min.js"></script>
    <script src="Contents/js/bootstrap.min.js"></script>
    <script src="Contents/js/rainbow.js"></script>
    <!-- animation-effect -->
    <script src="Contents/js/ace/ace.js"></script>

    <link href="Contents/css/twilight.css" rel="stylesheet">

    <link href="Contents/css/animate.min.css" rel="stylesheet">
    <script src="Contents/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!-- //animation-effect -->
</head>
<body>
<form id="form" runat="server">
    <!-- banner -->

    <div class="banner banner-1">
        <div class="header-bottom">
            <div class="container">
                <div class="logo fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
                    <div>
                        <!-- TODO -->
                        <h2><a href="Default.aspx">AUST Online Judge Beta v2.0</a></h2>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- technology-left -->
    <div class="technology">
        <div class="container">
            
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <p style="height: 2em; width: 90%; margin-bottom: 1em;font-size: 1.5em; font-family: Consolas;"> Enter your code here.For Java Class name Must be <strong>MAIN</strong>.</p>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-9">
                    
                    <div>
                        <textarea name="codeInput" id="codeInput" runat="server" style="height: 30em; width: 100%; padding: 2em;" placeholder="Enter your code here"></textarea>
                        <textarea name="hidden" id="hidden" style="display:none;"></textarea>
                    </div>
                </div>
                
                <div class="col-md-3 ">
                    <p style="height: 2em; width: 100%; font-size: 1.5em; font-family: Consolas;">Choose code type</p>
                    <asp:DropDownList ID="codeList" runat="server" style="height: 3em; width: 100%; margin: 0em 0em 2em 0em; font-size: 1em; font-family: Consolas;">
                        <asp:ListItem Value=".c">C</asp:ListItem>
                        <asp:ListItem Value=".cpp">C++</asp:ListItem>
                        <asp:ListItem Value=".java">Java</asp:ListItem>
                    </asp:DropDownList>
                    <textarea name="stdin" id="stdin" style="height: 26em; width: 100%; padding: 1em;" placeholder="Enter your input here before hitting submit"></textarea>
                </div>

            </div>
            
             <div class="row">
                 <div class="col-md-9">
                     <div class="bht1 pull-right" style="font-size: 1.5em">
                         <asp:Button ID="submitBtn" runat="server" style="margin-left: 627px" Text="Submit"  Height="40px" Width="130px" Font-Size="X-Large" OnClick="submitBtn_Click"/>
                     </div>
                 </div>
             </div>
            
            
            <div class="row">
                <div class="col-md-12">
                     
                    <div class="well" style=" margin-top: 2em; width: 100%">
                        <strong style="font-family: consolas;">
                            <h3>Verdict</h3>
                        </strong>
                    </div>

                    <div class="well" style="margin-top: 2em; width: 100%;">
                        <div class="alert alert-success" runat="server" id="showFIle" name="showFIle" style="width: 100%;">
                            <strong><u>Filename:</u></strong> <b><%= stat.FileNameExt %></b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showCompileStatus" name="showCompileStatus">
                            <strong><u>Compile Status:</u></strong> <b><%= stat.Compile_status %></b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showCompileError" name="showCompileError">
                            <strong><u>Compile Error:</u></strong> <b><%= stat.Compile_Error %></b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showRunStatus" name="showRunStatus" >
                            <strong><u>Run Status:</u></strong> <b><%= stat.Run_status %></b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showRunError" name="showRunError">
                            <strong><u>Runtime Error:</u></strong> <b><%= stat.Run_Error %></b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showMemory" name="showMemory">
                            <strong><u>Memory Used:</u></strong> <b>NA - Limit (2MB)</b>.
                        </div>
                        <div class="alert alert-success" runat="server" id="showRunTime" name="showRunTime">
                            <strong><u>Runtime:</u></strong> <b><%= stat.Runtime %></b>.
                        </div>
          
                    </div>
                    
                    
                    <div style="margin-top: 3em; width: auto;">
                    <!-- <pre>Your Code
		                <code data-language="C" style="font-size: 1.5em;font-family: Consolas;">
	                        
			            </code>
		            </pre> -->
                    <pre class="well" style="color: black; font-size: 1em;">Stdin</pre>
                    <textarea name="showInput" runat="server" id="showInput" style="height: 30em; width: 100%; padding: 2em;" placeholder="Enter your code here"></textarea>
                    <pre class="well" style="color: black; font-size: 1em;">Stdout</pre>
                    <textarea name="showOutput" runat="server" id="showOutput" style="height: 30em; width: 100%; padding: 2em;" placeholder="Enter your code here"></textarea>

                </div>

                </div>   
            </div>
            
            

            <div class="col-md-9 technology-left">
                
                
              

               
            </div>
            <!-- technology-right -->

            <div class="col-md-3 technology-right">
                
                
            </div>
            <div class="clearfix"></div>
            <!-- technology-right -->
        </div>
    </div>


    <div class="footer">
        <div class="container">

            <div class="col-md-4 footer-left wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
                <center>
					<img class="img-thumbnail img-circle" src="Contents/images/shaafi.jpg" style="width:48%;height:40%;">
				</center>
                <div class="name" style="margin-top: 1em;">
                    <center><h4><a href="https://www.facebook.com/asif.shaafi">Asif Imtiaz Shaafi</a></h4></center>
                </div>
            </div>

            <div class="col-md-4 footer-left wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
                <center>
					<img class="img-thumbnail img-circle" src="Contents/images/sifat.jpg" style="width:50%;height:50%;">
				</center>
                <div class="name" style="margin-top: 1em;">
                    <center><h4><a href="http://facebook.com/Sifat.iv">Sifat Ahmed</a></h4></center>
                </div>
            </div>

            <div class="col-md-4 footer-left wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
                <center>
					<img class="img-thumbnail img-circle" src="Contents/images/sayef.PNG" style="width:55%;height:50%;">
				</center>
                <div class="name" style="margin-top: 1em;">
                    <center><h4><a href="https://www.facebook.com/Sayef.Reyadh.Khan">Sayef Reyadh Khan</a></h4></center>
                </div>
            </div>


            <div class="clearfix"></div>
        </div>
    </div>
    <div class="copyright wow fadeInDown" data-wow-duration=".8s" data-wow-delay=".2s">
        <div class="container">
            <p>© 2017 All rights reserved | Designed by Sifat Ahmed</p>
        </div>
    </div>

    <script>
        var editor = ace.edit("codeInput");
        editor.setTheme("ace/theme/cobalt");
        editor.session.setMode("ace/mode/c_cpp");
        editor.setAutoScrollEditorIntoView(true);
        editor.setOption("maxLines", 27);
        editor.setOption("minLines", 27);
        editor.setOptions({
            fontFamily: "consolas",
            fontSize: "1.1em",

        });

        var editor1 = ace.edit("showInput");
        editor1.setTheme("ace/theme/github");
        editor1.session.setMode("ace/mode/c_cpp");
        editor1.setAutoScrollEditorIntoView(true);
        editor1.setOption("maxLines", 21);
        editor1.setOption("minLines", 5);
        editor1.setOptions({
            fontFamily: "consolas",
            fontSize: "1.1em",
            
        });

        var editor3 = ace.edit("showOutput");
        editor3.setTheme("ace/theme/github");
        editor3.session.setMode("ace/mode/c_cpp");
        editor3.setAutoScrollEditorIntoView(true);
        editor3.setOption("maxLines", 21);
        editor3.setOption("minLines", 5);
        editor3.setOptions({
            fontFamily: "consolas",
            fontSize: "1.1em",

        });

    </script>
    
    <script>
        $("form").submit(function () {
            $("#hidden").val(editor.getSession().getValue());
            //editor1.setValue($("#stdin").val() , -1);
        });
    </script>

</form>
</body>
</html>
