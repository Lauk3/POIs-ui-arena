package bootstrap

import ar.edu.unsam.grupo2.pois.CGP
import ar.edu.unsam.grupo2.pois.SucursalBanco
import ar.edu.unsam.grupo2.procesos.Home
import ar.edu.unsam.grupo2.repositorio.RepositorioDePOIs
import ar.edu.unsam.grupo2.usuarios.ServiceLocator
import ar.edu.unsam.grupo2.usuarios.UsuarioBuilder
import org.uqbar.arena.bootstrap.CollectionBasedBootstrap
import opiniones.Opinion
import org.uqbar.geodds.interfacesExternas.GPS

class POIsBootstrap extends CollectionBasedBootstrap {
	
	val ramona = new UsuarioBuilder("Ramo@mail.net").nickname("Ramona").contraseña("123").build
	val laura = new UsuarioBuilder("lau@mail.org").nickname("Laura").contraseña("666").gps(new StubGPS).build
	val sil = new UsuarioBuilder("sil@mail").nickname("Silvina").contraseña("566").gps(new StubGPS).build
	public static GPS gps
	new() {
		ServiceLocator.instance => [
			repositorio = new RepositorioDePOIs
//			mailSender = new StubMailSender
//			mailAdmin = "adm@pois.unsam.edu.ar"
			home = new Home() => [
				agregarUsuario(ramona)
				agregarUsuario(laura)
				agregarUsuario(sil)
			]
		]
		SucursalBanco.iconoBanco = "banco.png"
		CGP.iconoCGP = "CGP.png"
	}

	override run() {
		val locales = new JuegoDeDatosLocales().toList
		val imagine = locales.findFirst[ nombreComercial == "Imagine Yoga" ]
		val coto = locales.findFirst[ nombreComercial == "Coto" ]
		
		
		ServiceLocator.instance.repositorio => [
//			createAll(new JuegoDeDatosColectivos().toList)
			createAll(new JuegoDeDatosBancos().toList)
//			createAll(new JuegoDeDatosCGP().toList)
			createAll(locales)
		]
		imagine.opiniones => [
			add( new Opinion(5, "Excelente", laura))
			add(new Opinion(4, "Me encanta", ramona))
		]
		locales.forEach[ local | ramona.agregarAFavoritos(local) ] 
		ramona.gps = new GpsQueVaYVuelve(imagine.ubicacion, coto.ubicacion)
		gps = new GpsQueVaYVuelve(imagine.ubicacion, coto.ubicacion)
	}
}
