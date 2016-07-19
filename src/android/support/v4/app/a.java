package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

public class a
  extends android.support.v4.content.d
{
  private static b.a a(ak paramak)
  {
    b localb = null;
    if (paramak != null) {
      localb = new b(paramak);
    }
    return localb;
  }
  
  public static void a(Activity paramActivity, ak paramak)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      b.a(paramActivity, a(paramak));
    }
  }
  
  public static void a(final Activity paramActivity, String[] paramArrayOfString, final int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      c.a(paramActivity, paramArrayOfString, paramInt);
    }
    while (!(paramActivity instanceof a)) {
      return;
    }
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        int[] arrayOfInt = new int[a.length];
        PackageManager localPackageManager = paramActivity.getPackageManager();
        String str = paramActivity.getPackageName();
        int j = a.length;
        int i = 0;
        while (i < j)
        {
          arrayOfInt[i] = localPackageManager.checkPermission(a[i], str);
          i += 1;
        }
        ((a.a)paramActivity).onRequestPermissionsResult(paramInt, a, arrayOfInt);
      }
    });
  }
  
  public static boolean a(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      d.a(paramActivity);
      return true;
    }
    return false;
  }
  
  public static boolean a(Activity paramActivity, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return c.a(paramActivity, paramString);
    }
    return false;
  }
  
  public static void b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      e.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void b(Activity paramActivity, ak paramak)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      b.b(paramActivity, a(paramak));
    }
  }
  
  public static void c(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b.a(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  public static void d(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      b.b(paramActivity);
    }
  }
  
  public static void e(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      b.c(paramActivity);
    }
  }
  
  public static abstract interface a
  {
    public abstract void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt);
  }
  
  private static class b
    extends b.a
  {
    private ak a;
    
    public b(ak paramak)
    {
      a = paramak;
    }
    
    public Parcelable a(View paramView, Matrix paramMatrix, RectF paramRectF)
    {
      return a.a(paramView, paramMatrix, paramRectF);
    }
    
    public View a(Context paramContext, Parcelable paramParcelable)
    {
      return a.a(paramContext, paramParcelable);
    }
    
    public void a(List<View> paramList)
    {
      a.a(paramList);
    }
    
    public void a(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      a.a(paramList, paramList1, paramList2);
    }
    
    public void a(List<String> paramList, Map<String, View> paramMap)
    {
      a.a(paramList, paramMap);
    }
    
    public void b(List<String> paramList, List<View> paramList1, List<View> paramList2)
    {
      a.b(paramList, paramList1, paramList2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */