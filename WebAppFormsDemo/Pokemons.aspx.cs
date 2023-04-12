using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppFormsDemo.DTOs;

namespace WebAppFormsDemo
{
    public partial class Pokemons : System.Web.UI.Page
    {
        public const string Title = "Pokemons Pages";
        public const string Endpoint = "https://pokeapi.co/api/v2/pokemon/";
        public PokemonDTO pokemonResponse = null;
        protected async void Page_Load(object sender, EventArgs e)
        {
            using (HttpClient client = new HttpClient())
            {
                using (HttpResponseMessage response = await client.GetAsync(Endpoint))
                {
                    string responseContent = await response.Content.ReadAsStringAsync();
                    Trace.Write(responseContent);
                    pokemonResponse = JsonConvert.DeserializeObject<PokemonDTO>(responseContent);
                    pokemonResponse.results.ForEach(pokemon => Trace.Write($"Name: {pokemon.name} - Url: {pokemon.url}"));
                }
            }
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Trace.Write("PreRender was triggered.");
        }

        protected void ButtonTest_Click(object sender, EventArgs e)
        {
            string pokemonName = TextBoxPokemon.Text;
            pokemonResponse.results.Add(new Result() { name = pokemonName, url = $"https://pokeapi.co/api/v2/pokemon/{pokemonName}_placeholder/" });
            pokemonResponse.results.ForEach(pokemon => Trace.Write($"Name: {pokemon.name} - Url: {pokemon.url}"));
            //ViewState["newPokemonsList"] = pokemonName;
            //Session["newPokemon"] = pokemonResponse.results;
            //Response.Cookies["userName"].Value = "ArtturoBld";
        }

        protected void TextBoxPokemon_TextChanged(object sender, EventArgs e)
        {
            string changedText = TextBoxPokemon.Text;
            LabelPokemon.Text = changedText;
        }
    }
}