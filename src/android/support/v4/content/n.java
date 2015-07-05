package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class n
  implements m
{
  public Intent a(ComponentName paramComponentName)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setComponent(paramComponentName);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */