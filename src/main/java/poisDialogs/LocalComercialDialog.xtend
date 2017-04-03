package poisDialogs

import applicationModel.PoiAppModelEditarOpinion
import ar.edu.unsam.grupo2.pois.LocalComercial
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import ar.edu.unsam.grupo2.usuarios.Usuario

class LocalComercialDialog extends POIDialog {

	new(WindowOwner owner,LocalComercial poi, Usuario usuario) {
		super(owner, new PoiAppModelEditarOpinion(poi, usuario))
		this.title = "Local Comercial"
	}

	override rellenarInfo(Panel contenedor) {
		contenedor
			.addInfo("Dirección:", poi.direccion)
			.addInfo( "Rubro:", poi.rubro.nombre)
	}
	
	override getTitulo() {
		poi.nombreComercial
	}
	
	def LocalComercial getPoi(){
		modelObject.poi as LocalComercial
	}		
}
