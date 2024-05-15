using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class MusicasService
    {
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }

        private string baseUrl { get; set; }
        public MusicasService()
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
        public async Task<List<MusicaModel>> GetMusicas()
        {
            try
            {
                List<MusicaModel> musicas = new List<MusicaModel>();

                string endpoint = "Musicas/getMusicas";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    musicas = JsonConvert.DeserializeObject<List<MusicaModel>>(content);
                }

                return await Task.FromResult(musicas.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaModel> GetMusica(int MusicaId)
        {
            try
            {
                MusicaModel musica = new MusicaModel();

                string endpoint = $"Musicas/getMusica/{MusicaId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    musica = JsonConvert.DeserializeObject<MusicaModel>(content);
                }

                return await Task.FromResult(musica);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaModel> AddMusica(MusicaModel musica)
        {
            try
            {
                string endpoint = $"Musicas/addMusica";

                string musicaInfoAsJson = JsonConvert.SerializeObject(musica);

                StringContent musicaStringContent = new StringContent(musicaInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, musicaStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(musica);
                }

                return await Task.FromResult(new MusicaModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaModel> EditMusica(MusicaModel musica)
        {
            try
            {
                string endpoint = $"Musicas/editMusica/{musica.ID}";

                string musicaInfoAsJson = JsonConvert.SerializeObject(musica, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });


                StringContent musicaStringContent = new StringContent(musicaInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, musicaStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(musica);
                }

                return await Task.FromResult(new MusicaModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeleteMusica(MusicaModel musica)
        {
            try
            {
                string endpoint = $"Musicas/deleteMusica/{musica.ID}";

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
