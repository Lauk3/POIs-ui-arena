package busquedaPOIs

import bootstrap.POIsBootstrap
import org.uqbar.arena.Application

class POIsApplication extends Application {

	new(POIsBootstrap bootStrap) {
		super(bootStrap)
	}

	override protected createMainWindow() {
		new LoginWindow(this)
	}

	def static void main(String[] args) {
		new POIsApplication(new POIsBootstrap).start
	}
}
