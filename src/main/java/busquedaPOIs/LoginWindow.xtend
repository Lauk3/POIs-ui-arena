package busquedaPOIs

import applicationModel.LoginAppModel
import org.uqbar.arena.widgets.Button
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.PasswordField
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.windows.SimpleWindow
import org.uqbar.arena.windows.WindowOwner

import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import bootstrap.GpsQueVaYVuelve
import bootstrap.POIsBootstrap

class LoginWindow extends SimpleWindow<LoginAppModel> {

	new(WindowOwner parent) {
		super(parent, new LoginAppModel)
		this.title = "Login"
		taskDescription = "Ingrese Usuario y Contraseña"
	}

	override protected createFormPanel(Panel mainPanel) {
		new Label(mainPanel).text = "Usuario:"
		crearPanel(mainPanel)

	}

	def void crearPanel(Panel mainPanel) {
		new TextBox(mainPanel) => [
			value <=> "nickname"
			width = 180

		]
		new Label(mainPanel).text = "Contraseña"

		new PasswordField(mainPanel) => [
			value <=> "password"

		]
	}

	override protected addActions(Panel actionsPanel) {
		new Panel(actionsPanel) => [
			new Button(actionsPanel) => [
				caption = "OK"
				onClick[
					val usuario = modelObject.getUsuario
					usuario.gps = POIsBootstrap.gps
					close
					new BusquedaDePOIsSWindow(this.owner, usuario).open
				]
				setAsDefault
				width = 70
			]
			new Button(actionsPanel) => [
				caption = "Cancelar"
				onClick[close]
				width = 90
			]

		]
	}

}
