switch (local) {
	case 0:
        if global.destruir_porta>=0{
            instance_destroy(self)
        }
    break
    case 1:
        if global.destruir_porta>=1{
            instance_destroy(self)
        }
    break
    case 2:
        if global.destruir_porta>=2{
            instance_destroy(self)
        }
    break
}