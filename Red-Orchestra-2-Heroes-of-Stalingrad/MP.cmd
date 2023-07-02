rmdir Binaries /s /q
rmdir Engine /s /q
rmdir ROGame /s /q
if not exist "Binaries" move "BinariesMP" "Binaries"
if not exist "Engine" move "EngineMP" "Engine"
if not exist "ROGame" move "ROGameMP" "ROGame"
exit