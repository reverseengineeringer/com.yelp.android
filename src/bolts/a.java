package bolts;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

public final class a
{
  public static Uri a(Context paramContext, Intent paramIntent)
  {
    Object localObject2 = null;
    Object localObject3 = a(paramIntent);
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject3 = ((Bundle)localObject3).getString("target_url");
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        b.a(paramContext, "al_nav_in", paramIntent, null);
        localObject1 = Uri.parse((String)localObject3);
      }
    }
    return (Uri)localObject1;
  }
  
  public static Bundle a(Intent paramIntent)
  {
    return paramIntent.getBundleExtra("al_applink_data");
  }
}

/* Location:
 * Qualified Name:     bolts.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */