using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class UtilizadoresService
    {
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }
        private string baseUrl { get; set; }
        public UtilizadoresService()
        {
            // IEFP
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
            //// Home
            //this.baseUrl = DeviceInfo.Platform ==
            //    DevicePlatform.Android ? "http://192.168.1.76:8000/api/" : "http://localhost:8000/api/";
            
            this.client = new HttpClient { BaseAddress = new Uri(this.baseUrl) };
            this.client.Timeout = TimeSpan.FromSeconds(60);
            this.response = new HttpResponseMessage();
        }
        public async Task<List<UtilizadorModel>> GetUtilizadores()
        {
            try
            {
                List<UtilizadorModel> utilizadores = new List<UtilizadorModel>();

                string endpoint = "Utilizadores/getUtilizadores";

                this.response = await client.GetAsync(endpoint);


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
        public async Task<UtilizadorModel> GetUtilizadorByEmail(string email)
        {
            try
            {
                UtilizadorModel utilizador = new UtilizadorModel();

                string endpoint = $"Utilizadores/getUtilizadorByEmail/{email}";

                this.response = await client.GetAsync(endpoint);


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
        public async Task<UtilizadorModel> GetUtilizador(int UtilizadorId)
        {
            try
            {
                UtilizadorModel utilizador = new UtilizadorModel();

                string endpoint =$"Utilizadores/getUtilizador/{UtilizadorId}";

                this.response = await client.GetAsync(endpoint);


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
        public async Task<UtilizadorModel> AddUtilizador(UtilizadorModel utilizador)
        {
            try
            {

                string endpoint ="Utilizadores/addUtilizador";

                string utilizadorInfoAsJson = JsonConvert.SerializeObject(utilizador);

                StringContent utilizadorStringContent = new StringContent(utilizadorInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, utilizadorStringContent);


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
        public async Task<UtilizadorModel> EditUtilizador(UtilizadorModel utilizador)
        {
            try
            {
                string endpoint = $"Utilizadores/editUtilizador/{utilizador.ID}";

                string utilizadorInfoAsJson = JsonConvert.SerializeObject(utilizador);

                StringContent utilizadorStringContent = new StringContent(utilizadorInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, utilizadorStringContent);


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
        public async Task<bool> DeleteUtilizador(UtilizadorModel utilizador)
        {
            try
            {
                string endpoint = $"Utilizadores/deleteUtilizador/{utilizador.ID}";

                this.response = await client.DeleteAsync(endpoint);


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
