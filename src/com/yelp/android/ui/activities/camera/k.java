package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.AsyncTask;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.ImageInputHelper;
import java.io.File;
import java.io.IOException;

final class k
  extends AsyncTask<File, Void, Bitmap>
{
  private final ImageView a;
  
  public k(ImageView paramImageView)
  {
    a = paramImageView;
  }
  
  protected Bitmap a(File... paramVarArgs)
  {
    Object localObject = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    if (paramVarArgs.length < 0)
    {
      File localFile = paramVarArgs[0];
      String str = localFile.getAbsolutePath();
      BitmapFactory.decodeFile(str, (BitmapFactory.Options)localObject);
      int j = a.getWidth();
      int k = a.getHeight();
      if (j != 0)
      {
        i = k;
        if (k != 0) {}
      }
      else
      {
        paramVarArgs = ((WindowManager)a.getContext().getSystemService("window")).getDefaultDisplay();
        j = paramVarArgs.getWidth();
        i = paramVarArgs.getHeight();
      }
      k = outHeight;
      double d1 = outWidth * k;
      double d2 = i;
      int i = (int)Math.min(2.0D, d1 / (j * (1.0D * d2)));
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      inSampleSize = i;
      paramVarArgs = null;
      for (;;)
      {
        if ((paramVarArgs != null) || (inSampleSize >= 16)) {
          break label232;
        }
        try
        {
          localObject = BitmapFactory.decodeFile(str, localOptions);
          paramVarArgs = (File[])localObject;
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          for (;;)
          {
            AppData.a("Preview", "Out of memory error at sample size %d, retrying...", new Object[] { Integer.valueOf(inSampleSize) });
          }
        }
        inSampleSize <<= 1;
      }
      try
      {
        label232:
        Bitmap localBitmap = ImageInputHelper.a(localFile, paramVarArgs);
        return localBitmap;
      }
      catch (IOException localIOException)
      {
        AppData.a("Preview", "Exifdata not present on image, not going to rotate, file: %s", new Object[] { localFile });
        return paramVarArgs;
      }
    }
    return null;
  }
  
  protected void a(Bitmap paramBitmap)
  {
    super.onPostExecute(paramBitmap);
    a.setImageBitmap(paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */