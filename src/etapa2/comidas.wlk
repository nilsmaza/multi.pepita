
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/* el alcaucil da 20 joules por gramo*/ 

object alcaucil {
	method energiaPorGramo(){ return 20 }
}

/*el sorgo da 9 joules por gramo*/ 
object sorgo {
	method energiaPorGramo(){ return 9 }
}
// despues, agregar mijo y canelones


object mijo {
	var estaMojado = false
	method energiaPorGramo() { if (estaMojado) { return 15}
		else{
		return 20 }
	}
	method mojarse() { estaMojado = true }
	method secarse() { estaMojado = false }
}

object canelones{
	var canelones = 20
	var conSalsa = false
	var conQueso = false
	method energiaPorGramo() { if (conSalsa) {canelones += 5}
							   if (conQueso) {canelones += 7}
		return canelones }
	method ponerSalsa() { conSalsa = true }
	method ponerQueso() { conQueso = true }
	method sinSalsa() { conSalsa = false }
	method sinQueso() { conQueso = false }
}
