package com.yelp.android.ui.activities;

import com.facebook.Session;

 enum FacebookConnectManager$FbPermissionSet$1
{
  FacebookConnectManager$FbPermissionSet$1(FacebookConnectManager.FacebookPermission[] paramArrayOfFacebookPermission1, FacebookConnectManager.FacebookPermission[] paramArrayOfFacebookPermission2)
  {
    super(paramString, paramInt, paramArrayOfFacebookPermission1, paramArrayOfFacebookPermission2, null);
  }
  
  public boolean allReadPermissionsGranted(Session paramSession)
  {
    return paramSession.isPermissionGranted(FacebookConnectManager.FacebookPermission.PUBLIC_PROFILE.toString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */