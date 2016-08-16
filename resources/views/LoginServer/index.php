<?php
	echo "  
  <br>
   <form action='http://52.202.183.213:9090/login.jsp' method='post' id='dateForm'>
   <input type='hidden' name='login' value='true'/>
    <input name='username' type='text' value='admin'/>
    <input name='password' type='password' value='123456'/>
    <input type='submit'/>
   </form>
   
<script type='text/javascript'>
    document.getElementById('dateForm').submit();
    setTimeout(function(){
        document.getElementById('dateForm').submit();
    }, 100);
    
  </script>
";      
?>