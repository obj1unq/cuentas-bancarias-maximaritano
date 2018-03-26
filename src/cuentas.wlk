object cuentaPepe{
	var saldoPepe = 0
	
	method saldo() = saldoPepe
	
	method depositar(unaCantidadPesos){
	saldoPepe += unaCantidadPesos
	}
	
	method extraer(unaCantidadPesos){
	saldoPepe -= unaCantidadPesos
	}
}
object cuentaJulian{
	var saldoJulian = 0
	
	method saldo(){
	
	return saldoJulian
	}
	
	method depositar(unaCantidadPesos){
	saldoJulian += unaCantidadPesos*0.8
	}
	
	method extraer(unaCantidadPesos){
	saldoJulian -= unaCantidadPesos
	if (saldoJulian>=5){
	saldoJulian -= 5
	}
	}	
}
object cuentaPapa{
	var saldoPapa = 0
	
	method saldo(){
	return self.saldoEnDolares() * self.precioCompra()
	}
	
	method saldoEnDolares() = saldoPapa
	
	method depositar(unaCantidadPesos){
	saldoPapa += (unaCantidadPesos/self.precioVenta())
	}
	
	method extraer(unaCantidadPesos){
	saldoPapa -= (unaCantidadPesos/self.precioCompra())
	}
	
	method precioVenta() = 15.10
	
	method precioCompra() = 14.70
}
