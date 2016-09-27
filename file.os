

Перем mDirAllure;
Перем mExErr;


Процедура AllureReportsGenerate()
	
mExErr = "No errors";

	mDirAllure = "C:\repo\Sample\allure-report";
	ExitStatus = 0;
	RunApp("allure generate .", mDirAllure, true, ExitStatus);
	
    If ExitStatus <> 0 Then
		mExErr = ExitStatus;
		Сообщить("Ошибка "+ ExitStatus);
	Else
		RunApp("allure report open", mDirAllure, true, ExitStatus);	
		If ExitStatus <> 0 Then
			mExErr = ExitStatus;
			Сообщить("Ошибка "+ ExitStatus);
		EndIf;	
    EndIf;
	
	
КонецПроцедуры

AllureReportsGenerate();
Сообщить("Работа завершена " + mExErr);