package poisDialogs

import applicationModel.PoiAppModelEditarOpinion
import java.util.Set
import opiniones.Opinion
import org.uqbar.arena.graphics.Image
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.CheckBox
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Spinner
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.Dialog
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

abstract class POIDialog extends Dialog<PoiAppModelEditarOpinion> {

	new(WindowOwner owner, PoiAppModelEditarOpinion model) {
		super(owner, model)
		taskDescription = "Usuario: " + modelObject.usuario.nickname
	}

	override protected addActions(Panel actionsPanel) {
	}

	override protected createFormPanel(Panel mainPanel) {
		
		val info = new Panel(mainPanel).layout = new HorizontalLayout
		new Label(info).width = 50
		new Panel(info) => [
			it.crearPanelTitulo(titulo)
			new Panel(it) => [
				layout = new ColumnLayout(2)
				rellenarInfo
				new Label(it).text = "Distancia:"
				new Label(it).value <=> "distancia"
			]
		]
		new Panel(mainPanel) => [
			layout = new HorizontalLayout
			new Label(it).text = "Calificación general:"
			(new Label(it).value <=> "poi.rating").modelToView = [ double rating |
//				if (rating==0.0) 
//					"-.-"				// da error
//				else
					String.format("%.2f", rating)
		]

			new Label(it).text = "	Favorito	"
			new CheckBox(it) => [
				value <=> "favorito"
			]
		]
		crearPanelOpiniones(mainPanel)
	}

	def void crearPanelOpiniones(Panel panel) {
		new Panel(panel) => [
			layout = new HorizontalLayout
			new Label(it).text = "Tu Opinion: "
			new TextBox(it) => [
				height = 50
				width = 200
				value <=> "opinion.comentario"
			]
			new Panel(it) => [
				new Spinner(it) => [
					minimumValue = 1
					maximumValue = 5
					value <=> "opinion.nota"
				]
				new Button(it) => [
					caption = "Enviar"
					onClick[modelObject.updateOpinion]
				]
			]
		]
		new Label(panel).text = "Opiniones:"
		new Table<Opinion>(panel, Opinion) => [
			numberVisibleRows = 5
			items <=> "poi.opiniones"
			new Column<Opinion>(it) => [
				title = "Usuario"
				fixedSize = 85
				bindContentsToProperty("nickUsuario")
			]
			new Column<Opinion>(it) => [
				title = "Comentario"
				fixedSize = 180
				bindContentsToProperty("comentario")
			]
			new Column<Opinion>(it) => [
				title = "Calificación"
				fixedSize = 90
				bindContentsToProperty("nota")
			]
		]

	}

	def addInfo(Panel contenedor, String nombre, String contenido) {
		new Label(contenedor).text = nombre
		new Label(contenedor).text = contenido
		contenedor
	}

	def addInfo(Panel contenedor, String nombre, Set<String> items) {
		new Label(contenedor).text = nombre
		new Label(contenedor).text = items.map[item|item + "\n"].join
		contenedor
	}

	def void crearPanelTitulo(Panel contenedor, String titulo) {
		new Panel(contenedor) => [
			layout = new HorizontalLayout
			new Label(it).text = "  "
			new Label(it).bindImageToProperty("poi.icono", [icono|new Image("iconos/" + icono)])
			new Label(it).text = "    "
			new Label(it) => [
				text = titulo
				fontSize = 12
			]

		]
	}
	
	override close() {
		cancelTask
		super.close
	}
	
	def String getTitulo()

	def void rellenarInfo(Panel panel)
	
}
