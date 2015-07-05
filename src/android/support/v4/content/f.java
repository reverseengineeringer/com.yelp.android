package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import java.io.File;

class f
{
  public static File a(Context paramContext)
  {
    return paramContext.getObbDir();
  }
  
  static void a(Context paramContext, Intent[] paramArrayOfIntent)
  {
    paramContext.startActivities(paramArrayOfIntent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */