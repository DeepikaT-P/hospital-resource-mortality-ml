using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using medicalProject.DLTableAdapters;
using System.Data;

namespace medicalProject
{
    public class BLL
    {
        //Business Logic Layer - class which contains class members n member functions
        tblAdminTableAdapter adminObj = new tblAdminTableAdapter();
        tblCitiesTableAdapter cityObj = new tblCitiesTableAdapter();
        tblInChargersTableAdapter inchargerObj = new tblInChargersTableAdapter();
        tblDataTableAdapter dataObj = new tblDataTableAdapter();

        tblDatasetTableAdapter datasetObj = new tblDatasetTableAdapter();
                
        //function to check the admin Login
        public bool CheckAdminLogin(string adminId, string password)
        {
            int cnt = int.Parse(adminObj.CheckAdminLogin(adminId, password).ToString());

            if (cnt == 1)

                return true;

            else

                return false;
        }

        //function to check IC login
        public bool CheckICLogin(string ICId, string password)
        {
            int cnt = int.Parse(inchargerObj.CheckICLogin(ICId, password).ToString());

            if (cnt == 1)

                return true;

            else

                return false;
        }

        //function to get admin by id
        public DataTable GetAdminById(string adminId)
        {
            return adminObj.GetAdminById(adminId);
        }

        //function to update the admin password
        public void UpdateAdminPassword(string newpassword, string adminId)
        {
            adminObj.UpdateAdminPassword(newpassword, adminId);
        }

        //Manage Cities

        //function to get all cities
        public DataTable GetCities()
        {
            return cityObj.GetData();
        }

        //function to get city by id
        public DataTable GetCityById(int cityId)
        {
            return cityObj.GetCityById(cityId);
        }

        //function to insert city
        public void InsertCity(string city)
        {
            cityObj.InsertCity(city);
        }

        //function to delete city
        public void DeleteCity(int cityId)
        {
            cityObj.DeleteCity(cityId);
        }

        //function to check the city name
        public bool CheckCity(string city)
        {
            int cnt = int.Parse(cityObj.CheckCity(city).ToString());

            if (cnt == 1)

                return false;

            else

                return true;
        }

        //Manage Hospital Inchargers

        //function to reterive all ICs
        public DataTable GetICs()
        {
            return inchargerObj.GetData();
        }

        //function to get IC by Id
        public DataTable GetICById(string ICId)
        {
            return inchargerObj.GetInchargerById(ICId);
        }

        //function to insert new IC
        public void InsertIC(string ICId, string password, string name, string address, int cityId, string contactNo, string emailId)
        {
            inchargerObj.InsertIncharger(ICId, password, name, address, contactNo, emailId, cityId);
        }

        //function to update IC
        public void UpdateIC(string ICId, string password, string name, string address, int cityId, string contactNo, string emailId, string IAId1)
        {
            inchargerObj.UpdateIncharger(ICId, password, name, address, contactNo, emailId, cityId, IAId1);
        }

        //function to delete IC
        public void DeleteIA(string ICId)
        {
            inchargerObj.DeleteIncharger(ICId);
        }

        //function to check the ICId
        public bool CheckICId(string ICId)
        {
            int cnt = int.Parse(inchargerObj.CheckInchargerId(ICId).ToString());

            if (cnt == 1)

                return false;

            else

                return true;
        }

        //function to update the IC Password
        public void UpdateICPassword(string newPassword, string icId)
        {
            inchargerObj.UpdateICPassword(newPassword, icId);
        }

        //Data Module

        //function to insert the data
        public void InsertData(string inchargerId, DateTime date, string data)
        {
            dataObj.InsertData(inchargerId, date, data);
        }

        //function to update data
        public void UpdateData(string inchargerId, DateTime date, string data, int dataId)
        {
            dataObj.UpdateData(inchargerId, date, data, dataId);
        }

        //function to get data by Id
        public DataTable GetDataById(int dataId)
        {
            return dataObj.GetDataById(dataId);
        }

        //function to get data by inchargerId (hospital data)
        public DataTable GetDataByInchargerId(string inchargerId)
        {
            return dataObj.GetDataByInchargerId(inchargerId);
        }

        //function to delete data
        public void DeleteData(int dataId)
        {
            dataObj.DeleteData(dataId);
        }

        //Dataset Module
        //function to add dataset
        public void InsertDataset(string userId, DateTime date, string Neurologist, string Cardiologist,
            string Gynecologist, string Orthopedics, string Surgeon, string Physician,
            string Beds, string ICU, string Nurses,
             string MortalityRate)
        {
            datasetObj.InsertDataset(userId, date, Neurologist, Cardiologist,Gynecologist,Orthopedics,
                   Surgeon, Physician,
               Beds, ICU, Nurses,    MortalityRate);
        }

        public void UpdateDataset(string userId, DateTime date,  string Neurologist, string Cardiologist,
            string Gynecologist, string Orthopedics, string Surgeon, string Physician,
            string Beds, string ICU, string Nurses,
             string MortalityRate, int datasetId)
        {
            datasetObj.UpdateDataset(userId, date, Neurologist, Cardiologist,Gynecologist,Orthopedics, Surgeon, Physician,
                Beds, ICU, Nurses, MortalityRate, datasetId);
        }

        public void DeleteDatasetById(int datasetId)
        {
            datasetObj.DeleteDatasetById(datasetId);
        }

        public DataTable GetDatasetByHospital(string userId)
        {
            return datasetObj.GetDatasetByHospital(userId);
        }


        public DataTable GetAllDataset()
        {
            return datasetObj.GetData();
        }

        public DataTable GetDatasetbyId(int datasetId)
        {
            return datasetObj.GetDatasetById(datasetId);
        }

        public void DeleteDataByLoc(string userId)
        {
            datasetObj.DeleteDatasetByLoc(userId);
        }
                            

    }
}