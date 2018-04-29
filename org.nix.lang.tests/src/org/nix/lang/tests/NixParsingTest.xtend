// Auto Xtext 2.13.0
package org.nix.lang.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.nix.lang.syntax.Expr
import org.junit.Ignore

@RunWith(XtextRunner)
@InjectWith(NixInjectorProvider)
class NixParsingTest {
    @Inject
    ParseHelper<Expr> parseHelper

//	@Ignore
    @Test
    def void loadModel() {
        val result = parseHelper.parse('''
            { a = b ; } // { a = b ; } // { a = b ; }
        ''')
        Assert.assertNotNull("Missing result", result)
        val errors = result.eResource.errors
        
        
        Assert.assertTrue('''Failure report: «errors.join(", ")»''', errors.isEmpty)
    }
}
