package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Map;

@ey
public final class cx
  extends cy.a
{
  private Map<Class<? extends com.google.android.gms.ads.mediation.NetworkExtras>, com.google.android.gms.ads.mediation.NetworkExtras> qT;
  
  private <NETWORK_EXTRAS extends com.google.ads.mediation.NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> cz z(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString, false, cx.class.getClassLoader());
      if (com.google.ads.mediation.MediationAdapter.class.isAssignableFrom((Class)localObject))
      {
        localObject = (com.google.ads.mediation.MediationAdapter)((Class)localObject).newInstance();
        return new de((com.google.ads.mediation.MediationAdapter)localObject, (com.google.ads.mediation.NetworkExtras)qT.get(((com.google.ads.mediation.MediationAdapter)localObject).getAdditionalParametersType()));
      }
      if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom((Class)localObject)) {
        return new dc((com.google.android.gms.ads.mediation.MediationAdapter)((Class)localObject).newInstance());
      }
      gr.W("Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable)
    {
      gr.W("Could not instantiate mediation adapter: " + paramString + ". " + localThrowable.getMessage());
      throw new RemoteException();
    }
  }
  
  public void d(Map<Class<? extends com.google.android.gms.ads.mediation.NetworkExtras>, com.google.android.gms.ads.mediation.NetworkExtras> paramMap)
  {
    qT = paramMap;
  }
  
  public cz x(String paramString)
  {
    return z(paramString);
  }
  
  public boolean y(String paramString)
  {
    try
    {
      boolean bool = CustomEvent.class.isAssignableFrom(Class.forName(paramString, false, cx.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      gr.W("Could not load custom event implementation class: " + paramString + ", assuming old implementation.");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */