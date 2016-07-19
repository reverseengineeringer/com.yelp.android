package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepName;
import com.yelp.android.bc.c;
import com.yelp.android.bc.e;
import com.yelp.android.bc.g;

@KeepName
public final class AdUrlAdapter
  extends a
  implements c, e, g
{
  protected Bundle a(Bundle paramBundle1, Bundle paramBundle2)
  {
    if (paramBundle1 != null) {}
    for (;;)
    {
      paramBundle1.putBundle("sdk_less_server_data", paramBundle2);
      paramBundle1.putBoolean("_noRefresh", true);
      return paramBundle1;
      paramBundle1 = new Bundle();
    }
  }
  
  public String a(Bundle paramBundle)
  {
    return "adurl";
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.AdUrlAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */