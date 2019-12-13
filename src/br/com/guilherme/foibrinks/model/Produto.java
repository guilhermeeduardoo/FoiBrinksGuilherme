package br.com.guilherme.foibrinks.model;

import java.util.Calendar;

public class Produto {
	private long id;
	private String NomeProduto;
	private String marca;
	private String FaixaEtariaIndicada;
	private String altura;
	private String largura;
	private String profundidade;
	private String peso;
	private Calendar preco;
	private Calendar DatadeNascimento;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
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
	public String getAltura() {
		return altura;
	}
	public void setAltura(String altura) {
		this.altura = altura;
	}
	public String getLargura() {
		return largura;
	}
	public void setLargura(String largura) {
		this.largura = largura;
	}
	public String getProfundidade() {
		return profundidade;
	}
	public void setProfundidade(String profundidade) {
		this.profundidade = profundidade;
	}
	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public Calendar getPreco() {
		return preco;
	}
	public void setPreco(Calendar preco) {
		this.preco = preco;
	}
	public Calendar getDatadeNascimento() {
		return DatadeNascimento;
	}
	public void setDatadeNascimento(Calendar datadeNascimento) {
		DatadeNascimento = datadeNascimento;
	}
	
}
