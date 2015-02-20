#!/usr/bin/perl -w
#
# Xymon Java Heap Monitoring Tool
#
use strict;
use Data::Dumper;

my($DEBUG)       = "0";
my($hostname)    = $ARGV[0];
my($jndiport)    = "1099";
my($jmxport)     = "1099";
my($user)        = "tomcat";
my($pass)        = "jmxpass";
my($eden)        = "/home/xymon/client/ext/check_jmx \-U service:jmx:rmi:///jndi/rmi://\"$hostname\":\"$jndiport\"/jmxrmi \-O java.lang:type=MemoryPool,name=\"PS Eden Space\" \-A Usage \-K used \-username \"$user\" \-password \"$pass\" |awk '{print \$6}'";
my($perm)        = "/home/xymon/client/ext/check_jmx \-U service:jmx:rmi:///jndi/rmi://\"$hostname\":\"$jndiport\"/jmxrmi \-O java.lang:type=MemoryPool,name=\"PS Perm Gen\" \-A Usage \-K used \-username \"$user\" \-password \"$pass\" |awk '{print \$6}'";
my($tenured)     = "/home/xymon/client/ext/check_jmx \-U service:jmx:rmi:///jndi/rmi://\"$hostname\":\"$jndiport\"/jmxrmi \-O java.lang:type=MemoryPool,name=\"PS Old Gen\" \-A Usage \-K used \-username \"$user\" \-password \"$pass\" |awk '{print \$6}'";



# Xymon Variables for output
$ENV{BBPROG}    = "heapquery.pl";
my($TESTNAME)   = "heap";
my($BBHOME)     = $ENV{BBHOME};
my($BB)         = $ENV{BB};
my($BBDISP)     = $ENV{BBDISP};
my($BBVAR)      = $ENV{BBVAR};
my($MACHINE)    = $ENV{MACHINE};
my($DATE)       = localtime;
my($COLOR)      = "clear";
my($MSG)        = "";
my($HEAD)       = "";
my($DATA)       = "";

# Invoke debugging if flag is set above
if ($DEBUG == 1){
    $BBHOME      |= "/tmp";
    $BB           = "/bin/echo";
    $BBDISP      |= "127.0.0.1";
    $BBVAR       |= "/tmp";
    $MACHINE     |= "test.host.cvf";
}

# Make sure an argument is given
if ($ARGV[0] eq ''){
    print "You must supply the IP of the server as an argument.\n";
    exit(1);
}

sendStats();

#################
## Subroutines ##
#################

# All the work is done by the query string. This just sends a report/status
sub sendStats {
    # Pull in the variables from the main()
    my($EDEN)       = `$eden`;
    my($PERM)       = `$perm`;
    my($TENURED)    = `$tenured`;

    head("JVM Heap Statistics OK");
    msg("&green JVM Heap Statistics");
       $DATA = "
          Eden : $EDEN
          PermGen : $PERM
          Tenured : $TENURED
       ";
       sendGreen();
       sendReport();
}

# Statuses and Color Settings
sub sendClear{
    $MSG = $DATA = $HEAD = '';
    $COLOR = 'clear';
}

sub sendRed{
    $COLOR = 'red';
}

sub sendYellow{
    $COLOR = 'yellow';
}

sub sendGreen{
    $COLOR = 'green';
}

# This runs the local instance and sends the message back to the server
sub sendReport{
    my($TESTNAME) = "$TESTNAME";
    my($COLOR)    = "$COLOR";
    my($DATE)     = "$DATE";
    my($HEAD)     = "$HEAD";
    my($DATA)     = "$DATA";
    my($MSG)      = "$MSG";
    $MACHINE      =~ s/\./,/g;
    my($cmd)      = "$BB $BBDISP \"status $MACHINE.$TESTNAME $COLOR $DATE $HEAD\n$DATA\n$MSG\"";
    system("$cmd");
}

# Format the Header
sub head{
    $HEAD = "@_";
}

# Clean up messaging a bit
sub msg{
    $MSG .= join("\n", @_) . "\n";
}
