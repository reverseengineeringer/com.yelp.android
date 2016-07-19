package com.yelp.android.bb;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fv;

@fv
public class d
  implements com.yelp.android.be.a
{
  private final a a;
  
  public d(a parama)
  {
    a = parama;
  }
  
  public String a()
  {
    if (a == null) {
      return null;
    }
    try
    {
      String str = a.a();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not forward getType to RewardItem", localRemoteException);
    }
    return null;
  }
  
  public int b()
  {
    if (a == null) {
      return 0;
    }
    try
    {
      int i = a.b();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      b.d("Could not forward getAmount to RewardItem", localRemoteException);
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */