<?php
  $doc = new DOMDocument();
  $doc->load('http://blogherbalkoe.wordpress.com/feed/');
  $arrFeeds = array();
  foreach ($doc->getElementsByTagName('item') as $node) {
    $itemRSS = array ( 
      'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
      'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
      );
    array_push($arrFeeds, $itemRSS);
  }
 
  for($i=0;$i<5;$i++){
	   $title=$arrFeeds[$i]['title'];
	   $link=$arrFeeds[$i]['link'];
	   echo "<a href=$link target=blank>$title</a><br>";
  }
?>