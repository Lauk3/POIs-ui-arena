package bootstrap

import ar.edu.unsam.grupo2.pois.LineaDeColectivos
import ar.edu.unsam.grupo2.pois.ParadaDeColectivos
import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.geodds.Point

@Accessors
class JuegoDeDatosColectivos {

	// 110
	def LineaDeColectivos linea110() {

		val parada110albarellos3150 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.5787695, -58.512585)
		]
		val ParadaDeColectivos parada110Albarellos30013059 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.577958, -58.509655)
		]
		val ParadaDeColectivos parada110Albarellos2964 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.578236, -58.509966)
		]
		val ParadaDeColectivos parada110Albarellos28512899 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.578236, -58.509966)
		]
		val ParadaDeColectivos parada110Albarellos26022700 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.577088, -58.509708)
		]
		val ParadaDeColectivos parada110Helguera5621 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.580515, -58.510234)
		]
		val ParadaDeColectivos parada110Franco3079 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.581513, -58.50899)
		]
		val ParadaDeColectivos parada110Nazca5093 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.582388, -58.507766)
		]

		return new LineaDeColectivos(110) => [
			direccion = " Zufriategui 4871"
			paradas = #[
						parada110albarellos3150,
						parada110Albarellos30013059,
						parada110Albarellos2964,
						parada110Albarellos28512899,
						parada110Albarellos26022700,
						parada110Helguera5621,
						parada110Franco3079,
						parada110Nazca5093
					   ]
			icono = "lineaColectivo_110.jpg"
		]
	}

	// PARADAS 45
	def LineaDeColectivos linea45() {
		val ParadaDeColectivos parada45RamosMejia132 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.591838, -58.375031)
		]

		val ParadaDeColectivos parada45SanMartin11331199 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.593242, -58.376072)
		]

		val ParadaDeColectivos parada45ComodoroPy19102200 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.589806, -58.370686)
		]

		val ParadaDeColectivos parada45ComodoroPy1923 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.588535, -58.368658)
		]

		val ParadaDeColectivos parada45RamonSCastillo131 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.586146, -58.367843)
		]

		val ParadaDeColectivos parada45RamonSCastillo132 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.58401, -58.368476)
		]

		val ParadaDeColectivos parada45SantaFe801859 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.595452, -58.376919)
		]

		val ParadaDeColectivos parada45CarlosPellegrini10711099 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.595412, -58.380871)
		]

		val ParadaDeColectivos parada45MetrobusTeatroColon = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.600843, -58.382042)
		]

		val ParadaDeColectivos parada45RamonSCastillo119 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.580741, -58.376836)
		]

		return new LineaDeColectivos(45) =>
			[
				direccion = "14 de Julio 4100"
				paradas = #[
								parada45RamosMejia132,
								parada45SanMartin11331199, 
								parada45ComodoroPy19102200,
								parada45ComodoroPy1923, 
								parada45RamonSCastillo131, 
								parada45RamonSCastillo132, 
								parada45SantaFe801859,
								parada45CarlosPellegrini10711099, 
								parada45MetrobusTeatroColon, 
								parada45RamonSCastillo119
							]
				icono = "lineaColectivo_45.jpg"
			]

	}

	// PARADAS 28
	def LineaDeColectivos linea28() {
		val ParadaDeColectivos parada28SanMartin12451269 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.592356, -58.375756)
		]

		val ParadaDeColectivos parada28Paraguay = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.596848, -58.373773)
		]

		val ParadaDeColectivos parada28Alem494 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.600778, -58.371916)
		]

		val ParadaDeColectivos parada28HipolitoYrigoyen315369 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.607622, -58.369712)
		]

		val ParadaDeColectivos parada28Piedras416 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.611808, -58.374765)
		]

		val ParadaDeColectivos parada28JulioARoca791 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.612576, -58.375194)
		]

		val ParadaDeColectivos parada28Belgrano502600 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.612576, -58.375194)
		]

		val ParadaDeColectivos parada28Bolivar583 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.612938, -58.375194)
		]

		val ParadaDeColectivos parada28Bolivar701799 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.615913, -58.375194)
		]

		val ParadaDeColectivos parada28Peru10021028 = new ParadaDeColectivos() => [
			ubicacion = new Point(-34.618615, -58.374754)
		]

		new LineaDeColectivos(28) => [
			direccion = " Echauri 1567 "
			paradas = #[
				parada28SanMartin12451269,
				parada28Paraguay,
				parada28Alem494,
				parada28HipolitoYrigoyen315369,
				parada28Piedras416,
				parada28JulioARoca791,
				parada28Belgrano502600,
				parada28Bolivar583,
				parada28Bolivar701799,
				parada28Peru10021028
			]
			icono = "lineaColectivo_28.jpg"
		]
	}

	def List<LineaDeColectivos> toList() {
		#[linea110, linea45, linea28]
	}
}
