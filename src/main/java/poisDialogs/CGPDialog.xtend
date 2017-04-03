package poisDialogs

import applicationModel.PoiAppModelEditarOpinion
import ar.edu.unsam.grupo2.pois.CGP
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.windows.WindowOwner
import ar.edu.unsam.grupo2.usuarios.Usuario

class CGPDialog extends POIDialog {

	new(WindowOwner owner, CGP poi, Usuario usuario) {
		super(owner, new PoiAppModelEditarOpinion(poi, usuario))
		this.title = "CGP"
	}
	
	override getTitulo() {
		poi.nombre
	}
	
	override rellenarInfo(Panel panel) {
		panel	
			.addInfo("Comuna:", poi.comuna.nombre)
			.addInfo("Dirección:", poi.direccion)
			.addInfo("","")
			.addInfo("     Servicios","     Horarios")
			.addInfo("      ---------","     --------")
		poi.servicios.forEach [ servicio |
			panel.addInfo( servicio.nombre, servicio.toString )
		]
	}
	
	def CGP getPoi(){
		modelObject.poi as CGP
	}
	
}
