package android.support.v4.app;

import android.app.Activity;

class c
{
  public static void a(Activity paramActivity, String[] paramArrayOfString, int paramInt)
  {
    if ((paramActivity instanceof a)) {
      ((a)paramActivity).validateRequestPermissionsRequestCode(paramInt);
    }
    paramActivity.requestPermissions(paramArrayOfString, paramInt);
  }
  
  public static boolean a(Activity paramActivity, String paramString)
  {
    return paramActivity.shouldShowRequestPermissionRationale(paramString);
  }
  
  public static abstract interface a
  {
    public abstract void validateRequestPermissionsRequestCode(int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */