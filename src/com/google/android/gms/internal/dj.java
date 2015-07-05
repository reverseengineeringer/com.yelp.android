package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R.string;
import java.util.Map;

@ey
public class dj
{
  private final Context mContext;
  private final gu mo;
  private final Map<String, String> rd;
  
  public dj(gu paramgu, Map<String, String> paramMap)
  {
    mo = paramgu;
    rd = paramMap;
    mContext = paramgu.dI();
  }
  
  String B(String paramString)
  {
    return Uri.parse(paramString).getLastPathSegment();
  }
  
  DownloadManager.Request b(String paramString1, String paramString2)
  {
    paramString1 = new DownloadManager.Request(Uri.parse(paramString1));
    paramString1.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, paramString2);
    if (ll.ig())
    {
      paramString1.allowScanningByMediaScanner();
      paramString1.setNotificationVisibility(1);
      return paramString1;
    }
    paramString1.setShowRunningNotification(true);
    return paramString1;
  }
  
  public void execute()
  {
    if (!new bl(mContext).bq())
    {
      gr.W("Store picture feature is not supported on this device.");
      return;
    }
    if (TextUtils.isEmpty((CharSequence)rd.get("iurl")))
    {
      gr.W("Image url cannot be empty.");
      return;
    }
    String str1 = (String)rd.get("iurl");
    if (!URLUtil.isValidUrl(str1))
    {
      gr.W("Invalid image url:" + str1);
      return;
    }
    String str2 = B(str1);
    if (!gi.N(str2))
    {
      gr.W("Image type not recognized:");
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(mContext);
    localBuilder.setTitle(ga.c(R.string.store_picture_title, "Save image"));
    localBuilder.setMessage(ga.c(R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
    localBuilder.setPositiveButton(ga.c(R.string.accept, "Accept"), new dj.1(this, str1, str2));
    localBuilder.setNegativeButton(ga.c(R.string.decline, "Decline"), new dj.2(this));
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */