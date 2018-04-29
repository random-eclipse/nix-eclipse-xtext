// Auto Xtext 2.13.0
package org.nix.lang.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.nix.lang.NixRuntimeModule
import org.nix.lang.NixStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class NixIdeSetup extends NixStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new NixRuntimeModule, new NixIdeModule))
	}
	
}
