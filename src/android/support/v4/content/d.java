package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import java.io.File;

public class d
{
  public static int a(Context paramContext, String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("permission is null");
    }
    return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid());
  }
  
  public static final Drawable a(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return e.a(paramContext, paramInt);
    }
    return paramContext.getResources().getDrawable(paramInt);
  }
  
  /* Error */
  private static File a(File paramFile)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_2
    //   5: aload_0
    //   6: invokevirtual 61	java/io/File:exists	()Z
    //   9: ifne +23 -> 32
    //   12: aload_0
    //   13: astore_2
    //   14: aload_0
    //   15: invokevirtual 64	java/io/File:mkdirs	()Z
    //   18: ifne +14 -> 32
    //   21: aload_0
    //   22: invokevirtual 61	java/io/File:exists	()Z
    //   25: istore_1
    //   26: iload_1
    //   27: ifeq +10 -> 37
    //   30: aload_0
    //   31: astore_2
    //   32: ldc 2
    //   34: monitorexit
    //   35: aload_2
    //   36: areturn
    //   37: ldc 66
    //   39: new 68	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 69	java/lang/StringBuilder:<init>	()V
    //   46: ldc 71
    //   48: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_0
    //   52: invokevirtual 79	java/io/File:getPath	()Ljava/lang/String;
    //   55: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   61: invokestatic 88	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   64: pop
    //   65: aconst_null
    //   66: astore_2
    //   67: goto -35 -> 32
    //   70: astore_0
    //   71: ldc 2
    //   73: monitorexit
    //   74: aload_0
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	paramFile	File
    //   25	2	1	bool	boolean
    //   4	63	2	localFile	File
    // Exception table:
    //   from	to	target	type
    //   5	12	70	finally
    //   14	26	70	finally
    //   37	65	70	finally
  }
  
  public static boolean a(Context paramContext, Intent[] paramArrayOfIntent, Bundle paramBundle)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 16)
    {
      h.a(paramContext, paramArrayOfIntent, paramBundle);
      return true;
    }
    if (i >= 11)
    {
      g.a(paramContext, paramArrayOfIntent);
      return true;
    }
    return false;
  }
  
  public static final int b(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return f.a(paramContext, paramInt);
    }
    return paramContext.getResources().getColor(paramInt);
  }
  
  public final File a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return e.a(paramContext);
    }
    return a(new File(getApplicationInfodataDir, "no_backup"));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */