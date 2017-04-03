package busquedaPOIs

import applicationModel.BusquedaDePOIs
import applicationModel.PoiAppModel
import ar.edu.unsam.grupo2.pois.CGP
import ar.edu.unsam.grupo2.pois.LineaDeColectivos
import ar.edu.unsam.grupo2.pois.LocalComercial
import ar.edu.unsam.grupo2.pois.SucursalBanco
import ar.edu.unsam.grupo2.usuarios.Usuario
import org.uqbar.arena.bindings.NotNullObservable
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.tables.Column
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner
import poisDialogs.BancoDialog
import poisDialogs.CGPDialog
import poisDialogs.LineaDeColectivosDialog
import poisDialogs.LocalComercialDialog

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class BusquedaDePOIsSWindow extends SimpleWindow<BusquedaDePOIs> {
	val checkedTransformer = [ boolean checked | if (checked) "✓" else "" ]

	new(WindowOwner parent, Usuario usuario) {
		super(parent, new BusquedaDePOIs(usuario))
		this.title = "Búsqueda de puntos de interés - Usuario: " + modelObject.usuario.nickname
		taskDescription = "Ingrese los parámetros de búsqueda"
	}

	override protected createFormPanel(Panel mainPanel) {
		crearPanelTitulo(mainPanel, "Criterio de búsqueda:")
		crearPanelBusqueda(mainPanel)
		crearPanelTitulo(mainPanel, "Resultados:")
		crearTablaResultados(mainPanel)
	}

	def crearTablaResultados(Panel contenedor) {
		new Table<PoiAppModel>(contenedor, PoiAppModel) => [
			items <=> "resultado"
			value <=> "seleccionado"
			numberVisibleRows = 10
			new Column<PoiAppModel>(it) => [
				title = "Nombre"
				fixedSize = 280
				bindContentsToProperty("poi.nombre")
			]
			new Column<PoiAppModel>(it) => [
				title = "Dirección"
				fixedSize = 250
				bindContentsToProperty("poi.direccion")
			]
			new Column<PoiAppModel>(it) => [
				title = "Cerca"
				fixedSize = 70
				bindContentsToProperty("estaCerca").transformer = checkedTransformer
			]
			new Column<PoiAppModel>(it) => [
				title = "Favorito"
				fixedSize = 70
				bindContentsToProperty("favorito").transformer = checkedTransformer
			]
		]
	}

	def crearPanelBusqueda(Panel contenedor) {
		new Panel(contenedor) => [
			layout = new HorizontalLayout
			new TextBox(it) => [
				value <=> "valorDeBusqueda"
				width = 350
			]
			new Label(it).width = 20
			new Button(it) => [
				caption = "Buscar"
				onClick [modelObject.buscar()]
				width = 100
			]
		]
	}

	def crearPanelTitulo(Panel contenedor, String _text) {
		new Panel(contenedor) => [
			layout = new HorizontalLayout
			new Label(it) => [
				text = _text
				fontSize = 12
			]
		]
	}

	override protected addActions(Panel actionsPanel) {
		new Button(actionsPanel) => [
			bindEnabled(new NotNullObservable("seleccionado.poi"))
			caption = "Mostrar detalles"
			onClick [
				val window = getPOIWindow(modelObject.seleccionado.poi)
				window.onCancel[modelObject.buscar]
				window.open

			]
		]
	}
	
	def dispatch getPOIWindow(SucursalBanco poi) {
		new BancoDialog(this, poi, modelObject.usuario)
	}

	def dispatch getPOIWindow(CGP poi) {
		new CGPDialog(this, poi, modelObject.usuario)
	}

	def dispatch getPOIWindow(LocalComercial poi) {
		new LocalComercialDialog(this, poi, modelObject.usuario)
	}

	def dispatch getPOIWindow(LineaDeColectivos poi) {
		new LineaDeColectivosDialog(this, poi, modelObject.usuario)
	}
}
