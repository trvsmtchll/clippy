# Step 1 - Aviatrix Azure Terraform SP Bootstrap

This script creates an Azure service principal and outputs an .env file that can be sourced for provisioning an Aviatrix Controller in Azure.


## Dependencies

Install the tools you need and login to Azure; this takes a minute or two. For windows you may use the ubuntu subsystem.

- **homebrew**  ```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

- **jq**   ```brew install jq```

- **terraform** ```brew install terraform```

- **azure cli**  ```brew update && brew install azure-cli```

- ```az login``` This command will open your default browser and load an Azure sign-in page.

## Getting started

1. ```az login``` This command will open your default browser and load an Azure sign-in page.

2. Run a simple test to show your Azure Subscription ID  ```export SUB_ID=`az account show | jq -r '.id'` && echo "My Azure Subscription ID is $SUB_ID"```

3. Run the script ```./avx_tf_sp.sh```

4. The script will write a file and source your environment **avx_tf_sp.env** file created to set the ARM and TF_VAR env variables needed. Save and keep this file ***safe and secure*** for future use. 

Your environment will look similar to this:

```
$ env | grep ARM
ARM_CLIENT_ID=nnnnnnn-f2e7-4690-a64d-nnnnnn
ARM_TENANT_ID=nnnnnnnn-5ee5-4b80-812f-nnnnnnnn
ARM_CLIENT_SECRET=nnnnnnnn-8bff-4859-866e-nnnnnnnn
ARM_SUBSCRIPTION_ID=nnnnnn-a8c3-44dd-af11-nnnnnnnn

$ env | grep TF
TF_VAR_arm_subscription_id=nnnnnnnn-a8c3-44dd-af11-nnnnnnnn
TF_VAR_arm_application_id=nnnnnnnn-cfea-4f76-89dd-nnnnnnnn
TF_VAR_arm_client_secret=nnnnnnnn-cd9c-45ec-a376-nnnnnnnn
TF_VAR_arm_directory_id=nnnnnnnn-5ee5-4b80-812f-nnnnnnnn
```

You will now have everything you need to provision Aviatrix Controller in Azure in **Step2**, and automate onboarding of the Azure Access Account in **Step3**.




