using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class PerfisService
    {
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }
        private string baseUrl { get; set; }
        public PerfisService()
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
        public async Task<List<PerfilModel>> GetPerfis()
        {
            try
            {
                List<PerfilModel> perfil = new List<PerfilModel>();

                string endpoint = "Perfis/getMusicasInPlayList";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    perfil = JsonConvert.DeserializeObject<List<PerfilModel>>(content);
                }

                return await Task.FromResult(perfil.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PerfilModel> GetPerfil(int PerfilId)
        {
            try
            {
                PerfilModel perfil = new PerfilModel();

                string endpoint = $"Perfis/getPerfil/{PerfilId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    perfil = JsonConvert.DeserializeObject<PerfilModel>(content);
                }

                return await Task.FromResult(perfil);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PerfilModel> AddPerfil(PerfilModel perfil)
        {
            try
            {
                string endpoint = $"Perfis/addPerfil";

                string perfilInfoAsJson = JsonConvert.SerializeObject(perfil);

                StringContent perfilStringContent = new StringContent(perfilInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, perfilStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(perfil);
                }

                return await Task.FromResult(new PerfilModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<PerfilModel> EditPerfil(PerfilModel perfil)
        {
            try
            {
                string endpoint = $"Perfis/editPerfil/{perfil.ID}";

                string perfilInfoAsJson = JsonConvert.SerializeObject(perfil);

                StringContent perfilStringContent = new StringContent(perfilInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, perfilStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(perfil);
                }

                return await Task.FromResult(new PerfilModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeletePerfil(PerfilModel perfil)
        {
            try
            {
                string endpoint = $"Perfis/deletePerfil/{perfil.ID}";

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
