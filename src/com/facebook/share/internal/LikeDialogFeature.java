package com.facebook.share.internal;

import com.facebook.internal.d;

public enum LikeDialogFeature
  implements d
{
  LIKE_DIALOG(20140701);
  
  private int minVersion;
  
  private LikeDialogFeature(int paramInt)
  {
    minVersion = paramInt;
  }
  
  public String getAction()
  {
    return "com.facebook.platform.action.request.LIKE_DIALOG";
  }
  
  public int getMinVersion()
  {
    return minVersion;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeDialogFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */