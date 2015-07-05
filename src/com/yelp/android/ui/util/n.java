package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.util.Log;
import com.crashlytics.android.d;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.yelp.android.ui.activities.ActivityCreateAccount;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

public class n
  extends AsyncTask<Void, Void, p>
{
  protected WeakReference<ActivityCreateAccount> a;
  protected String b;
  protected String c;
  protected int d;
  
  public n(ActivityCreateAccount paramActivityCreateAccount, String paramString1, String paramString2, int paramInt)
  {
    a = new WeakReference(paramActivityCreateAccount);
    b = paramString2;
    c = paramString1;
    d = paramInt;
  }
  
  private p a(String paramString)
  {
    return new p(a(paramString, "given_name"), a(paramString, "family_name"), c, a(paramString, "birthday"), a(paramString, "gender"), a(paramString, "picture"));
  }
  
  private String a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['ࠀ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i < 0) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return new String(localByteArrayOutputStream.toByteArray(), "UTF-8");
  }
  
  private String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new JSONObject(paramString1).getString(paramString2);
      return paramString1;
    }
    catch (JSONException paramString1) {}
    return null;
  }
  
  private void a(int paramInt)
  {
    ActivityCreateAccount localActivityCreateAccount = (ActivityCreateAccount)a.get();
    if (localActivityCreateAccount != null) {
      localActivityCreateAccount.runOnUiThread(new o(this, localActivityCreateAccount, paramInt));
    }
  }
  
  protected p a(Void... paramVarArgs)
  {
    paramVarArgs = (ActivityCreateAccount)a.get();
    if (paramVarArgs == null) {
      return null;
    }
    try
    {
      localObject = a();
      localHttpURLConnection = (HttpURLConnection)new URL("https://www.googleapis.com/oauth2/v1/userinfo?access_token=" + (String)localObject).openConnection();
      i = localHttpURLConnection.getResponseCode();
      if (i == 200)
      {
        paramVarArgs = localHttpURLConnection.getInputStream();
        localObject = a(a(paramVarArgs));
        paramVarArgs.close();
        return (p)localObject;
      }
    }
    catch (MalformedURLException paramVarArgs)
    {
      Object localObject;
      HttpURLConnection localHttpURLConnection;
      d.a(6, "GoogleAuth", paramVarArgs.getMessage());
      d.a(paramVarArgs);
      for (;;)
      {
        return null;
        if (i != 401) {
          break;
        }
        GoogleAuthUtil.invalidateToken(paramVarArgs, (String)localObject);
        Log.i("GoogleAuth", "Server auth error: " + a(localHttpURLConnection.getErrorStream()));
      }
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        int i;
        d.a(6, "GoogleAuth", paramVarArgs.getMessage());
        d.a(paramVarArgs);
        continue;
        Log.i("GoogleAuth", "Server returned the following error code: " + i, null);
      }
    }
    catch (JSONException paramVarArgs)
    {
      for (;;)
      {
        d.a(6, "GoogleAuth", paramVarArgs.getMessage());
        d.a(paramVarArgs);
      }
    }
  }
  
  protected String a()
  {
    ActivityCreateAccount localActivityCreateAccount = (ActivityCreateAccount)a.get();
    if (localActivityCreateAccount == null) {
      return null;
    }
    try
    {
      String str = GoogleAuthUtil.getToken(localActivityCreateAccount, c, b);
      return str;
    }
    catch (GooglePlayServicesAvailabilityException localGooglePlayServicesAvailabilityException)
    {
      d.a(6, "GoogleAuth", "GooglePlayServicesAvailabilityException: " + localGooglePlayServicesAvailabilityException.getMessage());
      d.a(localGooglePlayServicesAvailabilityException);
      a(2131165899);
      return null;
    }
    catch (UserRecoverableAuthException localUserRecoverableAuthException)
    {
      for (;;)
      {
        localGooglePlayServicesAvailabilityException.startActivityForResult(localUserRecoverableAuthException.getIntent(), d);
        cancel(true);
      }
    }
    catch (GoogleAuthException localGoogleAuthException)
    {
      for (;;)
      {
        d.a(6, "GoogleAuth", localGoogleAuthException.getMessage());
        d.a(localGoogleAuthException);
        a(2131165901);
      }
    }
  }
  
  protected void a(p paramp)
  {
    ActivityCreateAccount localActivityCreateAccount = (ActivityCreateAccount)a.get();
    if ((localActivityCreateAccount != null) && (paramp != null)) {
      localActivityCreateAccount.a(paramp);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */