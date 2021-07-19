#!/bin/bash
for i in {1..20}
do
  pc+="vim file${i} -nc :sh | ";
  pk+="ps | pgrep -f file${i} | xargs kill -9 | ";
done;

pc=${pc::-3};
pk=${pk::-3};
p="(${pc}) 2>/dev/null | ps -vfx | grep 'vim file' | head -20;";

echo -e "one line, one love\n";
echo -e " - created files in sleep mode using:\n${pc}\n";
echo -e " - files're running in foreground, to stop them press Ctrl+Z\n";
echo -e " - to kill files use:\n${pk};\n";
echo -e " - or just:\nkill -9 \$(pgrep -f 'vim file');\n";
echo -e "ps results:";

eval $p;
