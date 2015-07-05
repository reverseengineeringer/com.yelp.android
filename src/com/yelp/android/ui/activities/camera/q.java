package com.yelp.android.ui.activities.camera;

import android.location.Location;
import android.media.ExifInterface;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.EnumSet;

class q
  implements a
{
  private q(TakePhoto paramTakePhoto) {}
  
  public void a(CameraWrangler paramCameraWrangler)
  {
    TakePhoto.e(a).setEnabled(true);
    EnumSet localEnumSet = paramCameraWrangler.e();
    ImageView localImageView = (ImageView)a.findViewById(2131493305);
    localImageView.setImageLevel(paramCameraWrangler.g().ordinal());
    if (localEnumSet.size() > 1) {}
    for (int i = 0;; i = 8)
    {
      localImageView.setVisibility(i);
      a.findViewById(2131493257).setVisibility(0);
      a.findViewById(2131493305).setVisibility(0);
      a.findViewById(2131493304).setVisibility(0);
      return;
    }
  }
  
  public void a(CameraWrangler paramCameraWrangler, File paramFile)
  {
    if (paramFile == null)
    {
      a.setResult(4, a.getIntent());
      a.finish();
      return;
    }
    paramCameraWrangler = a.getAppData().n().c();
    if (paramCameraWrangler != null) {}
    for (;;)
    {
      try
      {
        ExifInterface localExifInterface = new ExifInterface(paramFile.getAbsolutePath());
        double d1 = paramCameraWrangler.getLatitude();
        double d2 = paramCameraWrangler.getLongitude();
        if (d1 <= 0.0D) {
          continue;
        }
        paramCameraWrangler = "N";
        localExifInterface.setAttribute("GPSLatitudeRef", paramCameraWrangler);
        localExifInterface.setAttribute("GPSLatitude", Location.convert(Math.abs(d1), 2));
        if (d1 <= 0.0D) {
          continue;
        }
        paramCameraWrangler = "E";
        localExifInterface.setAttribute("GPSLatitudeRef", paramCameraWrangler);
        localExifInterface.setAttribute("GPSLatitude", Location.convert(Math.abs(d2), 2));
        localExifInterface.saveAttributes();
      }
      catch (IOException paramCameraWrangler)
      {
        Log.e("EXIF", "There was an issue with the Exif Tags ", paramCameraWrangler);
        continue;
      }
      a.setIntent(TakePhoto.a(a.getIntent(), paramFile, ImageInputHelper.ImageSource.CAMERA, false));
      a.startActivityForResult(PreviewPhoto.a(a.getApplicationContext(), paramFile, true, a.getText(2131166463), a.getText(2131166799)), 1040);
      return;
      paramCameraWrangler = "S";
      continue;
      paramCameraWrangler = "W";
    }
  }
  
  public void b(CameraWrangler paramCameraWrangler)
  {
    TakePhoto.e(a).setEnabled(false);
  }
  
  public void c(CameraWrangler paramCameraWrangler)
  {
    a.findViewById(2131493257).setVisibility(8);
    a.findViewById(2131493305).setVisibility(8);
    a.findViewById(2131493304).setVisibility(8);
  }
  
  public void d(CameraWrangler paramCameraWrangler) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */