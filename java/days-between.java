

LocalDate inicioFeriasAnoNormal = LocalDate.of(2017, Month.FEBRUARY, 5);
                
		LocalDate fimFeriasAnoNormal = LocalDate.of(2017, Month.APRIL, 4);
		
		//Calculando o período em Anos, Meses e Dias bissesto
		Period periodo1Ferias = inicioFeriasAnoNormal.until(fimFeriasAnoNormal);
		System.out.printf(" %d meses e %d dias de férias num ano normal%n",periodo1Ferias.getMonths(), periodo1Ferias.getDays());
		
		//Calculando em dias abosolutos
		System.out.printf("%d dias de férias no ano normal%n",
				inicioFeriasAnoNormal.until(fimFeriasAnoNormal, ChronoUnit.DAYS));
