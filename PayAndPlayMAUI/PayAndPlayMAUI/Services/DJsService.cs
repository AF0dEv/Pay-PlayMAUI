using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class DJsService
    {
        private string baseUrl { get; set; }
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }

        public DJsService()
        {
            ////IEFP
            //this.baseUrl = DeviceInfo.Platform ==
            //    DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
            // Home
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://192.168.1.76:8000/api/" : "http://localhost:8000/api/";

            this.client = new HttpClient { BaseAddress = new Uri(this.baseUrl) };
            this.client.Timeout = TimeSpan.FromSeconds(60);
            this.response = new HttpResponseMessage();
        }
        public async Task<List<DjModel>> GetDJs()
        {
            try
            {
                List<DjModel> DJs = new List<DjModel>();

                string endpoint = "DJs/getDJs";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    DJs = JsonConvert.DeserializeObject<List<DjModel>>(content);
                }

                return await Task.FromResult(DJs.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<DjModel> GetDJ(int DjId)
        {
            try
            {
                DjModel Dj = new DjModel();

                string endpoint = $"DJs/getDJ/{DjId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    Dj = JsonConvert.DeserializeObject<DjModel>(content);
                }

                return await Task.FromResult(Dj);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<DjModel> GetDJByEmail(string email)
        {
            try
            {
                DjModel Dj = new DjModel();

                string endpoint = $"DJs/getDJByEmail/{email}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    Dj = JsonConvert.DeserializeObject<DjModel>(content);
                }

                return await Task.FromResult(Dj);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public async Task<DjModel> AddDJ(DjModel dj)
        {
            try
            {

                string endpoint = $"DJs/addDJ";

                string DjInfoAsJson = JsonConvert.SerializeObject(dj);

                StringContent DjStringContent = new StringContent(DjInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, DjStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(dj);
                }

                return await Task.FromResult(new DjModel());
            }
            catch (Exception)
            {
                throw null;
            }
        }
        public async Task<DjModel> EditDJ(DjModel dj)
        {
            try
            {
                string endpoint = $"DJs/editDJ/{dj.ID}";
                string DjInfoAsJson = JsonConvert.SerializeObject(dj);
                StringContent DjStringContent = new StringContent(DjInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, DjStringContent);

                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(dj);
                }

                return await Task.FromResult(new DjModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeleteDJ(DjModel dj)
        {
            try
            {
                string endpoint = $"DJs/deleteDJ/{dj.ID}";

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
