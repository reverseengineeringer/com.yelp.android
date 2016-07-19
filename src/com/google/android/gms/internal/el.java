package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.internal.s;
import com.yelp.android.ba.a.e;
import java.util.Map;

@fv
public class el
  extends eo
{
  private final Map<String, String> a;
  private final Context b;
  
  public el(ib paramib, Map<String, String> paramMap)
  {
    super(paramib, "storePicture");
    a = paramMap;
    b = paramib.f();
  }
  
  DownloadManager.Request a(String paramString1, String paramString2)
  {
    paramString1 = new DownloadManager.Request(Uri.parse(paramString1));
    paramString1.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, paramString2);
    s.g().a(paramString1);
    return paramString1;
  }
  
  String a(String paramString)
  {
    return Uri.parse(paramString).getLastPathSegment();
  }
  
  public void a()
  {
    if (b == null)
    {
      b("Activity context is not available");
      return;
    }
    if (!s.e().e(b).c())
    {
      b("Feature is not supported by the device.");
      return;
    }
    final String str1 = (String)a.get("iurl");
    if (TextUtils.isEmpty(str1))
    {
      b("Image url cannot be empty.");
      return;
    }
    if (!URLUtil.isValidUrl(str1))
    {
      b("Invalid image url: " + str1);
      return;
    }
    final String str2 = a(str1);
    if (!s.e().c(str2))
    {
      b("Image type not recognized: " + str2);
      return;
    }
    AlertDialog.Builder localBuilder = s.e().d(b);
    localBuilder.setTitle(s.h().a(a.e.store_picture_title, "Save image"));
    localBuilder.setMessage(s.h().a(a.e.store_picture_message, "Allow Ad to store image in Picture gallery?"));
    localBuilder.setPositiveButton(s.h().a(a.e.accept, "Accept"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = (DownloadManager)el.a(el.this).getSystemService("download");
        try
        {
          paramAnonymousDialogInterface.enqueue(a(str1, str2));
          return;
        }
        catch (IllegalStateException paramAnonymousDialogInterface)
        {
          b("Could not store picture.");
        }
      }
    });
    localBuilder.setNegativeButton(s.h().a(a.e.decline, "Decline"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        b("User canceled the download.");
      }
    });
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */