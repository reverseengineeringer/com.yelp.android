package android.support.v4.content;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.io.File;

class e
{
  public static Drawable a(Context paramContext, int paramInt)
  {
    return paramContext.getDrawable(paramInt);
  }
  
  public static File a(Context paramContext)
  {
    return paramContext.getNoBackupFilesDir();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */