package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.b;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class u
{
  private static final String[] a = { "supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories" };
  private static Map<String, b> b = new ConcurrentHashMap();
  private static AtomicBoolean c = new AtomicBoolean(false);
  
  public static int a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    try
    {
      localBufferedInputStream = new BufferedInputStream(paramInputStream);
      byte[] arrayOfByte;
      int j;
      if (localBufferedInputStream == null) {
        break label81;
      }
    }
    finally
    {
      try
      {
        arrayOfByte = new byte[' '];
        for (;;)
        {
          j = localBufferedInputStream.read(arrayOfByte);
          if (j == -1) {
            break;
          }
          paramOutputStream.write(arrayOfByte, 0, j);
          i += j;
        }
        if (localBufferedInputStream != null) {
          localBufferedInputStream.close();
        }
        if (paramInputStream != null) {
          paramInputStream.close();
        }
        return i;
      }
      finally
      {
        BufferedInputStream localBufferedInputStream;
        for (;;) {}
      }
      paramOutputStream = finally;
      localBufferedInputStream = null;
    }
    localBufferedInputStream.close();
    label81:
    if (paramInputStream != null) {
      paramInputStream.close();
    }
    throw paramOutputStream;
  }
  
  public static Uri a(String paramString1, String paramString2, Bundle paramBundle)
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.authority(paramString1);
    localBuilder.path(paramString2);
    if (paramBundle != null)
    {
      paramString1 = paramBundle.keySet().iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (String)paramString1.next();
        Object localObject = paramBundle.get(paramString2);
        if ((localObject instanceof String)) {
          localBuilder.appendQueryParameter(paramString2, (String)localObject);
        }
      }
    }
    return localBuilder.build();
  }
  
  public static a a(String paramString1, String paramString2, String paramString3)
  {
    if ((a(paramString2)) || (a(paramString3))) {
      return null;
    }
    paramString1 = (b)b.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Map)paramString1.d().get(paramString2);
      if (paramString1 != null) {
        return (a)paramString1.get(paramString3);
      }
    }
    return null;
  }
  
  public static b a(String paramString, boolean paramBoolean)
  {
    if ((!paramBoolean) && (b.containsKey(paramString))) {
      return (b)b.get(paramString);
    }
    JSONObject localJSONObject = g(paramString);
    if (localJSONObject == null) {
      return null;
    }
    return b(paramString, localJSONObject);
  }
  
  public static Object a(Object paramObject, Method paramMethod, Object... paramVarArgs)
  {
    try
    {
      paramObject = paramMethod.invoke(paramObject, paramVarArgs);
      return paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      return null;
    }
    catch (InvocationTargetException paramObject) {}
    return null;
  }
  
  public static Object a(JSONObject paramJSONObject, String paramString1, String paramString2)
    throws JSONException
  {
    paramJSONObject = paramJSONObject.opt(paramString1);
    if ((paramJSONObject != null) && ((paramJSONObject instanceof String))) {
      paramJSONObject = new JSONTokener((String)paramJSONObject).nextValue();
    }
    for (;;)
    {
      if ((paramJSONObject != null) && (!(paramJSONObject instanceof JSONObject)) && (!(paramJSONObject instanceof JSONArray)))
      {
        if (paramString2 != null)
        {
          paramString1 = new JSONObject();
          paramString1.putOpt(paramString2, paramJSONObject);
          return paramString1;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
      }
      return paramJSONObject;
    }
  }
  
  public static String a(Context paramContext)
  {
    v.a(paramContext, "context");
    com.facebook.g.a(paramContext);
    return com.facebook.g.h();
  }
  
  public static String a(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return paramUri.toString();
  }
  
  /* Error */
  public static String a(InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 60	java/io/BufferedInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 63	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   10: astore_0
    //   11: new 219	java/io/InputStreamReader
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 220	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   19: astore_2
    //   20: new 222	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   27: astore_3
    //   28: sipush 2048
    //   31: newarray <illegal type>
    //   33: astore 4
    //   35: aload_2
    //   36: aload 4
    //   38: invokevirtual 226	java/io/InputStreamReader:read	([C)I
    //   41: istore_1
    //   42: iload_1
    //   43: iconst_m1
    //   44: if_icmpeq +32 -> 76
    //   47: aload_3
    //   48: aload 4
    //   50: iconst_0
    //   51: iload_1
    //   52: invokevirtual 230	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: goto -21 -> 35
    //   59: astore 4
    //   61: aload_0
    //   62: astore_3
    //   63: aload 4
    //   65: astore_0
    //   66: aload_3
    //   67: invokestatic 233	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   70: aload_2
    //   71: invokestatic 233	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   74: aload_0
    //   75: athrow
    //   76: aload_3
    //   77: invokevirtual 234	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: astore_3
    //   81: aload_0
    //   82: invokestatic 233	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   85: aload_2
    //   86: invokestatic 233	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   89: aload_3
    //   90: areturn
    //   91: astore_0
    //   92: aconst_null
    //   93: astore_2
    //   94: goto -28 -> 66
    //   97: astore 4
    //   99: aconst_null
    //   100: astore_2
    //   101: aload_0
    //   102: astore_3
    //   103: aload 4
    //   105: astore_0
    //   106: goto -40 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	paramInputStream	InputStream
    //   41	11	1	i	int
    //   19	82	2	localInputStreamReader	java.io.InputStreamReader
    //   1	102	3	localObject1	Object
    //   33	16	4	arrayOfChar	char[]
    //   59	5	4	localObject2	Object
    //   97	7	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	35	59	finally
    //   35	42	59	finally
    //   47	56	59	finally
    //   76	81	59	finally
    //   2	11	91	finally
    //   11	20	97	finally
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if (a(paramString1)) {
      return paramString2;
    }
    return paramString1;
  }
  
  private static String a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      return a(paramString, paramArrayOfByte);
    }
    catch (NoSuchAlgorithmException paramString) {}
    return null;
  }
  
  private static String a(MessageDigest paramMessageDigest, byte[] paramArrayOfByte)
  {
    paramMessageDigest.update(paramArrayOfByte);
    paramMessageDigest = paramMessageDigest.digest();
    paramArrayOfByte = new StringBuilder();
    int j = paramMessageDigest.length;
    int i = 0;
    while (i < j)
    {
      int k = paramMessageDigest[i];
      paramArrayOfByte.append(Integer.toHexString(k >> 4 & 0xF));
      paramArrayOfByte.append(Integer.toHexString(k >> 0 & 0xF));
      i += 1;
    }
    return paramArrayOfByte.toString();
  }
  
  public static String a(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optString(paramString, "");
    }
    return "";
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    return a("SHA-1", paramArrayOfByte);
  }
  
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramVarArgs);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public static Method a(String paramString1, String paramString2, Class<?>... paramVarArgs)
  {
    try
    {
      paramString1 = a(Class.forName(paramString1), paramString2, paramVarArgs);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1) {}
    return null;
  }
  
  public static <T> Collection<T> a(T... paramVarArgs)
  {
    return Collections.unmodifiableCollection(Arrays.asList(paramVarArgs));
  }
  
  public static Date a(Bundle paramBundle, String paramString, Date paramDate)
  {
    if (paramBundle == null) {
      return null;
    }
    paramBundle = paramBundle.get(paramString);
    long l;
    if ((paramBundle instanceof Long)) {
      l = ((Long)paramBundle).longValue();
    }
    for (;;)
    {
      if (l != 0L) {
        break label67;
      }
      return new Date(Long.MAX_VALUE);
      if ((paramBundle instanceof String)) {
        try
        {
          l = Long.parseLong((String)paramBundle);
        }
        catch (NumberFormatException paramBundle)
        {
          return null;
        }
      }
    }
    return null;
    label67:
    return new Date(l * 1000L + paramDate.getTime());
  }
  
  public static <T, K> List<K> a(List<T> paramList, d<T, K> paramd)
  {
    if (paramList == null) {}
    ArrayList localArrayList;
    do
    {
      return null;
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = paramd.a(paramList.next());
        if (localObject != null) {
          localArrayList.add(localObject);
        }
      }
    } while (localArrayList.size() == 0);
    return localArrayList;
  }
  
  public static List<String> a(JSONArray paramJSONArray)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add(paramJSONArray.getString(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static Map<String, String> a(Parcel paramParcel)
  {
    int j = paramParcel.readInt();
    Object localObject;
    if (j < 0)
    {
      localObject = null;
      return (Map<String, String>)localObject;
    }
    HashMap localHashMap = new HashMap();
    int i = 0;
    for (;;)
    {
      localObject = localHashMap;
      if (i >= j) {
        break;
      }
      localHashMap.put(paramParcel.readString(), paramParcel.readString());
      i += 1;
    }
  }
  
  private static Map<String, Map<String, a>> a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    if (paramJSONObject != null)
    {
      JSONArray localJSONArray = paramJSONObject.optJSONArray("data");
      if (localJSONArray != null)
      {
        int i = 0;
        if (i < localJSONArray.length())
        {
          a locala = a.a(localJSONArray.optJSONObject(i));
          if (locala == null) {}
          for (;;)
          {
            i += 1;
            break;
            String str = locala.a();
            Map localMap = (Map)localHashMap.get(str);
            paramJSONObject = localMap;
            if (localMap == null)
            {
              paramJSONObject = new HashMap();
              localHashMap.put(str, paramJSONObject);
            }
            paramJSONObject.put(locala.b(), locala);
          }
        }
      }
    }
    return localHashMap;
  }
  
  public static void a(final Context paramContext, String paramString)
  {
    boolean bool = c.compareAndSet(false, true);
    if ((a(paramString)) || (b.containsKey(paramString)) || (!bool)) {}
    for (;;)
    {
      return;
      final String str = String.format("com.facebook.internal.APP_SETTINGS.%s", new Object[] { paramString });
      com.facebook.g.d().execute(new Runnable()
      {
        public void run()
        {
          JSONObject localJSONObject = u.f(a);
          if (localJSONObject != null)
          {
            u.a(a, localJSONObject);
            paramContext.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(str, localJSONObject.toString()).apply();
          }
          u.a().set(false);
        }
      });
      paramContext = paramContext.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(str, null);
      if (a(paramContext)) {
        continue;
      }
      try
      {
        paramContext = new JSONObject(paramContext);
        if (paramContext == null) {
          continue;
        }
        b(paramString, paramContext);
        return;
      }
      catch (JSONException paramContext)
      {
        for (;;)
        {
          a("FacebookSDK", paramContext);
          paramContext = null;
        }
      }
    }
  }
  
  public static void a(Bundle paramBundle, String paramString, Uri paramUri)
  {
    if (paramUri != null) {
      a(paramBundle, paramString, paramUri.toString());
    }
  }
  
  public static void a(Bundle paramBundle, String paramString1, String paramString2)
  {
    if (!a(paramString2)) {
      paramBundle.putString(paramString1, paramString2);
    }
  }
  
  public static void a(Parcel paramParcel, Map<String, String> paramMap)
  {
    if (paramMap == null) {
      paramParcel.writeInt(-1);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        paramParcel.writeString((String)localEntry.getKey());
        paramParcel.writeString((String)localEntry.getValue());
      }
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(File paramFile)
  {
    if (!paramFile.exists()) {
      return;
    }
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        a(arrayOfFile[i]);
        i += 1;
      }
    }
    paramFile.delete();
  }
  
  public static void a(final String paramString, c paramc)
  {
    JSONObject localJSONObject = r.a(paramString);
    if (localJSONObject != null)
    {
      paramc.a(localJSONObject);
      return;
    }
    paramc = new GraphRequest.b()
    {
      public void a(GraphResponse paramAnonymousGraphResponse)
      {
        if (paramAnonymousGraphResponse.a() != null)
        {
          a.a(paramAnonymousGraphResponse.a().f());
          return;
        }
        r.a(paramString, paramAnonymousGraphResponse.b());
        a.a(paramAnonymousGraphResponse.b());
      }
    };
    paramString = h(paramString);
    paramString.a(paramc);
    paramString.h();
  }
  
  public static void a(String paramString, Exception paramException)
  {
    if ((com.facebook.g.b()) && (paramString != null) && (paramException != null)) {
      Log.d(paramString, paramException.getClass().getSimpleName() + ": " + paramException.getMessage());
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((com.facebook.g.b()) && (!a(paramString1))) {
      Log.d(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void a(URLConnection paramURLConnection)
  {
    if ((paramURLConnection instanceof HttpURLConnection)) {
      ((HttpURLConnection)paramURLConnection).disconnect();
    }
  }
  
  public static void a(JSONObject paramJSONObject, Context paramContext)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put("a1");
    String str2 = paramContext.getPackageName();
    int j = -1;
    str1 = "";
    int i = j;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(str2, 0);
      i = j;
      j = versionCode;
      i = j;
      paramContext = versionName;
      i = j;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = str1;
      }
    }
    localJSONArray.put(str2);
    localJSONArray.put(i);
    localJSONArray.put(paramContext);
    paramJSONObject.put("extinfo", localJSONArray.toString());
  }
  
  public static void a(JSONObject paramJSONObject, b paramb, String paramString, boolean paramBoolean)
    throws JSONException
  {
    boolean bool2 = true;
    if ((paramb != null) && (paramb.a() != null)) {
      paramJSONObject.put("attribution", paramb.a());
    }
    boolean bool1;
    if ((paramb != null) && (paramb.b() != null))
    {
      paramJSONObject.put("advertiser_id", paramb.b());
      if (!paramb.c())
      {
        bool1 = true;
        paramJSONObject.put("advertiser_tracking_enabled", bool1);
      }
    }
    else
    {
      paramJSONObject.put("anon_id", paramString);
      if (paramBoolean) {
        break label101;
      }
    }
    label101:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      paramJSONObject.put("application_tracking_enabled", paramBoolean);
      return;
      bool1 = false;
      break;
    }
  }
  
  public static boolean a(AccessToken paramAccessToken)
  {
    if (paramAccessToken != null) {
      return paramAccessToken.equals(AccessToken.a());
    }
    return false;
  }
  
  public static <T> boolean a(T paramT1, T paramT2)
  {
    if (paramT1 == null) {
      return paramT2 == null;
    }
    return paramT1.equals(paramT2);
  }
  
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static <T> boolean a(Collection<T> paramCollection)
  {
    return (paramCollection == null) || (paramCollection.size() == 0);
  }
  
  private static b b(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.optJSONArray("android_sdk_error_categories");
    if (localObject == null) {}
    for (localObject = g.a();; localObject = g.a((JSONArray)localObject))
    {
      paramJSONObject = new b(paramJSONObject.optBoolean("supports_implicit_sdk_logging", false), paramJSONObject.optString("gdpv4_nux_content", ""), paramJSONObject.optBoolean("gdpv4_nux_enabled", false), a(paramJSONObject.optJSONObject("android_dialog_configs")), (g)localObject, null);
      b.put(paramString, paramJSONObject);
      return paramJSONObject;
    }
  }
  
  public static String b(String paramString)
  {
    return c("MD5", paramString);
  }
  
  public static <T> List<T> b(T... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      T ? = paramVarArgs[i];
      if (? != null) {
        localArrayList.add(?);
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static JSONObject b(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optJSONObject(paramString);
    }
    return null;
  }
  
  public static void b(Context paramContext)
  {
    b(paramContext, "facebook.com");
    b(paramContext, ".facebook.com");
    b(paramContext, "https://facebook.com");
    b(paramContext, "https://.facebook.com");
  }
  
  private static void b(Context paramContext, String paramString)
  {
    CookieSyncManager.createInstance(paramContext).sync();
    paramContext = CookieManager.getInstance();
    Object localObject = paramContext.getCookie(paramString);
    if (localObject == null) {
      return;
    }
    localObject = ((String)localObject).split(";");
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = localObject[i].split("=");
      if (arrayOfString.length > 0) {
        paramContext.setCookie(paramString, arrayOfString[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
      }
      i += 1;
    }
    paramContext.removeExpiredCookie();
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if ((com.facebook.g.b()) && (paramString1 != null) && (paramString2 != null)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static boolean b(Uri paramUri)
  {
    return (paramUri != null) && (("http".equalsIgnoreCase(paramUri.getScheme())) || ("https".equalsIgnoreCase(paramUri.getScheme())));
  }
  
  public static long c(Uri paramUri)
  {
    try
    {
      paramUri = com.facebook.g.f().getContentResolver().query(paramUri, null, null, null, null);
      int i;
      long l;
      if (paramUri == null) {
        break label66;
      }
    }
    finally
    {
      try
      {
        i = paramUri.getColumnIndex("_size");
        paramUri.moveToFirst();
        l = paramUri.getLong(i);
        if (paramUri != null) {
          paramUri.close();
        }
        return l;
      }
      finally {}
      localObject1 = finally;
      paramUri = null;
    }
    paramUri.close();
    label66:
    throw ((Throwable)localObject1);
  }
  
  public static Bundle c(String paramString)
  {
    Bundle localBundle = new Bundle();
    int j;
    int i;
    if (!a(paramString))
    {
      paramString = paramString.split("&");
      j = paramString.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        try
        {
          if (arrayOfString.length == 2) {
            localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), URLDecoder.decode(arrayOfString[1], "UTF-8"));
          } else if (arrayOfString.length == 1) {
            localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), "");
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          a("FacebookSDK", localUnsupportedEncodingException);
        }
      }
      return localBundle;
      i += 1;
    }
  }
  
  public static String c(Context paramContext)
  {
    if (paramContext == null) {
      return "null";
    }
    if (paramContext == paramContext.getApplicationContext()) {
      return "unknown";
    }
    return paramContext.getClass().getSimpleName();
  }
  
  private static String c(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2.getBytes());
  }
  
  public static JSONArray c(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject != null) {
      return paramJSONObject.optJSONArray(paramString);
    }
    return null;
  }
  
  public static b d(String paramString)
  {
    if (paramString != null) {
      return (b)b.get(paramString);
    }
    return null;
  }
  
  public static JSONObject e(String paramString)
  {
    JSONObject localJSONObject = r.a(paramString);
    if (localJSONObject != null) {
      return localJSONObject;
    }
    paramString = h(paramString).g();
    if (paramString.a() != null) {
      return null;
    }
    return paramString.b();
  }
  
  private static JSONObject g(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", TextUtils.join(",", a));
    paramString = GraphRequest.a(null, paramString, null);
    paramString.a(true);
    paramString.a(localBundle);
    return paramString.g().b();
  }
  
  private static GraphRequest h(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
    localBundle.putString("access_token", paramString);
    return new GraphRequest(null, "me", localBundle, HttpMethod.GET, null);
  }
  
  public static class a
  {
    private String a;
    private String b;
    private Uri c;
    private int[] d;
    
    private a(String paramString1, String paramString2, Uri paramUri, int[] paramArrayOfInt)
    {
      a = paramString1;
      b = paramString2;
      c = paramUri;
      d = paramArrayOfInt;
    }
    
    private static int[] a(JSONArray paramJSONArray)
    {
      int[] arrayOfInt = null;
      if (paramJSONArray != null)
      {
        int m = paramJSONArray.length();
        arrayOfInt = new int[m];
        int j = 0;
        for (;;)
        {
          if (j < m)
          {
            int k = paramJSONArray.optInt(j, -1);
            int i = k;
            String str;
            if (k == -1)
            {
              str = paramJSONArray.optString(j);
              i = k;
              if (u.a(str)) {}
            }
            try
            {
              i = Integer.parseInt(str);
              arrayOfInt[j] = i;
              j += 1;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              for (;;)
              {
                u.a("FacebookSDK", localNumberFormatException);
                i = -1;
              }
            }
          }
        }
      }
      return arrayOfInt;
    }
    
    private static a b(JSONObject paramJSONObject)
    {
      Uri localUri = null;
      String str1 = paramJSONObject.optString("name");
      if (u.a(str1)) {}
      Object localObject;
      do
      {
        do
        {
          return null;
          localObject = str1.split("\\|");
        } while (localObject.length != 2);
        str1 = localObject[0];
        localObject = localObject[1];
      } while ((u.a(str1)) || (u.a((String)localObject)));
      String str2 = paramJSONObject.optString("url");
      if (!u.a(str2)) {
        localUri = Uri.parse(str2);
      }
      return new a(str1, (String)localObject, localUri, a(paramJSONObject.optJSONArray("versions")));
    }
    
    public String a()
    {
      return a;
    }
    
    public String b()
    {
      return b;
    }
    
    public Uri c()
    {
      return c;
    }
    
    public int[] d()
    {
      return d;
    }
  }
  
  public static class b
  {
    private boolean a;
    private String b;
    private boolean c;
    private Map<String, Map<String, u.a>> d;
    private g e;
    
    private b(boolean paramBoolean1, String paramString, boolean paramBoolean2, Map<String, Map<String, u.a>> paramMap, g paramg)
    {
      a = paramBoolean1;
      b = paramString;
      c = paramBoolean2;
      d = paramMap;
      e = paramg;
    }
    
    public boolean a()
    {
      return a;
    }
    
    public String b()
    {
      return b;
    }
    
    public boolean c()
    {
      return c;
    }
    
    public Map<String, Map<String, u.a>> d()
    {
      return d;
    }
    
    public g e()
    {
      return e;
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(FacebookException paramFacebookException);
    
    public abstract void a(JSONObject paramJSONObject);
  }
  
  public static abstract interface d<T, K>
  {
    public abstract K a(T paramT);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */