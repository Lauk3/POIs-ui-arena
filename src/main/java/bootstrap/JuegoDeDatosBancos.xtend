package bootstrap

import ar.edu.unsam.grupo2.pois.HorarioSemanal
import ar.edu.unsam.grupo2.pois.SucursalBanco
import java.time.DayOfWeek
import org.uqbar.geodds.Point
import org.eclipse.xtend.lib.annotations.Accessors
import java.util.List

@Accessors
class JuegoDeDatosBancos {

	val HorarioSemanal horarioBancario = new HorarioSemanal(#[
		DayOfWeek.MONDAY,
		DayOfWeek.TUESDAY,
		DayOfWeek.WEDNESDAY, // Lunes a Viernes de 10:00 a 15:00
		DayOfWeek.THURSDAY,
		DayOfWeek.FRIDAY
	], 10, 15)

	/*<--------------------------SANTADER RIO----------------------------------------> */
	def SucursalBanco santanderConstituyentes() {
		new SucursalBanco => [
			banco = "Santander Rio"
			barrio = "Villa Pueyrredon"
			ubicacion = new Point(-34.5730459, -58.5057959)
			direccion = "Av. De Los Constituyentes 5857 "
			horario = horarioBancario
			servicios = #["Transferencia", "Cobro de cheques"]
		]
	}

	/*<------------------------BANCO HIPOTECARIO-------------------------------------> */
	def SucursalBanco hipotecarioReconquista() {
		new SucursalBanco => [
			banco = "Hipotecario"
			barrio = "San Nicolas"
			ubicacion = new Point(-34.6064765, -58.3742187)
			direccion = "Reconquista 101"
			horario = horarioBancario
			servicios = #["Hipotecas", "Servicios Financieros"]
		]
	}

	/*<---------------------------BANCO NACIÓN-------------------------------------> */
	def SucursalBanco bancoNacionBMitre() {
		new SucursalBanco => [
			banco = "Nacion"
			barrio = "San Nicolas" // a la vuelta del hipotecario
			ubicacion = new Point(-34.606469, -58.371351)
			direccion = "San Martin 1155"
			horario = horarioBancario
			servicios = #["Memoria y Balances", "Cajeros automáticos"]
		]
	}

	/*<--------------------------BANCO PROVINCIA------------------------------------> */
	def SucursalBanco bancoProvinciaAlsina() {
		new SucursalBanco => [
			banco = "Provincia"
			barrio = "Monserrat"
			ubicacion = new Point(-34.6111707, -58.389743)
			direccion = "Adolfo Alsina 1502"
			horario = horarioBancario
			servicios = #["Tarjetas Banco Provincia", "Programa de Beneficios"]
		]
	}

	/*<-----------------------------BANCO FRANCES------------------------------------> */
	def SucursalBanco bancoFrancesAvCorrientes() {
		new SucursalBanco => [
			banco = "Francés"
			barrio = "Balvanera"
			ubicacion = new Point(-34.6039959, -58.4151927)
			horario = horarioBancario
			direccion = "Av. Rivadavia 2577"
			servicios = #["Prestamo", "Inversión"]
		]
	}

	def bancoFrancesAvCallao() {
		new SucursalBanco => [
			banco = "Francés"
			barrio = "Recoleta"
			ubicacion = new Point(-34.594256, -58.395213)
			direccion = "Av. Callao 1279"
			horario = horarioBancario
			servicios = #["Seguro", "Operaciones con el exterior"]
		]
	}

	/*<-------------------------------BANCO HSBC-------------------------------------> */
	def bancoHSBCAvRivadavia() {
		new SucursalBanco => [
			banco = "HSBC"
			barrio = "Almagro"
			ubicacion = new Point(-34.6118831, -58.4241891)
			direccion = "Av. Rivadavia 3473"
			horario = horarioBancario
			servicios = #["Préstamos Visa", "Tarjetas"]
		]
	}

	/*<-------------------------------BANCO CREDICOOP--------------------------------> */
	def bancoCredicoopMaipu() {
		new SucursalBanco => [
			banco = "Credicoop"
			barrio = "Monserrat"
			ubicacion = new Point(-34.6118831, -58.4241891)
			direccion = "Maipu 72"
			horario = horarioBancario
			servicios = #["Créditos Personales", "Créditos Vivienda"]
		]
	}

	/*<-----------------------------BANCO SUPERVIELLE--------------------------------> */
	def SucursalBanco bancoSupervielleAvLaPlata() {
		new SucursalBanco => [
			banco = "Supervielle"
			barrio = "Caballito"
			ubicacion = new Point(-34.6198608, -58.4341724)
			direccion = "Av. La Plata 537"
			horario = horarioBancario
			servicios = #["Cuenta Corriente", "Comercio Exterior"]
		]
	}

	/*<-------------------------------BANCO CIUDAD-----------------------------------> */
	def SucursalBanco bancoCiudadAvTriunvirato() {
		new SucursalBanco => [
			banco = "Ciudad"
			barrio = "Villa Urquiza"
			ubicacion = new Point(-34.5738226, -58.4875521)
			direccion = "Av Triunvirato 4600"
			horario = horarioBancario
			servicios = #["Banca Electrónica", "Transferencias Múltiples"]
		]
	}

	def List<SucursalBanco> toList() {
		#[
			santanderConstituyentes,
			hipotecarioReconquista,
			bancoNacionBMitre,
			bancoProvinciaAlsina,
			bancoFrancesAvCorrientes,
			bancoFrancesAvCallao,
			bancoHSBCAvRivadavia,
			bancoCredicoopMaipu,
			bancoSupervielleAvLaPlata,
			bancoCiudadAvTriunvirato
		]
	}

}
