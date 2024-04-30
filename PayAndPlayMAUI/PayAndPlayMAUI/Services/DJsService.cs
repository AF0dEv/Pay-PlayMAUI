using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PayAndPlayMAUI.Services
{
    public class DJsService
    {
        private string baseUrl { get; set; }
        public DJsService()
        {
            this.baseUrl = DeviceInfo.Platform ==
                DevicePlatform.Android ? "http://10.30.16.17:8000/api/" : "http://localhost:8000/api/";
        }

        public async Task<List<DjModel>> getDJs()
        {
            try
            {
                List<DjModel> DJs = new List<DjModel>();

                string fullURL = this.baseUrl + "DJs/getDJs";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


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
        public async Task<DjModel> getDJ(int DjId)
        {
            try
            {
                DjModel Dj = new DjModel();

                string fullURL = this.baseUrl + $"DJs/getDJ/{DjId}";

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.GetAsync("");


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
        public async Task<DjModel> addDJ(DjModel dj)
        {
            try
            {

                string fullURL = this.baseUrl + $"DJs/addDJ";
                string DjInfoAsJson = JsonConvert.SerializeObject(dj);
                StringContent DjStringContent = new StringContent(DjInfoAsJson, Encoding.UTF8, "application/json");

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.PostAsync("", DjStringContent);


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
        public async Task<DjModel> editDJ(DjModel dj)
        {
            try
            {
                string fullURL = this.baseUrl + $"DJs/editDJ/{dj.ID}";
                string DjInfoAsJson = JsonConvert.SerializeObject(dj);
                StringContent DjStringContent = new StringContent(DjInfoAsJson, Encoding.UTF8, "application/json");

                HttpClient client = new HttpClient();

                client.BaseAddress = new Uri(fullURL);

                client.Timeout = TimeSpan.FromSeconds(60);

                HttpResponseMessage response = await client.PutAsync("", DjStringContent);


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
        public async Task<bool> deleteDJ(DjModel dj)
        {
            try
            {
                string fullURL = this.baseUrl + $"DJs/deleteDJ/{dj.ID}";

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
