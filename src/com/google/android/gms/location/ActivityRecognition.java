package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.nb;
import com.google.android.gms.internal.nk;

public class ActivityRecognition
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(DR, DQ, new Scope[0]);
  public static ActivityRecognitionApi ActivityRecognitionApi = new nb();
  public static final String CLIENT_NAME = "activity_recognition";
  private static final Api.c<nk> DQ = new Api.c();
  private static final Api.b<nk, Api.ApiOptions.NoOptions> DR = new ActivityRecognition.1();
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */