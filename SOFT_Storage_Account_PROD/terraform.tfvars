# Give your Details here:

storage_account_details = {
    storage_account1 = {
        name                      = ""  ### Name of the storage account. ###
        resource_group_name       = ""  ### Name of the Resource Group. ###
        location                  = ""  ### Name of the Location. Please refer Readme for more details ###
        account_tier              = ""  ### Account tier of storage account. (Standard and Premium) ###
        account_replication_type  = ""  ### Type of replication to use for storage account (LRS,ZRS,GRS,RAGRS and GZRS) ###
        account_kind              = ""  ### Defines kind of storage account. (BlobStorage,BlockBlobStorage,FileStorage,Storage,StorageV2. Defaults to StorageV2) ###
        access_tier               = ""  ### Define access tier of storage account.( Hot and Cool) ###
        https_traffic_only_enabled = "" ### Define Traffic type should be https or not. ( Yes and No) ###
    }
}