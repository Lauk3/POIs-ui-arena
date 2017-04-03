package bootstrap

import org.uqbar.geodds.Point

class GpsQueVaYVuelve extends StubGPS{
	Point origen
	Point destino
	
	new(Point _origen, Point _destino){
		origen = _origen
		destino = _destino
		ubicación = origen
	}
	override cambiarUbicación() {
		ubicación = if ( ubicación == origen) destino else origen
	}
	
}