package bootstrap

import org.uqbar.geodds.interfacesExternas.GPS
import org.uqbar.geodds.Point
import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class StubGPS implements GPS {
	Date hora
	Point ubicación
	
	new(){
		cambiarUbicación
	}
	
	override posicion() {
		//Si la hora no fué seteada...
		if(hora == null){
			hora = new Date() //Se crea la hora actual
		}
		
		var horaActual = new Date() //Se obtiene la hora actual de la consulta
		val diffInMillis =    horaActual.getTime() - hora.getTime() //Obtengo la diferencia en milisegundos
		
		if(diffInMillis > 3000){ //Si se pasó mas de 3seg, vuelvo a calcular los randoms
			this.cambiarUbicación 
		}
		
		//actualiza la hora actual
		hora = new Date() //Se crea la hora actual
		//Devuelve el punto ficticio del usuario
		ubicación
	}
	
	
	/*
	 * Recalcula los randoms si hace mucho que se calcularon los puntos aleatorios
	 * Ayuda a simular el movimiento de un supuesto usuario
	 */
	def void cambiarUbicación(){
		ubicación =  new Point(
			Math.random()*((-34.526796)-(-34.6860319))+(-34.6860319),
			Math.random()*((-58.367843)-(-58.5300000))+(-58.5300000)
		)
	}
	
}