package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

@ey
public class fo
  implements fn.a<bt>
{
  public bt b(fn paramfn, JSONObject paramJSONObject)
  {
    Future localFuture = paramfn.a(paramJSONObject, "image", true);
    paramfn = paramfn.a(paramJSONObject, "app_icon", true);
    return new bt(paramJSONObject.getString("headline"), (Drawable)localFuture.get(), paramJSONObject.getString("body"), (Drawable)paramfn.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.optDouble("rating", -1.0D), paramJSONObject.optString("store"), paramJSONObject.optString("price"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */