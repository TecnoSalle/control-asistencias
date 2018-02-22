import com.tecnosalle.sca.UsuarioPasswordEncoderListener
// Place your Spring DSL code here
beans = {
    usuarioPasswordEncoderListener(UsuarioPasswordEncoderListener, ref('hibernateDatastore'))
}
