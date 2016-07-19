package io.fabric.sdk.android.services.settings;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;

public class n
{
  public final String a;
  public final int b;
  public final int c;
  public final int d;
  
  public n(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
  }
  
  public static n a(Context paramContext, String paramString)
  {
    if (paramString != null) {
      try
      {
        int i = CommonUtils.l(paramContext);
        c.h().a("Fabric", "App icon resource ID is " + i);
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeResource(paramContext.getResources(), i, localOptions);
        paramContext = new n(paramString, i, outWidth, outHeight);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        c.h().e("Fabric", "Failed to load icon", paramContext);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */