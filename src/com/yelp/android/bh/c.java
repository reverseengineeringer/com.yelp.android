package com.yelp.android.bh;

import android.app.Activity;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.List;

public abstract interface c
{
  @Deprecated
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri);
  
  @Deprecated
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri1, String paramString, Uri paramUri2, List<a> paramList);
  
  @Deprecated
  public static final class a
  {
    public final Uri a;
    public final Uri b;
    public final int c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bh.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */