object olivia {
	var gradoDeConcentracion = 6
	method recibirMasajes() { gradoDeConcentracion += 3 }
	method discutir() { gradoDeConcentracion -= 1 }
	method gradoDeConcentracion() = gradoDeConcentracion
	method darseUnBanioDeVapor() { gradoDeConcentracion += 3 }
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	method tomarAgua() { tieneSed = false }
	method comerFideos() { 
		peso += 250
		tieneSed = true
	}
	method correr() { peso -= 300 }
	method verNoticiero() { esFeliz = false }
	method estaPerfecto() = esFeliz and not tieneSed and (peso >= 50000 and peso <= 30000)
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelContractura = 0
	var tienePielGrasosa = false
	method tienePielGrasosa() = tienePielGrasosa
	method nivelContracturado() = nivelContractura.max(0)
	method recibirMasajes() { nivelContractura -= 2 }
	method darseUnBanioDeVapor() { tienePielGrasosa = false }
	method comerBigMac() { tienePielGrasosa = true }
	method bajarALaFosa() {
		tienePielGrasosa = true
		nivelContractura += 1
	}
	method jugarPaddle() { nivelContractura += 3}
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}