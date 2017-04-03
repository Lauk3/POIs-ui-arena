package poisDialogs

import applicationModel.PoiAppModelEditarOpinion
import ar.edu.unsam.grupo2.pois.LineaDeColectivos
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import ar.edu.unsam.grupo2.usuarios.Usuario

class LineaDeColectivosDialog extends POIDialog {

	new(WindowOwner owner, LineaDeColectivos poi, Usuario usuario) {
		super(owner, new PoiAppModelEditarOpinion(poi, usuario))
		this.title = "Linea de Colectivo"
	}

	override getTitulo() {
		poi.nroLinea
	}
	
	override rellenarInfo(Panel panel) {
		panel
			.addInfo("Cantidad de paradas:", poi.cantidadDeParadas.toString)
	}
	def LineaDeColectivos getPoi(){
		modelObject.poi as LineaDeColectivos
	}	
}
