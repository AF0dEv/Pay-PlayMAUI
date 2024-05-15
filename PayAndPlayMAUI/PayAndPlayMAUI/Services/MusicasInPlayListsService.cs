using Newtonsoft.Json;
using PayAndPlayMAUI.Models;
using System.Text;

namespace PayAndPlayMAUI.Services
{
    public class MusicasInPlayListsService
    {
        private string baseUrl { get; set; }
        private HttpClient client { get; set; }
        private HttpResponseMessage response { get; set; }

        public MusicasInPlayListsService()
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
        public async Task<List<MusicaInPlayListModel>> GetMusicasInPlayLists()
        {
            try
            {
                List<MusicaInPlayListModel> mip = new List<MusicaInPlayListModel>();

                string endpoint = "MusicasInPlayLists/getMusicasInPlayList";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    mip = JsonConvert.DeserializeObject<List<MusicaInPlayListModel>>(content);
                }

                return await Task.FromResult(mip.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<List<MusicaInPlayListModel>> GetMusicasInPlayListsForDj(int DjId)
        {
            try
            {
                List<MusicaInPlayListModel> mip = new List<MusicaInPlayListModel>();

                string endpoint = $"MusicasInPlayLists/getMusicasInPlayListForDj/{DjId}";

                this.response = await client.GetAsync(endpoint);

                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    mip = JsonConvert.DeserializeObject<List<MusicaInPlayListModel>>(content);
                }

                return await Task.FromResult(mip.ToList());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaInPlayListModel> GetMusicaInPlayList(int MusicaInPlayListId)
        {
            try
            {
                MusicaInPlayListModel mip = new MusicaInPlayListModel();

                string endpoint = $"MusicasInPlayLists/getMusicaInPlayList/{MusicaInPlayListId}";

                this.response = await client.GetAsync(endpoint);


                if (response.IsSuccessStatusCode)
                {
                    string content = await response.Content.ReadAsStringAsync();
                    mip = JsonConvert.DeserializeObject<MusicaInPlayListModel>(content);
                }

                return await Task.FromResult(mip);
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaInPlayListModel> AddMusicaInPlayList(MusicaInPlayListModel mip)
        {
            try
            {
                string endpoint = $"MusicasInPlayLists/addMusicaInPlayList";

                string mipInfoAsJson = JsonConvert.SerializeObject(mip, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });

                StringContent mipStringContent = new StringContent(mipInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PostAsync(endpoint, mipStringContent);


                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(mip);
                }

                return await Task.FromResult(new MusicaInPlayListModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<MusicaInPlayListModel> EditMusicaInPlayList(MusicaInPlayListModel mip)
        {
            try
            {
                string endpoint = $"MusicasInPlayLists/editMusicaInPlayList/{mip.ID}";

                string mipInfoAsJson = JsonConvert.SerializeObject(mip, new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });

                StringContent mipStringContent = new StringContent(mipInfoAsJson, Encoding.UTF8, "application/json");

                this.response = await client.PutAsync(endpoint, mipStringContent);

                if (response.IsSuccessStatusCode)
                {
                    return await Task.FromResult(mip);
                }

                return await Task.FromResult(new MusicaInPlayListModel());
            }
            catch (Exception)
            {
                return null;
            }
        }
        public async Task<bool> DeleteMusicaInPlayList(MusicaInPlayListModel mip)
        {
            try
            {
                string endpoint = $"MusicasInPlayLists/deleteMusicaInPlayList/{mip.ID}";

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
