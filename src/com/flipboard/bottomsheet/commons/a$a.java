package com.flipboard.bottomsheet.commons;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;

public class a$a
{
  public Drawable a;
  public final String b;
  public final ComponentName c;
  public final ResolveInfo d;
  private AsyncTask<Void, Void, Drawable> e;
  
  a$a(ResolveInfo paramResolveInfo, CharSequence paramCharSequence, ComponentName paramComponentName)
  {
    d = paramResolveInfo;
    b = paramCharSequence.toString();
    c = paramComponentName;
  }
  
  public Intent a(Intent paramIntent)
  {
    paramIntent = new Intent(paramIntent);
    paramIntent.setComponent(c);
    return paramIntent;
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */