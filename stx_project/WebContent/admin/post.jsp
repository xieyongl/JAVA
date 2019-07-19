<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css"/>
    <link rel="stylesheet" href="css/admin.css"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/fileinput.js"></script>
    <script src="js/zh.js"></script>
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/fileinput.css">
    <link rel="stylesheet" href="css/normalize.css">

    <style>
        .editer {
            width: 100%;
            height: 600px;
        }

        .editer-left {
            float: left;
            padding: 10px 15px;
            width: 70%;
            /*margin-left: auto;*/
            /*margin-right: auto;*/

        }

        .editer-right {
            float: right;
            width: 30%;
            padding: 10px 10px;
            border-left: #EEEEEE 2px solid;
            height: 900px;
        }

        .editer-header {
            padding: 10px 10px;
            text-align: right;
        }
    </style>

</head>

<body>






<div class="admin-content-body">
    <!-- 文章书写区-->
    <div class="editer-header">
            <form enctype="multipart/form-data">
                <button type="submit" class="btn btn-primary" onclick="Haha();" id="btn2">发布</button>
                <button type="reset" class="btn btn-default">取消</button>
            </form>
        </div>
    <div class="editer-left from-group">
        <h2>标题</h2>
        <input type="text" class="form-control" placeholder="Text input" name="work_title">
        <br />
        <div class="editer" id="editor">
        </div>
        <script src="js/wangEditor.min.js"></script>
        <script type="text/javascript">
            var E = window.wangEditor
            var editor = new E('#editor')
            editor.create()
            
            //document.getElementById('btn2').addEventListener('click', function () {
        		//var json = editor.txt.getJSON()  // 获取 JSON 格式的内容
        		//var jsonStr = JSON.stringify(json)
        		//console.log(json)
        		//console.log(jsonStr)
        	document.getElementById('btn2').addEventListener('click', function () {
        	// 读取 html
       			//alert(editor.txt.html())
        		var dataStr = editor.txt.html()
        		
        		$.ajax({
           		  type: 'POST',
           		  url: 'http://localhost:8080/stx_project/work',
           		  data: {
           			  work_content: dataStr
           		  },
          		  success: function() {
          			  alart("success")
          		  },
          		  fail: function () {
          			  alert("error")
          		  }
          		  
           		});
       
    		}, false)
        
    //})

        </script>
    </div>
    <!-- 编辑功能区-->
    <div class="editer-right">
        <div class="editer-header">
           <!--  <form enctype="multipart/form-data">
                <button type="submit" class="btn btn-primary" onclick="Haha();" id="btn2">发布</button>
                <button type="reset" class="btn btn-default">取消</button>
            </form>-->
        </div>
        <div>
            <form enctype="multipart/form-data">
<!--                <hr style="border: 1px dotted">-->
                <label>附件上传</label>

                <input id="file-zh" name="file-zh[]" type="file" multiple>
            </form>
        </div>

    </div>
</div>
</body>


<script>
    $('#file-zh').fileinput({
        language: 'zh',
        uploadUrl: '#',
        allowedFileExtensions: ['jpg', 'png', 'gif'],
    });
    $("#file-0").fileinput({
        'allowedFileExtensions': ['jpg', 'png', 'gif'],
    });
    $("#file-1").fileinput({
        uploadUrl: '#', // you must set a valid URL here else you will get an error
        allowedFileExtensions: ['jpg', 'png', 'gif'],
        overwriteInitial: false,
        maxFileSize: 1000,
        maxFilesNum: 10,
        //allowedFileTypes: ['image', 'video', 'flash'],
        slugCallback: function (filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });
    /*
    $(".file").on('fileselect', function(event, n, l) {
        alert('File Selected. Name: ' + l + ', Num: ' + n);
    });
    */
    $("#file-3").fileinput({
        showUpload: false,
        showCaption: false,
        browseClass: "btn btn-primary btn-lg",
        fileType: "any",
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
    });
    $("#file-4").fileinput({
        uploadExtraData: {kvId: '10'}
    });
    $(".btn-warning").on('click', function () {
        if ($('#file-4').attr('disabled')) {
            $('#file-4').fileinput('enable');
        } else {
            $('#file-4').fileinput('disable');
        }
    });
    $(".btn-info").on('click', function () {
        $('#file-4').fileinput('refresh', {previewClass: 'bg-info'});
    });
    /*
    $('#file-4').on('fileselectnone', function() {
        alert('Huh! You selected no files.');
    });
    $('#file-4').on('filebrowse', function() {
        alert('File browse clicked for #file-4');
    });
    */
    $(document).ready(function () {
        $("#test-upload").fileinput({
            'showPreview': false,
            'allowedFileExtensions': ['jpg', 'png', 'gif'],
            'elErrorContainer': '#errorBlock'
        });
        /*
        $("#test-upload").on('fileloaded', function(event, file, previewId, index) {
            alert('i = ' + index + ', id = ' + previewId + ', file = ' + file.name);
        });
        */
    });
    
    function Haha(){
    	alert("发表成功！");
    }
</script>
</html>