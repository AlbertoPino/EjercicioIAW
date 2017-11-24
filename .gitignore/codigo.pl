#!/usr/bin/perl

print "Content-Type: text/html\n\n";



if($ENV{'QUERY_STRING'} eq "") {
print "<h1> Dime un numero y veamos que sale<h1>
        <form method=\"get\" >";
@days = ("Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo");

print "<input type=\"text\"  name=\"numero\"  />";
print "<input type=\"submit\" value=\"Search\" />";

}else{

        @days=split("=",$ENV{'QUERY_STRING'});
        print "$days[1]\n";

}


