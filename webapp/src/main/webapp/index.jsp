<!DOCTYPE html>
<html>
  <style>
    .mytooltip .mytext {
      visibility: hidden;
      width: 140px;
      background-color: blue;
      color: #fff;
      z-index: 1;
      top: -5px;
      left: 110%;
      text-align: center;
      border-radius: 6px;
      padding: 5px 0;
      position: absolute;
    }
    .mytooltip {
      position: relative;
      display: inline-block;
      margin-left: 150px;
    }
    .mytooltip .mytext:after {
      content: "";
      position: absolute;
      top: 50%;
      right: 100%;
      margin-top: -5px;
      border-width: 6px;
      border-style: solid;
      border-color: transparent transparent transparent blue;
    }
    .mytooltip:hover .mytext {
      visibility: visible;
    }
  </style>
  <script>
    const months = ["March", "Jan", "Feb", "Dec"];
    const array1 = [1, 30, 4, 21, 100000];

    const spanish = ["March", "Jan", "Feb", "Dec"];
spanish.sort((a,b) =>  a.localeCompare(b))
console.log(spanish) // ["comí", "comieron", "comió", "comíste"]
  </script>
  <body>
    <div class="mytooltip">
      Keep mouse cursor over me
      <span 
      class="mytext"> My Tooltip text</span>
    </div>
  </body>
</html>
