package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;

public class PreviewActivity
  extends Activity
{
  private void d(String paramString1, String paramString2, String paramString3)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setTitle(paramString1);
    localAlertDialog.setMessage(paramString2);
    localAlertDialog.setButton(-1, paramString3, new PreviewActivity.1(this));
    localAlertDialog.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      bh.U("Preview activity");
      paramBundle = getIntent().getData();
      if (!TagManager.getInstance(this).i(paramBundle))
      {
        paramBundle = "Cannot preview the app with the uri: " + paramBundle + ". Launching current version instead.";
        bh.W(paramBundle);
        d("Preview failure", paramBundle, "Continue");
      }
      paramBundle = getPackageManager().getLaunchIntentForPackage(getPackageName());
      if (paramBundle != null)
      {
        bh.U("Invoke the launch activity for package name: " + getPackageName());
        startActivity(paramBundle);
        return;
      }
      bh.U("No launch activity found for package name: " + getPackageName());
      return;
    }
    catch (Exception paramBundle)
    {
      bh.T("Calling preview threw an exception: " + paramBundle.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.PreviewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */