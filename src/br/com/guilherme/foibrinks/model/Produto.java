package br.com.guilherme.foibrinks.model;

import java.util.Calendar;
/**
 * Fornece os atributos do produtos para ser adicionado ao banco de dados
 * @author guilh
 *
 */
public class Produto {
	private long idproduto;
	private String NomeProduto;
	private String marca;
	private String FaixaEtariaIndicada;
	private double altura;
	private double largura;
	private double profundidade;
	private double peso;
	private double preco;
	private double volume;
	private double desconto;
	private Calendar DataCadastro;

	public double getDesconto() {
		double valorDesconto = 3.018735;
		double desconto = (valorDesconto * this.preco)/100;
		double precoComDesconto = this.preco - desconto;
		return precoComDesconto;
	}
	public void setDesconto(double desconto) {
		this.desconto = desconto;
	}
	public void setVolume(double volume) {
		this.volume = volume;
	}
	
	public long getIdproduto() {
		return idproduto;
	}
	public void setIdproduto(long idproduto) {
		this.idproduto = idproduto;
	}
	public String getNomeProduto() {
		return NomeProduto;
	}
	public void setNomeProduto(String nomeProduto) {
		NomeProduto = nomeProduto;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getFaixaEtariaIndicada() {
		return FaixaEtariaIndicada;
	}
	public void setFaixaEtariaIndicada(String faixaEtariaIndicada) {
		FaixaEtariaIndicada = faixaEtariaIndicada;
	}
	public double getAltura() {
		return altura;
	}
	public void setAltura(double altura) {
		this.altura = altura;
	}
	public double getLargura() {
		return largura;
	}
	public void setLargura(double largura) {
		this.largura = largura;
	}
	public double getProfundidade() {
		return profundidade;
	}
	public void setProfundidade(double profundidade) {
		this.profundidade = profundidade;
	}
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public Calendar getDataCadastro() {
		return DataCadastro;
	}
	public void setDataCadastro(Calendar dataCadastro) {
		DataCadastro = dataCadastro;
	} 	
	public double getVolume(){
		return altura*largura*profundidade;
	}
}
