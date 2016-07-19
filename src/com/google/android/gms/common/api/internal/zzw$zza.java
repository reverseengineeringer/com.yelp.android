package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class zzw$zza
  implements GoogleApiClient.OnConnectionFailedListener
{
  public final int zzaiF;
  public final GoogleApiClient zzaiG;
  public final GoogleApiClient.OnConnectionFailedListener zzaiH;
  
  public zzw$zza(zzw paramzzw, int paramInt, GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzaiF = paramInt;
    zzaiG = paramGoogleApiClient;
    zzaiH = paramOnConnectionFailedListener;
    paramGoogleApiClient.registerConnectionFailedListener(this);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(paramString).append("GoogleApiClient #").print(zzaiF);
    paramPrintWriter.println(":");
    zzaiG.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzw.zzc(zzaiI).post(new zzw.zzb(zzaiI, zzaiF, paramConnectionResult));
  }
  
  public void zzpR()
  {
    zzaiG.unregisterConnectionFailedListener(this);
    zzaiG.disconnect();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzw.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */