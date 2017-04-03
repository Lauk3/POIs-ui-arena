package poisDialogs

import ar.edu.unsam.grupo2.pois.SucursalBanco
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import applicationModel.PoiAppModelEditarOpinion
import ar.edu.unsam.grupo2.usuarios.Usuario

class BancoDialog extends POIDialog {
	
	new(WindowOwner owner, SucursalBanco poi, Usuario usuario) {
		super(owner, new PoiAppModelEditarOpinion(poi, usuario))
		this.title = "Banco"
	}
	
	override getTitulo() {
		poi.banco
	}
	
	override rellenarInfo(Panel contenedor) {
		contenedor
			.addInfo("Dirección:", poi.direccion)
			.addInfo("Barrio:", poi.barrio)
			.addInfo("Servicios:", poi.nombresServicios)
	}
	
	def SucursalBanco getPoi(){
		modelObject.poi as SucursalBanco
	}	
}
