<?php
?>
<h1>Registrated</h1>
<form method="post"
<input type ="text" name="login" value="<?= (isset($_post['login'])) ? $_POST['login'] : ''?>"
class ="<?= (isset($formErrors['login'])) ? 'error' : ''?>">
<?php if(isset($formErrors['login'])):?>
    <?php var_dump($formErrors['login'])?>
<?php endif;?>
    <button> Submit</button>

