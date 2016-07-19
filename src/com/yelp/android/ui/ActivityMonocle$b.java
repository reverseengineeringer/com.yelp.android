package com.yelp.android.ui;

import android.hardware.Camera;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.ui.util.as;

class ActivityMonocle$b
  extends AsyncTask<Void, Void, Camera>
{
  private ActivityMonocle$b(ActivityMonocle paramActivityMonocle) {}
  
  protected Camera a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = Camera.open();
      return paramVarArgs;
    }
    catch (RuntimeException paramVarArgs)
    {
      Log.e("Monocle", "runtime exception while trying to normally acquire camera", paramVarArgs);
    }
    return null;
  }
  
  protected void a(Camera paramCamera)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder().append("We successfully acquired a camera? ");
    boolean bool;
    if (paramCamera != null)
    {
      bool = true;
      Log.i("Monocle", bool);
      if (paramCamera != null) {
        break label95;
      }
      i = 1;
    }
    for (;;)
    {
      if (i != 0)
      {
        if (ActivityMonocle.c(a) != null)
        {
          ActivityMonocle.c(a).release();
          ActivityMonocle.a(a, null);
        }
        as.a(2131166163, 1);
        a.finish();
      }
      return;
      bool = false;
      break;
      label95:
      ActivityMonocle.a(a, paramCamera);
      if (!ActivityMonocle.b(a).a(paramCamera)) {
        i = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.ActivityMonocle.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */