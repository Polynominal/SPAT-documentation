<?php

echo "Field order:<br/>";
echo "Overall Rating out of 5 //<br/>";
echo "Job Work/Life Balance out of 100 //<br/>";
echo "Compensation/Benefits out of 100 //<br/>";
echo "Job Security/Advancement out of 100 //<br/>";
echo "Management out of 100 //<br/>";
echo "Job Culture out of 100 //<br/>";
echo "Gibberish //<br/>";
echo "Current or Former Employee //<br/>";
echo "Location //<br/>";
echo "Date //<br/>";
echo "Review text //<br/>";
echo "Pros //<br/>";
echo "Cons //<br/>";

echo "<hr/>";

$file = fopen($_GET['company'].$_GET['country'].$_GET['start'].".txt", "w") or die("Unable to open file!");

$opts = array(
    'http'=>array(
    'method'=>"GET",
    'header'=>"Accept-language: en\r\n" .
    "Cookie: foo=bar\r\n" . 
    "Referer: http://www.google.com\r\n"
    )
    );
    
    
    $context = stream_context_create($opts);

$url = "https://www.indeed.com/cmp/".$_GET['company']."/reviews?fcountry=" . $_GET['country'] . "&start=" . $_GET['start'];

//print file_get_contents($url, true, $context);

$scraped = file_get_contents($url, true, $context);

list($header, $body) = explode('cmp-filter-result-order-selector', $scraped);
list($content, $footer) = explode('data-tn-component="company-review"', $body);
$content = str_replace('class="cmp-review-feedback clearfix"', 'class="cmp-review-feedback clearfix" style="display:none"', $content);
$content = str_replace('<span class="cmp-Rating-on"', 'class="<p>', $content);
$content = str_replace('<meta itemprop="ratingValue"', 'class="<p> itemprop="ratingValue"', $content);
$content = str_replace('<span class="cmp-review-date-created">', 'class="<p>', $content);


function html2text($Document) {
    $Rules = array ('@<script[^>]*?>.*?</script>@si',
                    '@<[\/\!]*?[^<>]*?>@si',
                    '@([\r\n])[\s]+@',
                    '@&(quot|#34);@i',
                    '@&(amp|#38);@i',
                    '@&(lt|#60);@i',
                    '@&(gt|#62);@i',
                    '@&(nbsp|#160);@i',
                    '@&(iexcl|#161);@i',
                    '@&(cent|#162);@i',
                    '@&(pound|#163);@i',
                    '@&(copy|#169);@i',
                    '@&(reg|#174);@i',
                    '@&#(d+);@e'
             );
    $Replace = array ('',
                      '',
                      '',
                      '',
                      '&',
                      '<',
                      '>',
                      ' ',
                      chr(161),
                      chr(162),
                      chr(163),
                      chr(169),
                      chr(174),
                      'chr()'
                );
  return preg_replace($Rules, $Replace, $Document);
}

$text = html2text($content);

$text = str_replace('">Sort by: Helpfulness | Rating | Date class=" itemprop="ratingValue" content="', '', $text);
$text = str_replace('">Sort by: Helpfulness | Rating | DateLanguageEnglish firstPortuguese firstSpanish firstAny', '', $text);
$text = str_replace(';">class', '<br/>', $text);
$text = str_replace('Job Work/Life Balanceclass=" style="width: ', '<br/>', $text);
$text = str_replace('Compensation/Benefitsclass=" style="width: ', '<br/>', $text);
$text = str_replace('Job Security/Advancementclass=" style="width: ', '<br/>', $text);
$text = str_replace('Managementclass=" style="width: ', '<br/>', $text);
$text = str_replace('Job Culture', '<br/>', $text);
$text = str_replace(' class="', '<br/>', $text);
$text = str_replace('itemprop="ratingValue" content="', '<br/>', $text);
$text = str_replace('Employee)', '<br/>', $text);
$text = str_replace('(', '<br/>', $text);
$text = str_replace(', 2014', ' 2014<br/>', $text);
$text = str_replace(', 2015', ' 2015<br/>', $text);
$text = str_replace(', 2016', ' 2016<br/>', $text);
$text = str_replace(', 2017', ' 2017<br/>', $text);
$text = str_replace(', 2018', ' 2018<br/>', $text);
$text = str_replace('Was this review helpful', '<br/>', $text);
$text = str_replace('Pros', '<br/>', $text);
$text = str_replace('Cons', '<br/>', $text);
$text = str_replace('=" style="width: ', '', $text);

$array = explode('<br/>', $text);

foreach ($array as $value) {
    if (strpos($value, 'class') !== false) {
        echo substr($value, 0, 1) . "//<br/>";
        fwrite($file, substr($value, 0, 1) . "//");
    }
    else if (strpos($value, '%') !== false) {
            $num = (int)substr($value, 0, 2);
            if ($num === 10) { $num = 100; }
            echo $num . "//<br/>";
            fwrite($file, $num . "//");
    } else if (strpos($value, '?Yes') !== false) {
        
    } else if (strpos($value, 'cmp-write-review"') !== false) {
        
    } else {
        echo $value . "//<br/>";
        fwrite($file, $value . "//");
    }
   
}
fclose($file);
?>