package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.Iterator;
import org.json.JSONObject;

@ey
public final class dc
  extends cz.a
{
  private final MediationAdapter qV;
  
  public dc(MediationAdapter paramMediationAdapter)
  {
    qV = paramMediationAdapter;
  }
  
  private Bundle a(String paramString1, int paramInt, String paramString2)
  {
    gr.W("Server parameters: " + paramString1);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(qV instanceof AdMobAdapter)) {
        break label138;
      }
    }
    catch (Throwable paramString1)
    {
      gr.d("Could not get Server Parameters Bundle.", paramString1);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label138:
    return localBundle;
  }
  
  public void a(d paramd, av paramav, String paramString, da paramda)
  {
    a(paramd, paramav, paramString, null, paramda);
  }
  
  /* Error */
  public void a(d paramd, av paramav, String paramString1, String paramString2, da paramda)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   4: instanceof 94
    //   7: ifne +42 -> 49
    //   10: new 21	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 22	java/lang/StringBuilder:<init>	()V
    //   17: ldc 96
    //   19: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_0
    //   23: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   26: invokevirtual 102	java/lang/Object:getClass	()Ljava/lang/Class;
    //   29: invokevirtual 107	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   32: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 38	com/google/android/gms/internal/gr:W	(Ljava/lang/String;)V
    //   41: new 77	android/os/RemoteException
    //   44: dup
    //   45: invokespecial 78	android/os/RemoteException:<init>	()V
    //   48: athrow
    //   49: ldc 109
    //   51: invokestatic 112	com/google/android/gms/internal/gr:S	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   58: checkcast 94	com/google/android/gms/ads/mediation/MediationInterstitialAdapter
    //   61: astore 7
    //   63: aload_2
    //   64: getfield 118	com/google/android/gms/internal/av:of	Ljava/util/List;
    //   67: ifnull +117 -> 184
    //   70: new 120	java/util/HashSet
    //   73: dup
    //   74: aload_2
    //   75: getfield 118	com/google/android/gms/internal/av:of	Ljava/util/List;
    //   78: invokespecial 123	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   81: astore 6
    //   83: new 125	com/google/android/gms/internal/db
    //   86: dup
    //   87: new 127	java/util/Date
    //   90: dup
    //   91: aload_2
    //   92: getfield 131	com/google/android/gms/internal/av:od	J
    //   95: invokespecial 134	java/util/Date:<init>	(J)V
    //   98: aload_2
    //   99: getfield 138	com/google/android/gms/internal/av:oe	I
    //   102: aload 6
    //   104: aload_2
    //   105: getfield 142	com/google/android/gms/internal/av:ol	Landroid/location/Location;
    //   108: aload_2
    //   109: getfield 146	com/google/android/gms/internal/av:og	Z
    //   112: aload_2
    //   113: getfield 149	com/google/android/gms/internal/av:oh	I
    //   116: invokespecial 152	com/google/android/gms/internal/db:<init>	(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    //   119: astore 8
    //   121: aload_2
    //   122: getfield 156	com/google/android/gms/internal/av:on	Landroid/os/Bundle;
    //   125: ifnull +65 -> 190
    //   128: aload_2
    //   129: getfield 156	com/google/android/gms/internal/av:on	Landroid/os/Bundle;
    //   132: aload 7
    //   134: invokevirtual 102	java/lang/Object:getClass	()Ljava/lang/Class;
    //   137: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   140: invokevirtual 163	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   143: astore 6
    //   145: aload 7
    //   147: aload_1
    //   148: invokestatic 169	com/google/android/gms/dynamic/e:f	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   151: checkcast 171	android/content/Context
    //   154: new 173	com/google/android/gms/internal/dd
    //   157: dup
    //   158: aload 5
    //   160: invokespecial 176	com/google/android/gms/internal/dd:<init>	(Lcom/google/android/gms/internal/da;)V
    //   163: aload_0
    //   164: aload_3
    //   165: aload_2
    //   166: getfield 149	com/google/android/gms/internal/av:oh	I
    //   169: aload 4
    //   171: invokespecial 178	com/google/android/gms/internal/dc:a	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   174: aload 8
    //   176: aload 6
    //   178: invokeinterface 182 6 0
    //   183: return
    //   184: aconst_null
    //   185: astore 6
    //   187: goto -104 -> 83
    //   190: aconst_null
    //   191: astore 6
    //   193: goto -48 -> 145
    //   196: astore_1
    //   197: ldc -72
    //   199: aload_1
    //   200: invokestatic 75	com/google/android/gms/internal/gr:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   203: new 77	android/os/RemoteException
    //   206: dup
    //   207: invokespecial 78	android/os/RemoteException:<init>	()V
    //   210: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	211	0	this	dc
    //   0	211	1	paramd	d
    //   0	211	2	paramav	av
    //   0	211	3	paramString1	String
    //   0	211	4	paramString2	String
    //   0	211	5	paramda	da
    //   81	111	6	localObject	Object
    //   61	85	7	localMediationInterstitialAdapter	MediationInterstitialAdapter
    //   119	56	8	localdb	db
    // Exception table:
    //   from	to	target	type
    //   54	83	196	java/lang/Throwable
    //   83	145	196	java/lang/Throwable
    //   145	183	196	java/lang/Throwable
  }
  
  public void a(d paramd, ay paramay, av paramav, String paramString, da paramda)
  {
    a(paramd, paramay, paramav, paramString, null, paramda);
  }
  
  /* Error */
  public void a(d paramd, ay paramay, av paramav, String paramString1, String paramString2, da paramda)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   7: instanceof 190
    //   10: ifne +42 -> 52
    //   13: new 21	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 22	java/lang/StringBuilder:<init>	()V
    //   20: ldc -64
    //   22: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_0
    //   26: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   29: invokevirtual 102	java/lang/Object:getClass	()Ljava/lang/Class;
    //   32: invokevirtual 107	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   35: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 38	com/google/android/gms/internal/gr:W	(Ljava/lang/String;)V
    //   44: new 77	android/os/RemoteException
    //   47: dup
    //   48: invokespecial 78	android/os/RemoteException:<init>	()V
    //   51: athrow
    //   52: ldc -62
    //   54: invokestatic 112	com/google/android/gms/internal/gr:S	(Ljava/lang/String;)V
    //   57: aload_0
    //   58: getfield 14	com/google/android/gms/internal/dc:qV	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   61: checkcast 190	com/google/android/gms/ads/mediation/MediationBannerAdapter
    //   64: astore 9
    //   66: aload_3
    //   67: getfield 118	com/google/android/gms/internal/av:of	Ljava/util/List;
    //   70: ifnull +137 -> 207
    //   73: new 120	java/util/HashSet
    //   76: dup
    //   77: aload_3
    //   78: getfield 118	com/google/android/gms/internal/av:of	Ljava/util/List;
    //   81: invokespecial 123	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   84: astore 7
    //   86: new 125	com/google/android/gms/internal/db
    //   89: dup
    //   90: new 127	java/util/Date
    //   93: dup
    //   94: aload_3
    //   95: getfield 131	com/google/android/gms/internal/av:od	J
    //   98: invokespecial 134	java/util/Date:<init>	(J)V
    //   101: aload_3
    //   102: getfield 138	com/google/android/gms/internal/av:oe	I
    //   105: aload 7
    //   107: aload_3
    //   108: getfield 142	com/google/android/gms/internal/av:ol	Landroid/location/Location;
    //   111: aload_3
    //   112: getfield 146	com/google/android/gms/internal/av:og	Z
    //   115: aload_3
    //   116: getfield 149	com/google/android/gms/internal/av:oh	I
    //   119: invokespecial 152	com/google/android/gms/internal/db:<init>	(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    //   122: astore 10
    //   124: aload 8
    //   126: astore 7
    //   128: aload_3
    //   129: getfield 156	com/google/android/gms/internal/av:on	Landroid/os/Bundle;
    //   132: ifnull +20 -> 152
    //   135: aload_3
    //   136: getfield 156	com/google/android/gms/internal/av:on	Landroid/os/Bundle;
    //   139: aload 9
    //   141: invokevirtual 102	java/lang/Object:getClass	()Ljava/lang/Class;
    //   144: invokevirtual 159	java/lang/Class:getName	()Ljava/lang/String;
    //   147: invokevirtual 163	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   150: astore 7
    //   152: aload 9
    //   154: aload_1
    //   155: invokestatic 169	com/google/android/gms/dynamic/e:f	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   158: checkcast 171	android/content/Context
    //   161: new 173	com/google/android/gms/internal/dd
    //   164: dup
    //   165: aload 6
    //   167: invokespecial 176	com/google/android/gms/internal/dd:<init>	(Lcom/google/android/gms/internal/da;)V
    //   170: aload_0
    //   171: aload 4
    //   173: aload_3
    //   174: getfield 149	com/google/android/gms/internal/av:oh	I
    //   177: aload 5
    //   179: invokespecial 178	com/google/android/gms/internal/dc:a	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   182: aload_2
    //   183: getfield 199	com/google/android/gms/internal/ay:width	I
    //   186: aload_2
    //   187: getfield 202	com/google/android/gms/internal/ay:height	I
    //   190: aload_2
    //   191: getfield 206	com/google/android/gms/internal/ay:op	Ljava/lang/String;
    //   194: invokestatic 211	com/google/android/gms/ads/a:a	(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    //   197: aload 10
    //   199: aload 7
    //   201: invokeinterface 215 7 0
    //   206: return
    //   207: aconst_null
    //   208: astore 7
    //   210: goto -124 -> 86
    //   213: astore_1
    //   214: ldc -39
    //   216: aload_1
    //   217: invokestatic 75	com/google/android/gms/internal/gr:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: new 77	android/os/RemoteException
    //   223: dup
    //   224: invokespecial 78	android/os/RemoteException:<init>	()V
    //   227: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	this	dc
    //   0	228	1	paramd	d
    //   0	228	2	paramay	ay
    //   0	228	3	paramav	av
    //   0	228	4	paramString1	String
    //   0	228	5	paramString2	String
    //   0	228	6	paramda	da
    //   84	125	7	localObject1	Object
    //   1	124	8	localObject2	Object
    //   64	89	9	localMediationBannerAdapter	MediationBannerAdapter
    //   122	76	10	localdb	db
    // Exception table:
    //   from	to	target	type
    //   57	86	213	java/lang/Throwable
    //   86	124	213	java/lang/Throwable
    //   128	152	213	java/lang/Throwable
    //   152	206	213	java/lang/Throwable
  }
  
  public void destroy()
  {
    try
    {
      qV.onDestroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public d getView()
  {
    if (!(qV instanceof MediationBannerAdapter))
    {
      gr.W("MediationAdapter is not a MediationBannerAdapter: " + qV.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      d locald = e.k(((MediationBannerAdapter)qV).getBannerView());
      return locald;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void pause()
  {
    try
    {
      qV.onPause();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void resume()
  {
    try
    {
      qV.onResume();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public void showInterstitial()
  {
    if (!(qV instanceof MediationInterstitialAdapter))
    {
      gr.W("MediationAdapter is not a MediationInterstitialAdapter: " + qV.getClass().getCanonicalName());
      throw new RemoteException();
    }
    gr.S("Showing interstitial from adapter.");
    try
    {
      ((MediationInterstitialAdapter)qV).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      gr.d("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */