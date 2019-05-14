#!/bin/bash
input_file=$@
output_dir="../html/"
output_file=$(ls $input_file | sed 's,.md,.html,g' )
#edit this line below
echo -e "<head>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n<title>\n${output_file}\n</title>\n</head>\n<body>\n<div id=\"navbar\">\n<ul>\n<li><a href=\"index.html\">home</a></li>\n<li><a href=\"about.html\">about me</a></li>\n<li><a href=\"contact_me.html\">contact me</a></li>\n<li><a href=\"philosiphy.html\">philsioy</a></li>\n<li><a href=\"hemp.html\">hemp</a></li>\n<li><a href=\"agre.html\">agre</a></li>\n<li><a href=\"my-diapered-life.html\">diapered life</a></li>\n<li><a href=\"offgrid-living.html\">offgrid living</a></li>\n<li style=\"float:right;\"><a href=\"https://github.com/baby-princess/\">git</a></li>\n</ul>\n</div>" > "$output_dir/$output_file"
smu -n < "$input_file" >> "${output_dir}/$output_file"
