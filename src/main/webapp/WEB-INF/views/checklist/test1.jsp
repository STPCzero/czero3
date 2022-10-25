<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>웹페이지 제목</title>
    <style>
        * {
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        html, body {
            background:#FFFFFF;
            font-size:1.1rem;
            font-family:'Quicksand', sans-serif;
            height:100%;
        }
        @keyframes strikeitem {
            to { width:calc(100% + 1rem); }
        }

        #todolist {
            margin:4rem auto;
            padding:2rem 3rem 3rem;
            max-width:500px;
            background:#d5f6f0;
            color:#FFF;
            box-shadow:-20px -20px 0px 0px rgba(100,100,100,.1);
        }
        #todolist h1 {
            /*text-align:center;*/
            font-weight:normal;
            font-size:2.6rem;
            letter-spacing:0.05em;
            border-bottom:1px solid rgba(255,255,255,.3);
        }
        #todolist h1 span {
            display:block;
            font-size:0.8rem;
            margin-bottom:0.7rem;
            margin-left:3px;
            margin-top:0.2rem;
        }

        #todolist .emptylist {
            margin-top:2.6rem;
            text-align:center;
            letter-spacing:.05em;
            font-style:italic;
            opacity:0.8;

        }
        #todolist ul {
            margin-top:2.6rem;
            list-style:none;
        }
        #todolist .todolist-move {
            transition: transform 1s;
        }
        #todolist li {
            display:flex;
            margin:0 -3rem 4px;
            padding:1.1rem 3rem;
            justify-content:space-between;
            align-items:center;
            background:#84dcc6;
        }

        #todolist .actions {
            flex-shrink:0;
            padding-left:0.7em;
        }
        #todolist .label {
            position:relative;
            transition:opacity .2s linear;
        }
        #todolist .done .label {
            opacity:.6;
        }
        #todolist .done .label:before {
            content:'';
            position:absolute;
            top:50%;
            left:-.5rem;
            display:block;
            width:0%;
            height:1px;
            background:#FFF;
            animation:strikeitem .3s ease-out 0s forwards;
        }
        #todolist .btn-picto {
            border:none;
            background:none;
            -webkit-appearance:none;
            cursor:pointer;
            color:#FFF;
        }


        /* FORM */
        form {
            margin-top:3rem;
            display:flex;
            flex-wrap:wrap;
        }
        form label {
            min-width:100%;
            margin-bottom:.5rem;
            font-size:1.3rem;
        }
        form input {
            flex-grow:1;
            border:none;
            background:#f7f1f1;
            padding:0 1.5em;
            font-size:initial;
        }
        form button {
            padding:0 1.3rem;
            border:none;
            background:#38cdb2;
            color:white;
            text-transform:uppercase;
            margin-left:5px;
            cursor:pointer;
            transition:background .2s ease-out;
        }
        form button:hover {
            background:#38cdb2;
        }
        form input,
        form button {
            font-family:'Quicksand', sans-serif;
            height:3rem;
        }


        /* TOOGLE COMPONENT */
        .togglebutton-wrapper {
            margin-top:1em;
        }
        .togglebutton-wrapper label {
            display:flex;
            justify-content:flex-end;
            align-items:center;
        }
        .togglebutton-wrapper input {
            position:absolute;
            left:-9999px;
        }
        .togglebutton-wrapper .togglebutton-label {
            font-size:.8rem;
            letter-spacing:.1em
        }
        .togglebutton-wrapper .tooglebutton-box {
            position:relative;
            display:block;
            margin-left:0.6em;
            width:38px;
            height:22px;
            background:white;
            /*border:1px solid black;*/
            border-radius:999px;
            cursor:pointer;
        }
        .togglebutton-wrapper .tooglebutton-box:before {
            content:'';
            position:absolute;
            top:2px; left:2px;
            display:block;
            width:18px; height:18px;
            /*border:1px solid #FF6666;*/
            border-radius:50%;
            background:#38cdb2;
            opacity:0.7;
            transition:	all .2s ease-in-out;
        }

        .togglebutton-wrapper.togglebutton-checked .tooglebutton-box:before {
            left:calc(100% - 4px - 16px);
            opacity:1;
        }
    </style>

</head>
<body>
</body>
</html>