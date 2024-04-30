using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PayAndPlayMAUI.Services
{
    public class UtilizadoresService
    { 
        private string baseUrl { get; set; }
        public UtilizadoresService()
        {
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
        }
        public async Task<List<UtilizadorModel>> getUtilizadores()
        {
            try
            {
                List<UtilizadorModel> utilizadores = new List<UtilizadorModel>();

                string fullURL = this.baseUrl + "Utilizadores/getUtilizadores";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    utilizadores = JsonConvert.DeserializeObject<List<UtilizadorModel>>(content);
                }

                return await Task.FromResult(utilizadores.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<UtilizadorModel> getUtilizador(int UtilizadorId)
        {
            try
            {
                UtilizadorModel utilizador = new UtilizadorModel();

                string fullURL = this.baseUrl + $"Utilizadores/getUtilizador/{UtilizadorId}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    utilizador = JsonConvert.DeserializeObject<UtilizadorModel>(content);
                }

                return await Task.FromResult(utilizador);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<UtilizadorModel> addDJ(UtilizadorModel utilizador)
        {
            try
            {

                string fullURL = this.baseUrl + $"Utilizadores/addUtilizador";
                string utilizadorInfoAsJson = JsonConvert.SerializeObject(utilizador);
                StringContent utilizadorStringContent = new StringContent(utilizadorInfoAsJson, Encoding.UTF8, "application/json");

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.PostAsync("", utilizadorStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(utilizador);
                }

                return await Task.FromResult(new UtilizadorModel());
            }
            catch (Exception)
            {
                throw null;
            }
        }
        public async Task<UtilizadorModel> editUtilizador(UtilizadorModel utilizador)
        {
            try
            {
                string fullURL = this.baseUrl + $"Utilizadores/editUtilizador/{utilizador.ID}";
                string utilizadorInfoAsJson = JsonConvert.SerializeObject(utilizador);
                StringContent utilizadorStringContent = new StringContent(utilizadorInfoAsJson, Encoding.UTF8, "application/json");

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.PutAsync("", utilizadorStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(utilizador);
                }

                return await Task.FromResult(new UtilizadorModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> deleteUtilizador(UtilizadorModel utilizador)
        {
            try
            {
                string fullURL = this.baseUrl + $"Utilizadores/deleteUtilizador/{utilizador.ID}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.DeleteAsync("");


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(true);
                }

                return await Task.FromResult(false);
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
