package com.yelp.android.ui.util;

import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.yelp.android.ui.activities.ActivityCreateAccount;
import com.yelp.android.ui.activities.ActivityCreateAccount.Gender;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class j
  extends AsyncTask<Void, Void, a>
{
  protected WeakReference<ActivityCreateAccount> a;
  protected String b;
  protected String c;
  protected int d;
  
  public j(ActivityCreateAccount paramActivityCreateAccount, String paramString1, String paramString2, int paramInt)
  {
    a = new WeakReference(paramActivityCreateAccount);
    b = paramString2;
    c = paramString1;
    d = paramInt;
  }
  
  private a a(String paramString)
    throws JSONException
  {
    return new a(a(paramString, "given_name"), a(paramString, "family_name"), c, a(paramString, "birthday"), a(paramString, "gender"), a(paramString, "picture"));
  }
  
  private String a(InputStream paramInputStream)
    throws IOException
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
      localActivityCreateAccount.runOnUiThread(new j.1(this, localActivityCreateAccount, paramInt));
    }
  }
  
  protected a a(Void... paramVarArgs)
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
        return (a)localObject;
      }
    }
    catch (MalformedURLException paramVarArgs)
    {
      Object localObject;
      HttpURLConnection localHttpURLConnection;
      com.yelp.android.au.a.a(6, "GoogleAuth", paramVarArgs.getMessage());
      com.yelp.android.au.a.a(paramVarArgs);
      for (;;)
      {
        return null;
        if (i != 401) {
          break;
        }
        com.google.android.gms.auth.a.a(paramVarArgs, (String)localObject);
        Log.i("GoogleAuth", "Server auth error: " + a(localHttpURLConnection.getErrorStream()));
      }
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        int i;
        com.yelp.android.au.a.a(6, "GoogleAuth", paramVarArgs.getMessage());
        com.yelp.android.au.a.a(paramVarArgs);
        continue;
        Log.i("GoogleAuth", "Server returned the following error code: " + i, null);
      }
    }
    catch (JSONException paramVarArgs)
    {
      for (;;)
      {
        com.yelp.android.au.a.a(6, "GoogleAuth", paramVarArgs.getMessage());
        com.yelp.android.au.a.a(paramVarArgs);
      }
    }
  }
  
  protected String a()
    throws IOException
  {
    ActivityCreateAccount localActivityCreateAccount = (ActivityCreateAccount)a.get();
    if (localActivityCreateAccount == null) {
      return null;
    }
    try
    {
      String str = com.google.android.gms.auth.a.a(localActivityCreateAccount, c, b);
      return str;
    }
    catch (GooglePlayServicesAvailabilityException localGooglePlayServicesAvailabilityException)
    {
      com.yelp.android.au.a.a(6, "GoogleAuth", "GooglePlayServicesAvailabilityException: " + localGooglePlayServicesAvailabilityException.getMessage());
      com.yelp.android.au.a.a(localGooglePlayServicesAvailabilityException);
      a(2131165972);
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
        com.yelp.android.au.a.a(6, "GoogleAuth", localGoogleAuthException.getMessage());
        com.yelp.android.au.a.a(localGoogleAuthException);
        a(2131165974);
      }
    }
  }
  
  protected void a(a parama)
  {
    ActivityCreateAccount localActivityCreateAccount = (ActivityCreateAccount)a.get();
    if ((localActivityCreateAccount != null) && (parama != null)) {
      localActivityCreateAccount.a(parama);
    }
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    public final String c;
    public Calendar d;
    public ActivityCreateAccount.Gender e;
    public final String f;
    
    public a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
    {
      a = paramString1;
      b = paramString2;
      c = paramString3;
      f = paramString6;
      paramString1 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
      if (paramString4 != null) {}
      try
      {
        d = Calendar.getInstance();
        d.setTime(paramString1.parse(paramString4));
        e = ActivityCreateAccount.Gender.NOT_SPECIFIED;
        if (paramString5 == null)
        {
          e = ActivityCreateAccount.Gender.NOT_SPECIFIED;
          return;
        }
      }
      catch (ParseException paramString1)
      {
        do
        {
          for (;;)
          {
            d = null;
            com.yelp.android.au.a.a(6, "GoogleAuth", "Birthdate format changed. " + paramString1.getMessage());
          }
          if (paramString5.equalsIgnoreCase("male"))
          {
            e = ActivityCreateAccount.Gender.MALE;
            return;
          }
        } while (!paramString5.equalsIgnoreCase("female"));
        e = ActivityCreateAccount.Gender.FEMALE;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */