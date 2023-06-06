public class AssetTriggerHandler {
    public static void AssetHandlerUpdate(
    List<asset> assetTriggerNew, 
    List<asset> assetTriggerOld,
    Map<id, asset> assetTriggerNewMap,
    Map<id, asset> assetTriggerOldMap) {

        if(assetTriggerNewMap != null) {
            //for update as for update Trigger.newMap is available
            Set<id> assetIdSet = assetTriggerNewMap.keySet();
            for (id assetid : assetIdSet) {
                if(assetTriggerNewMap.get(assetId).Status != assetTriggerOldMap.get(assetId).Status &&
                assetTriggerNewMap.get(assetId).Status  == 'Shipped') {
                    assetTriggerNewMap.get(assetid).Description ='Asset is shipped';
                }
                
                if(assetTriggerNewMap.get(assetId).Status != assetTriggerOldMap.get(assetId).Status &&
                assetTriggerNewMap.get(assetId).Status  == 'Installed') {
                    assetTriggerNewMap.get(assetid).Description ='Asset is installed';
                }
        }
}       else {
        //for insert
        for (Asset eachAsset : assetTriggerNew) {
            if (eachAsset.Status == 'Shipped') {
                eachAsset.Description = 'Asset is shipped';
            } else if (eachAsset.Status == 'Installed') {
                eachAsset.Description = 'Asset is installed';
            }
            
        }

    }
 }
}