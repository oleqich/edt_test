
Процедура ОбработкаПроведения(Отказ, Режим)
	
	А = 0;
	
	// регистр Начисления
	Движения.Начисления.Записывать = Истина;
	Движение = Движения.Начисления.Добавить();
	//Движение.Сторно = Ложь;
	Движение.ПериодДействияНачало = ПериодДействияНачало;
	Движение.ПериодДействияКонец = ПериодДействияКонец;
	Движение.ПериодРегистрации = Дата;
	Движение.Сотрудник = Сотрудник;  
	Движение.ВидРасчета = ПланыВидовРасчета.Начисления.Оклад;  
	Движение.Параметр = СтавкаОклада;  
	
	Движения.Начисления.Записать(); 
	
	Запись = Движения.Начисления[0];
	
	Норма = Запись.ПолучитьДанныеГрафика(ВидПериодаРегистраРасчета.ПериодДействия)[0].Признак;
	Факт = Запись.ПолучитьДанныеГрафика(ВидПериодаРегистраРасчета.ФактическийПериодДействия)[0].Признак; 
	
	Сумма = Факт / Норма * Запись.СтавкаОклада;
	
	
	Движения.Начисления.Записать();

КонецПроцедуры
