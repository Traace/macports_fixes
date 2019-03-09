#!/bin/bash
# Inspired by TenFourFox relink script. Many Thanks.
# Created by Traace for Arcticfox PPC OSX
echo "Relinking now..."
echo "Please make sure ArcticFoxPPC.app is in /Applications"

# Lets start with XUL
install_name_tool -change /opt/local/lib/libgcc/libatomic.1.dylib @executable_path/libatomic.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/XUL
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/XUL
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/XUL

# Now arcticfox
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/arcticfox
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/arcticfox

# Afterwards we continue relink all dylibs
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libfreebl3.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libicudata.56.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libicui18n.56.dylib
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libicui18n.56.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libicuuc.56.dylib
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libicuuc.56.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/liblgpllibs.dylib
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/liblgpllibs.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libmozglue.dylib
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libmozglue.dylib
install_name_tool -change /opt/local/lib/libgcc/libatomic.1.dylib @executable_path/libatomic.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libmozglue.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libnss3.dylib
install_name_tool -change /opt/local/lib/libgcc/libstdc++.6.dylib @executable_path/libstdc++.6.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libnss3.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libnssckbi.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libnssdbm3.dylib
install_name_tool -change /opt/local/lib/libgcc/libgcc_s.1.dylib @executable_path/libgcc_s.1.dylib /Applications/ArcticFoxPPC.app/Contents/MacOS/libsoftokn3.dylib
echo "Done, enjoy :)"
