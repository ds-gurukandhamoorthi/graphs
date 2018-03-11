#!/bin/bash
LINKS="<a href='maths-function-mean.html'>maths-function-mean</a>"

gen_link () {
    HTML=$1
    BASE=${HTML%.html}
    echo "<a href='"$HTML"'>"$BASE"</a><br />"
}

gen_links (){
    for i in $(ls -1 *html | grep -v index.html); do
        gen_link $i
    done
}
LINKS=$(gen_links)

cat <<INDEXFILE
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />
</head>
<body>
$LINKS
<script src="https://cdnjs.cloudflare.com/ajax/libs/mermaid/7.1.2/mermaid.min.js" integrity="sha256-tJ52z0aAzZBamAZPedNylrtijTuTMLBabhv/A6eTA1w=" crossorigin="anonymous"></script>
  <script>mermaid.initialize({startOnLoad:true});</script>
</body>
</html>
INDEXFILE

