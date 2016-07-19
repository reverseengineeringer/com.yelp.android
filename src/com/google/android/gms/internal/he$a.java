package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.DownloadManager.Request;

@TargetApi(9)
public class he$a
  extends he
{
  public he$a()
  {
    super(null);
  }
  
  public int a()
  {
    return 6;
  }
  
  public boolean a(DownloadManager.Request paramRequest)
  {
    paramRequest.setShowRunningNotification(true);
    return true;
  }
  
  public int b()
  {
    return 7;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */