package com.yelp.android.ui.util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.yelp.android.util.YelpLog;
import java.io.File;

public final class ap
  extends ImageProcessingTask
{
  public ap(File paramFile, Intent paramIntent, al paramal)
  {
    super(paramFile, paramIntent, paramal);
  }
  
  public Bitmap a(Context paramContext)
  {
    if (a != null) {}
    for (Object localObject1 = a.getExtras();; localObject1 = null)
    {
      Object localObject2;
      if (localObject1 != null)
      {
        localObject2 = ((Bundle)localObject1).get("data");
        if (((localObject2 instanceof Bitmap)) && (localObject2 != null)) {
          localObject1 = (Bitmap)localObject2;
        }
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = super.a(paramContext);
        }
        return (Bitmap)localObject2;
        localObject1 = ((Bundle)localObject1).get("output");
        if (((localObject1 instanceof Bitmap)) && (localObject1 != null)) {
          localObject1 = (Bitmap)localObject1;
        } else {
          localObject1 = null;
        }
      }
    }
  }
  
  public ImageInputHelper.ImageSource a()
  {
    return ImageInputHelper.ImageSource.CAMERA;
  }
  
  public String b(Context paramContext)
  {
    paramContext = a(paramContext);
    if ((!c.exists()) && (paramContext != null))
    {
      YelpLog.e(this, "Device is giving us mem bitmap which should not be supported!");
      b(paramContext);
    }
    return c.getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */