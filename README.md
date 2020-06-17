# zed-multicomp
Zedboard implementation of multicomp

Requires a ps2 pmod in JA.
https://reference.digilentinc.com/reference/pmod/pmodps2/start

Zedboard rom is located in https://github.com/mattuna15/zed-multicomp/blob/master/ROMS/6502/basic_rom.hex

The original .hex files can be converted using Srecord. 
http://srecord.sourceforge.net/

Specify intel for input format and ascii-hex as output. Load resulting file into notepad++, remove header and trailer, replace spaces between values for "\n". 

The resulting file then needs to be loaded into the rom file.


Project acknowledgments
http://searle.x10host.com/Multicomp/index.html
https://www.retrobrewcomputers.org/doku.php?id=boards:sbc:multicomp:papilio-duo:start
https://github.com/MJoergen/dyoc 

License:

“By downloading these files you must agree to the following: The original copyright owners of ROM contents are respectfully acknowledged. Use of the contents of any file within your own projects is permitted freely, but any publishing of material containing whole or part of any file distributed here, or derived from the work that I have done here will contain an acknowledgement back to myself, Grant Searle, and a link back to this page. Any file published or distributed that contains all or part of any file from this page must be made available free of charge.” -http://searle.hostei.com/grant/Multicomp/index.html


