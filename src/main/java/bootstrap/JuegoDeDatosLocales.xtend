package bootstrap

import ar.edu.unsam.grupo2.pois.HorarioSemanal
import ar.edu.unsam.grupo2.pois.LocalComercial
import ar.edu.unsam.grupo2.pois.Rubro
import java.time.DayOfWeek
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.geodds.Point

@Accessors
class JuegoDeDatosLocales {
	
	
	val rubroHipermercado = new Rubro => [
		radioDeCercania = 0.3
		nombre = "HiperMercado"
	]
	/*<------------------------------Imagine Yoga------------------------------------> */
	def LocalComercial imagineYoga() {
		new LocalComercial => [
			agregarPalabraClave("Clases de Yoga")
			agregarPalabraClave("Acroyoga")
			agregarPalabraClave("Profesorado")
			nombreComercial = "Imagine Yoga"
			ubicacion = new Point(-34.573674, -58.510167)
			direccion = "Condarco 666"
			rubro = new Rubro => [
				radioDeCercania = 0.2 // 0.2 Kilometros (2 cuadras)
				nombre = "Yoga"
			]
			icono = "imagine.png"
			horarios.add(new HorarioSemanal(#[DayOfWeek.TUESDAY, DayOfWeek.FRIDAY], 11, 0, 12, 15)) // Martes y Viernes de 11:00 a 12:15
			horarios.add(new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.FRIDAY], 19, 30, 20, 45)) // Lunes y Viernes de 19:30 a 20:45
		]
	}

	/*<----------------------------------COTO-----------------------------------------> */
	def LocalComercial cotoVillaCrespo() {
		new LocalComercial =>
			[
				agregarPalabraClave("Carniceria")
				agregarPalabraClave("Electrodomestico")
				agregarPalabraClave("Zona de Juegos")
				nombreComercial = "Coto"
				ubicacion = new Point(-34.595098, -58.4462477)
				direccion = "Av. Corrientes 5748"
				rubro = rubroHipermercado
				icono="coto.png"
		
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
							DayOfWeek.FRIDAY, DayOfWeek.SATURDAY], 8, 30, 21, 30)) // lunes a sabado de 8:30 a 21:30
				horarios.add(new HorarioSemanal(#[DayOfWeek.SUNDAY], 9, 00, 15, 00)) // domingos de 9 a 15 hs
			]
	}

	/*<----------------------------------WALMART-------------------------------------> */
	def LocalComercial walmartConstituyentes() {
		new LocalComercial =>
			[
				agregarPalabraClave("Ferretería")
				agregarPalabraClave("Juguetería")
				agregarPalabraClave("Perfumería")
				nombreComercial = "Walmart"
				ubicacion = new Point(-34.5720099, -58.5077891)
				direccion = "Av. Constituyentes 6020"
				rubro = rubroHipermercado
				icono="walmart.png"
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
							DayOfWeek.FRIDAY, DayOfWeek.SATURDAY, DayOfWeek.SUNDAY], 8, 00, 22, 00)) // lunes a domingo de 8 a 22 hs
			]
	}

	/*<----------------------------PIZZERIA IMPERIO---------------------------------> */
	def LocalComercial pizzeriaImperioAvCorrientes() {
		new LocalComercial =>
			[
				agregarPalabraClave("Pizza")
				agregarPalabraClave("Muzzarella")
				agregarPalabraClave("Aceituna")
				nombreComercial = "Pizzería 'Imperio'"
				ubicacion = new Point(-34.586915, -58.4569547)
				direccion = "Av. Corrientes 6899"
				icono="pizza_imperio.png"
				rubro = new Rubro => [
					radioDeCercania = 0.11
					nombre = "Pizzeria"
				]
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
							DayOfWeek.FRIDAY, DayOfWeek.SUNDAY], 5, 00, 00, 00))
				horarios.add(new HorarioSemanal(#[DayOfWeek.SATURDAY], 00, 00, 00, 00)) // todo el dia
			]
	}

	/*<-----------------------------PUERTA UNO BAR-----------------------------------> */
	def LocalComercial puertaUnoBarJuramento() {
		new LocalComercial =>
			[
				agregarPalabraClave("Cafe")
				agregarPalabraClave("Desayuno")
				agregarPalabraClave("Facturas")
				nombreComercial = "Puerta Uno Bar"
				ubicacion = new Point(-34.5577916, -58.4497323)
				direccion = "Av. Juramento 1667"
				icono="puerta_uno.png"
				rubro = new Rubro => [
					radioDeCercania = 0.12
					nombre = "Bar"
				]
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY, DayOfWeek.FRIDAY, DayOfWeek.SATURDAY,
						DayOfWeek.SUNDAY], 00, 00, 5, 00))
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY, DayOfWeek.FRIDAY,
							DayOfWeek.SATURDAY, DayOfWeek.SUNDAY], 20, 00, 00, 00))

			]
	}

	/*<----------------------------ZAPATERÍA OGGI------------------------------------> */
	def LocalComercial zapateriaOggiAvCabildo() {
		new LocalComercial =>
			[
				agregarPalabraClave("Zapatilla")
				agregarPalabraClave("Cordon")
				agregarPalabraClave("Ojota")
				nombreComercial = "Zapatería 'Oggi'"
				ubicacion = new Point(-34.5662697, -58.4542791)
				direccion = "Av. Cabildo 1582"
				icono="oggi.png"
				rubro = new Rubro => [
					radioDeCercania = 0.12
					nombre = "Zapatería"
				]
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
						DayOfWeek.FRIDAY], 9, 30, 19, 30))
				horarios.add(new HorarioSemanal(#[DayOfWeek.SATURDAY], 9, 00, 19, 00))
			]
	}

	/*<------------------------------ORQUESTA UNO-----------------------------------> */
	def LocalComercial orquestaUno() {
		new LocalComercial =>
			[
				agregarPalabraClave("Xaxofon")
				agregarPalabraClave("Guitarra")
				agregarPalabraClave("Ukelele")
				nombreComercial = "Orquesta Uno"
				ubicacion = new Point(-34.6007989, -58.423848)
				direccion = "Gazcon 883"
				icono="orquesta.png"
				rubro = new Rubro => [
					radioDeCercania = 0.4
					nombre = "Instrumentos Musicales"
				]
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
						DayOfWeek.FRIDAY], 10, 00, 14, 00))
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
						DayOfWeek.FRIDAY], 15, 30, 19, 00))
				horarios.add(new HorarioSemanal(#[DayOfWeek.SATURDAY], 10, 00, 13, 00))
			]
	}

	/*<--------------------------PASTELERIA EL PROGRESO------------------------------> */
	def LocalComercial pasteleriaElProgreso() {
		new LocalComercial =>
			[
				agregarPalabraClave("Torta")
				agregarPalabraClave("Confites")
				agregarPalabraClave("Bizcochuelo")
				nombreComercial = "Pastelería 'El Progreso'"
				ubicacion = new Point(-34.592374, -58.4085567)
				direccion = "Av. Santa Fe 2820"
				icono="panaderia.png"
				rubro = new Rubro => [
					radioDeCercania = 0.2
					nombre = "Pastelería"
				]
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
							DayOfWeek.FRIDAY, DayOfWeek.SATURDAY], 8, 00, 21, 00))
				horarios.add(new HorarioSemanal(#[DayOfWeek.SUNDAY], 8, 30, 20, 00))
			]
	}

	/*<----------------------------FLORERIA SU FLOR----------------------------------> */
	def LocalComercial floreriaSuFlor() {
		new LocalComercial =>
			[
				agregarPalabraClave("Margarita")
				agregarPalabraClave("Ramo")
				agregarPalabraClave("Petalo")
				nombreComercial = "Florería 'Su Flor'"
				ubicacion = new Point(-34.6728504, -58.4866172)
				direccion = "Av. Argentina 5979"
				icono="floreria_su_flor.jpg"
				rubro = new Rubro => [
					radioDeCercania = 0.2
					nombre = "Florería"
				]
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
						DayOfWeek.FRIDAY], 9, 00, 13, 00))
				horarios.add(
					new HorarioSemanal(#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
						DayOfWeek.FRIDAY], 17, 00, 20, 00))
			]
	}

	/*<---------------------FERRETERÍA INDUSTRIAL PORTUGAL---------------------------> */
	def LocalComercial ferreteriaIndustrialPortugal() {
		new LocalComercial =>
			[
				agregarPalabraClave("Llave Cruz")
				agregarPalabraClave("Tornillo")
				agregarPalabraClave("Candado")
				nombreComercial = "Ferretería Industrial Portugal"
				ubicacion = new Point(-34.5639435, -58.7391698)
				direccion = "Av Rivadavia 4109"
				icono="ferreteria.png"
				rubro = new Rubro => [
					radioDeCercania = 0.2
					nombre = "Ferreteria"
				]
				horarios.add(
					new HorarioSemanal(
						#[DayOfWeek.MONDAY, DayOfWeek.TUESDAY, DayOfWeek.WEDNESDAY, DayOfWeek.THURSDAY,
							DayOfWeek.FRIDAY, DayOfWeek.SATURDAY], 8, 30, 19, 00))
			]
	}

	def List<LocalComercial> toList() {
		#[
			imagineYoga,
			cotoVillaCrespo,
			walmartConstituyentes,
			pizzeriaImperioAvCorrientes,
			puertaUnoBarJuramento,
			zapateriaOggiAvCabildo,
			orquestaUno,
			pasteleriaElProgreso,
			floreriaSuFlor,
			ferreteriaIndustrialPortugal
		]
	}

}
