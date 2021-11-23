# Synapse Bootcamp Setup
Synapse Workspace Setup &amp; Access Control configuration
</br>
</br>
## Azure Synapse environment

We need you to prepare some things for the upcoming Synapse Bootcamp. Since you are working as a team, you only need to deploy the needed Azure resources one time. To do so klick the button below. It will open the Azure portal. Make sure you are using the right subscription. On the screen you are seeing fill in the values as follows:
| Field | Fill in |
| -------------- | --------- |
| Resource group | *press the* **Create new** *button and enter a name for your Resource group* |
| Region | West Europe |
| Company Acronym | *a three letter acronym for your company* |
| SQL Administrator Login | *enter admin name* |
| SQL Administrator Login Password | *enter admin password* |

Be aware that the SQL password should consist of uppercase letters, lowercase letters and digits (0-9). Any non-alphanumeric characters such as: !, $, #, or % will lead the deployment to fail.

Leave the rest as is. It will take around 10 minutes for the following deployment to create all resources.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Falschroe%2FSynapseSetup%2Fmain%2Fazuredeploy.json)

Once the resources are deployed take a look at them.

You will find a **Dedicated SQL pool** that is named **XXXwssql1 (XXXws/XXXwssql1)**. We want to pause this resource, since it will cost you otherwise. We did set it up to automatically pause at 6 in the afternoon, but since you potentially did this in the morning, let's pause it manually. </br>
Select the dedicated SQL pool. In the detail view you will find the button **Pause** select it. It will ask you for confirmation. For a more detailed description look [here](https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/pause-and-resume-compute-portal). </br>
Have a look at the permissions and make sure everything is set up to work with the given resources. Also make sure that your teammates are at least contributers on either the resource group your Azure services are residing in or on all the services themselves. [Here](https://docs.microsoft.com/en-us/azure/synapse-analytics/security/how-to-set-up-access-control) you will find a detailed description. </br>
After that you are all set on the Azure environment.
</br>
</br>
## Local environment

Now all participants need some tools to be able to properly work from their local machine.

**Azure Storage Explorer**
One of the first exercises will be to copy raw data from an Azure public storage account to your Synapse workspace data lake. This will prepare the following exercises. The most efficient way to do this, is using Azure Storage Explorer. Download it from here and install it: </br>
[Azure Storage Explorer – cloud storage management](https://azure.microsoft.com/en-us/features/storage-explorer/)

**Azure Data Studio**
Azure Data Studio is a cross-platform database tool, running on Windows, macOS and Linux.
You will be given different tasks concerning management and data access in Synapse SQL pools and Azure PostgreSQL.
Download and install Azure Data Studio from here: </br>
[Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15)

**SQL Server Management Studio**
This offers you management and data access to SQL server environments including Synapse serverless and dedicated SQL pools. It runs on Windows. Download and install it from here: </br>
[SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/sql-server-management-studio-ssms?view=sql-server-ver15)
 