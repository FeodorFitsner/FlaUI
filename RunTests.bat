SET /A errno=0
rem nunit3-console "src\FlaUI.Core.UnitTests\bin\FlaUI.Core.UnitTests.dll" --result=UnitTestResult.xml
rem SET /A errno=%errno%+%ERRORLEVEL%
rem nunit3-console "src\FlaUI.Core.UITests\bin\FlaUI.Core.UITests.dll" --params=uia=2 --result=UIA2TestResult.xml
rem SET /A errno=%errno%+%ERRORLEVEL%
nunit3-console "src\FlaUI.Core.UITests\bin\FlaUI.Core.UITests.dll" --params=uia=3 --result=UIA3TestResult.xml
SET /A errno=%errno%+%ERRORLEVEL%
EXIT /B %errno%
