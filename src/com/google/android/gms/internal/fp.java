package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

@ey
public class fp
  implements fn.a<bu>
{
  public bu c(fn paramfn, JSONObject paramJSONObject)
  {
    Future localFuture = paramfn.a(paramJSONObject, "image", true);
    paramfn = paramfn.a(paramJSONObject, "secondary_image", false);
    return new bu(paramJSONObject.getString("headline"), (Drawable)localFuture.get(), paramJSONObject.getString("body"), (Drawable)paramfn.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.getString("attribution"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */