package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdSize;

@Deprecated
public abstract interface d<ADDITIONAL_PARAMETERS extends h, SERVER_PARAMETERS extends MediationServerParameters>
  extends c<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract void a(e parame, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, AdSize paramAdSize, b paramb, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);
  
  public abstract View d();
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */