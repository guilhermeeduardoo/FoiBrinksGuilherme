/**
 * 
 */
package br.com.guilherme.foibrinks.model;

import java.util.Calendar;

/**Fornece os atributos do cliente para ser adicionado ao banco de dados
 * @author guilh
 *
 */
public class Cliente {
private long id;
private String nomeCompleto;
private String genero;
private String rua;
private String bairro;
private String CEP;
private String estado;
private String estadoCivil;
private String CPF;
private Calendar DatadeNascimento;
private Calendar DatadeCadastrodoSistema;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getNomeCompleto() {
	return nomeCompleto;
}
public void setNomeCompleto(String nomeCompleto) {
	this.nomeCompleto = nomeCompleto;
}
public String getGenero() {
	return genero;
}
public void setGenero(String genero) {
	this.genero = genero;
}
public String getRua() {
	return rua;
}
public void setRua(String rua) {
	this.rua = rua;
}
public String getBairro() {
	return bairro;
}
public void setBairro(String bairro) {
	this.bairro = bairro;
}
public String getCEP() {
	return CEP;
}
public void setCEP(String cEP) {
	CEP = cEP;
}
public String getEstado() {
	return estado;
}
public void setEstado(String estado) {
	this.estado = estado;
}
public String getCPF() {
	return CPF;
}
public void setCPF(String cPF) {
	CPF = cPF;
}
public Calendar getDatadeNascimento() {
	return DatadeNascimento;
}
public void setDatadeNascimento(Calendar datadeNascimento) {
	DatadeNascimento = datadeNascimento;
}
public Calendar getDatadeCadastrodoSistema() {
	return DatadeCadastrodoSistema;
}
public void setDatadeCadastrodoSistema(Calendar datadeCadastrodoSistema) {
	DatadeCadastrodoSistema = datadeCadastrodoSistema;
	
}
public String getEstadoCivil() {
	return estadoCivil;
}
public void setEstadoCivil(String estadoCivil) {
	this.estadoCivil = estadoCivil;
}


}
