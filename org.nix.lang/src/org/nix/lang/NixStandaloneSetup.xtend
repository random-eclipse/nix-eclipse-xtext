// Auto Xtext 2.13.0
package org.nix.lang


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class NixStandaloneSetup extends NixStandaloneSetupGenerated {

	def static void doSetup() {
		new NixStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
