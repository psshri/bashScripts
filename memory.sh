awk '$3=="kB"{if ($2>1024^2){$2=$2/1024^2;$3="GB";} else if ($2>1024){$2=$2/1024;$3="MB";}} 1' /proc/meminfo | column -t
