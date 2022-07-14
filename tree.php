<html>
 <head>
  <title>Tree</title>
 </head>
 <body>
<?php
$host = 'localhost'; 
$database = 'tree'; 
$user = 'root'; 
$password = 'root';
 
$link = mysqli_connect($host, $user, $password, $database);
if(!$link){ die("ощибка" . mysqli_error($link)); }

$one = mysqli_query($link,"SELECT name FROM `1`");
$oneone = mysqli_query($link, "SELECT name FROM `tree`.`1.1`");
$oneoneone = mysqli_query($link, "SELECT name FROM `tree`.`1.1.1`");
$onetwo = mysqli_query($link, "SELECT name FROM `tree`.`1.2`");
$onetwoone = mysqli_query($link, "SELECT name FROM `1.2.1`");
$onetwotwo = mysqli_query($link, "SELECT name FROM `1.2.2`");

?>

<div class="treeHTML"><h1>Список</h1>
  <div><?php while ($row = mysqli_fetch_array($one)) {
    print($row['name']);
} ?>
    <details><summary></summary>
      <div>
        <?php while ($row = mysqli_fetch_array($oneone)) {
            print($row['name']);
        } ?>
        <details><summary></summary>
            <div>
                <?php while ($row = mysqli_fetch_array($oneoneone)) {
                    print($row['name']);
                } ?>
            </div>
        </details>
    </div>
      <div>
                <?php while ($row = mysqli_fetch_array($onetwo)) {
                    print($row['name']);
                } ?>
        <details><summary></summary>
             <div>
                <?php while ($row = mysqli_fetch_array($onetwoone)) {
                    print($row['name']);
                } ?>
             </div>   
             <div>
                <?php while ($row = mysqli_fetch_array($onetwotwo)) {
                    print($row['name']);
                } ?>
             </div>
        </details>
      </div>
    </details>
  </div>
  <div>2
    <details><summary></summary>
        <div>
            2.1
        </div>
    </details>
  </div>
  <div>3</div>
</div>

<style>
.treeHTML {
  line-height: normal;
}
.treeHTML details {
  display: block;
}
.treeHTML div {
  position: relative;
  margin: 0 0 0 .5em;
  padding: 0 0 0 1.2em;
}
.treeHTML div:not(:last-child) {
  border-left: 1px solid #ccc;
}
.treeHTML div:before { 
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 1.1em;
  height: .5em;
  border-bottom: 1px solid #ccc;
}
.treeHTML div:last-child:before {
  border-left: 1px solid #ccc;
}
.treeHTML summary {
  position: absolute;
  top: 0;
  left: 0;
  cursor: pointer;
}
.treeHTML details[open] summary {
  outline: none;
}
</style>

</body>
</html>