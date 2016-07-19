package com.adjust.sdk;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream.GetField;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
  public static final DecimalFormat SecondsDisplayFormat = new DecimalFormat("0.0");
  private static SimpleDateFormat dateFormat;
  private static final String fieldReadErrorMessage = "Unable to read '%s' field in migration device with message (%s)";
  
  public static boolean checkPermission(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public static String convertToHex(byte[] paramArrayOfByte)
  {
    BigInteger localBigInteger = new BigInteger(1, paramArrayOfByte);
    paramArrayOfByte = "%0" + (paramArrayOfByte.length << 1) + "x";
    return String.format(Locale.US, paramArrayOfByte, new Object[] { localBigInteger });
  }
  
  public static AdjustFactory.URLGetConnection createGETHttpsURLConnection(String paramString1, String paramString2)
    throws IOException
  {
    paramString1 = AdjustFactory.getHttpsURLGetConnection(new URL(paramString1));
    HttpsURLConnection localHttpsURLConnection = httpsURLConnection;
    setDefaultHttpsUrlConnectionProperties(localHttpsURLConnection, paramString2);
    localHttpsURLConnection.setRequestMethod("GET");
    return paramString1;
  }
  
  public static HttpsURLConnection createPOSTHttpsURLConnection(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt)
    throws IOException
  {
    paramString1 = AdjustFactory.getHttpsURLConnection(new URL(paramString1));
    setDefaultHttpsUrlConnectionProperties(paramString1, paramString2);
    paramString1.setRequestMethod("POST");
    paramString1.setUseCaches(false);
    paramString1.setDoInput(true);
    paramString1.setDoOutput(true);
    paramString2 = new DataOutputStream(paramString1.getOutputStream());
    paramString2.writeBytes(getPostDataString(paramMap, paramInt));
    paramString2.flush();
    paramString2.close();
    return paramString1;
  }
  
  protected static String createUuid()
  {
    return UUID.randomUUID().toString();
  }
  
  public static String dateFormat(long paramLong)
  {
    if (dateFormat == null) {
      dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z", Locale.US);
    }
    return dateFormat.format(Long.valueOf(paramLong));
  }
  
  public static boolean equalBoolean(Boolean paramBoolean1, Boolean paramBoolean2)
  {
    return equalObject(paramBoolean1, paramBoolean2);
  }
  
  public static boolean equalEnum(Enum paramEnum1, Enum paramEnum2)
  {
    return equalObject(paramEnum1, paramEnum2);
  }
  
  public static boolean equalInt(Integer paramInteger1, Integer paramInteger2)
  {
    return equalObject(paramInteger1, paramInteger2);
  }
  
  public static boolean equalLong(Long paramLong1, Long paramLong2)
  {
    return equalObject(paramLong1, paramLong2);
  }
  
  public static boolean equalObject(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return (paramObject1 == null) && (paramObject2 == null);
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static boolean equalString(String paramString1, String paramString2)
  {
    return equalObject(paramString1, paramString2);
  }
  
  public static boolean equalsDouble(Double paramDouble1, Double paramDouble2)
  {
    if ((paramDouble1 == null) || (paramDouble2 == null)) {
      if ((paramDouble1 != null) || (paramDouble2 != null)) {}
    }
    while (Double.doubleToLongBits(paramDouble1.doubleValue()) == Double.doubleToLongBits(paramDouble2.doubleValue()))
    {
      return true;
      return false;
    }
    return false;
  }
  
  public static boolean equalsMap(Map paramMap1, Map paramMap2)
  {
    if ((paramMap1 == null) || (paramMap2 == null)) {
      return (paramMap1 == null) && (paramMap2 == null);
    }
    return paramMap1.entrySet().equals(paramMap2.entrySet());
  }
  
  public static String getAndroidId(Context paramContext)
  {
    return Reflection.getAndroidId(paramContext);
  }
  
  public static String getCpuAbi()
  {
    return Reflection.getCpuAbi();
  }
  
  public static void getGoogleAdId(Context paramContext, OnDeviceIdsRead paramOnDeviceIdsRead)
  {
    ILogger localILogger = AdjustFactory.getLogger();
    if (Looper.myLooper() != Looper.getMainLooper())
    {
      localILogger.debug("GoogleAdId being read in the background", new Object[0]);
      paramContext = getPlayAdId(paramContext);
      localILogger.debug("GoogleAdId read " + paramContext, new Object[0]);
      paramOnDeviceIdsRead.onGoogleAdIdRead(paramContext);
      return;
    }
    localILogger.debug("GoogleAdId being read in the foreground", new Object[0]);
    new AsyncTask()
    {
      protected String doInBackground(Context... paramAnonymousVarArgs)
      {
        ILogger localILogger = AdjustFactory.getLogger();
        paramAnonymousVarArgs = Util.getPlayAdId(paramAnonymousVarArgs[0]);
        localILogger.debug("GoogleAdId read " + paramAnonymousVarArgs, new Object[0]);
        return paramAnonymousVarArgs;
      }
      
      protected void onPostExecute(String paramAnonymousString)
      {
        AdjustFactory.getLogger();
        val$onDeviceIdRead.onGoogleAdIdRead(paramAnonymousString);
      }
    }.execute(new Context[] { paramContext });
  }
  
  private static ILogger getLogger()
  {
    return AdjustFactory.getLogger();
  }
  
  public static String getMacAddress(Context paramContext)
  {
    return Reflection.getMacAddress(paramContext);
  }
  
  public static String getPlayAdId(Context paramContext)
  {
    return Reflection.getPlayAdId(paramContext);
  }
  
  public static Map<String, String> getPluginKeys(Context paramContext)
  {
    return Reflection.getPluginKeys(paramContext);
  }
  
  private static String getPostDataString(Map<String, String> paramMap, int paramInt)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      String str = URLEncoder.encode((String)paramMap.getKey(), "UTF-8");
      paramMap = (String)paramMap.getValue();
      if (paramMap != null) {}
      for (paramMap = URLEncoder.encode(paramMap, "UTF-8");; paramMap = "")
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append(str);
        localStringBuilder.append("=");
        localStringBuilder.append(paramMap);
        break;
      }
    }
    paramMap = dateFormat(System.currentTimeMillis());
    localStringBuilder.append("&");
    localStringBuilder.append(URLEncoder.encode("sent_at", "UTF-8"));
    localStringBuilder.append("=");
    localStringBuilder.append(URLEncoder.encode(paramMap, "UTF-8"));
    localStringBuilder.append("&");
    localStringBuilder.append(URLEncoder.encode("queue_size", "UTF-8"));
    localStringBuilder.append("=");
    localStringBuilder.append(URLEncoder.encode("" + paramInt, "UTF-8"));
    return localStringBuilder.toString();
  }
  
  public static String getReasonString(String paramString, Throwable paramThrowable)
  {
    if (paramThrowable != null) {
      return String.format(Locale.US, "%s: %s", new Object[] { paramString, paramThrowable });
    }
    return String.format(Locale.US, "%s", new Object[] { paramString });
  }
  
  public static String[] getSupportedAbis()
  {
    return Reflection.getSupportedAbis();
  }
  
  public static long getWaitingTime(int paramInt, BackoffStrategy paramBackoffStrategy)
  {
    if (paramInt < minRetries) {
      return 0L;
    }
    long l = Math.min(Math.pow(2.0D, paramInt - minRetries) * milliSecondMultiplier, maxWait);
    double d = randomInRange(minRange, maxRange);
    return (l * d);
  }
  
  public static String hash(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = paramString1.getBytes("UTF-8");
      paramString2 = MessageDigest.getInstance(paramString2);
      paramString2.update(paramString1, 0, paramString1.length);
      paramString1 = convertToHex(paramString2.digest());
      return paramString1;
    }
    catch (Exception paramString1) {}
    return null;
  }
  
  public static int hashBoolean(Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      return 0;
    }
    return paramBoolean.hashCode();
  }
  
  public static int hashEnum(Enum paramEnum)
  {
    if (paramEnum == null) {
      return 0;
    }
    return paramEnum.hashCode();
  }
  
  public static int hashLong(Long paramLong)
  {
    if (paramLong == null) {
      return 0;
    }
    return paramLong.hashCode();
  }
  
  public static int hashMap(Map paramMap)
  {
    if (paramMap == null) {
      return 0;
    }
    return paramMap.entrySet().hashCode();
  }
  
  public static int hashString(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    return paramString.hashCode();
  }
  
  public static Boolean isPlayTrackingEnabled(Context paramContext)
  {
    return Reflection.isPlayTrackingEnabled(paramContext);
  }
  
  public static String md5(String paramString)
  {
    return hash(paramString, "MD5");
  }
  
  public static String quote(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (!Pattern.compile("\\s").matcher(paramString).find());
    return String.format(Locale.US, "'%s'", new Object[] { paramString });
  }
  
  private static double randomInRange(double paramDouble1, double paramDouble2)
  {
    return new Random().nextDouble() * (paramDouble2 - paramDouble1) + paramDouble1;
  }
  
  public static boolean readBooleanField(ObjectInputStream.GetField paramGetField, String paramString, boolean paramBoolean)
  {
    try
    {
      boolean bool = paramGetField.get(paramString, paramBoolean);
      return bool;
    }
    catch (Exception paramGetField)
    {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, paramGetField.getMessage() });
    }
    return paramBoolean;
  }
  
  public static ResponseData readHttpResponse(HttpsURLConnection paramHttpsURLConnection, ActivityPackage paramActivityPackage)
    throws Exception
  {
    StringBuffer localStringBuffer = new StringBuffer();
    ILogger localILogger = getLogger();
    Integer localInteger;
    for (;;)
    {
      try
      {
        localInteger = Integer.valueOf(paramHttpsURLConnection.getResponseCode());
        if (localInteger.intValue() >= 400)
        {
          localObject = paramHttpsURLConnection.getErrorStream();
          localObject = new BufferedReader(new InputStreamReader((InputStream)localObject));
          String str = ((BufferedReader)localObject).readLine();
          if (str == null) {
            break;
          }
          localStringBuffer.append(str);
          continue;
        }
        localObject = paramHttpsURLConnection.getInputStream();
      }
      catch (Exception paramActivityPackage)
      {
        localILogger.error("Failed to read response. (%s)", new Object[] { paramActivityPackage.getMessage() });
        throw paramActivityPackage;
      }
      finally
      {
        if (paramHttpsURLConnection != null) {
          paramHttpsURLConnection.disconnect();
        }
      }
    }
    if (paramHttpsURLConnection != null) {
      paramHttpsURLConnection.disconnect();
    }
    Object localObject = ResponseData.buildResponseData(paramActivityPackage);
    paramHttpsURLConnection = localStringBuffer.toString();
    localILogger.verbose("Response: %s", new Object[] { paramHttpsURLConnection });
    if ((paramHttpsURLConnection == null) || (paramHttpsURLConnection.length() == 0)) {}
    for (;;)
    {
      return (ResponseData)localObject;
      try
      {
        paramHttpsURLConnection = new JSONObject(paramHttpsURLConnection);
        if (paramHttpsURLConnection != null)
        {
          jsonResponse = paramHttpsURLConnection;
          paramActivityPackage = paramHttpsURLConnection.optString("message", null);
          message = paramActivityPackage;
          timestamp = paramHttpsURLConnection.optString("timestamp", null);
          adid = paramHttpsURLConnection.optString("adid", null);
          paramHttpsURLConnection = paramActivityPackage;
          if (paramActivityPackage == null) {
            paramHttpsURLConnection = "No message found";
          }
          if ((localInteger != null) && (localInteger.intValue() == 200))
          {
            localILogger.info("%s", new Object[] { paramHttpsURLConnection });
            success = true;
            return (ResponseData)localObject;
          }
        }
      }
      catch (JSONException paramHttpsURLConnection)
      {
        for (;;)
        {
          paramHttpsURLConnection = String.format("Failed to parse json response. (%s)", new Object[] { paramHttpsURLConnection.getMessage() });
          localILogger.error(paramHttpsURLConnection, new Object[0]);
          message = paramHttpsURLConnection;
          paramHttpsURLConnection = null;
        }
        localILogger.error("%s", new Object[] { paramHttpsURLConnection });
      }
    }
    return (ResponseData)localObject;
  }
  
  public static int readIntField(ObjectInputStream.GetField paramGetField, String paramString, int paramInt)
  {
    try
    {
      int i = paramGetField.get(paramString, paramInt);
      return i;
    }
    catch (Exception paramGetField)
    {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, paramGetField.getMessage() });
    }
    return paramInt;
  }
  
  public static long readLongField(ObjectInputStream.GetField paramGetField, String paramString, long paramLong)
  {
    try
    {
      long l = paramGetField.get(paramString, paramLong);
      return l;
    }
    catch (Exception paramGetField)
    {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, paramGetField.getMessage() });
    }
    return paramLong;
  }
  
  /* Error */
  public static <T> T readObject(Context paramContext, String paramString1, String paramString2, Class<T> paramClass)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual 590	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_1
    //   12: new 592	java/io/BufferedInputStream
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 593	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   20: astore_0
    //   21: new 595	java/io/ObjectInputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 596	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   29: astore_1
    //   30: aload_3
    //   31: aload_1
    //   32: invokevirtual 598	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   35: invokevirtual 604	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   38: astore_0
    //   39: aload_0
    //   40: astore_3
    //   41: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   44: ldc_w 606
    //   47: iconst_2
    //   48: anewarray 4	java/lang/Object
    //   51: dup
    //   52: iconst_0
    //   53: aload_2
    //   54: aastore
    //   55: dup
    //   56: iconst_1
    //   57: aload_0
    //   58: aastore
    //   59: invokeinterface 248 3 0
    //   64: aload_1
    //   65: ifnull +9 -> 74
    //   68: aload_1
    //   69: invokeinterface 609 1 0
    //   74: aload_0
    //   75: areturn
    //   76: astore 5
    //   78: aconst_null
    //   79: astore_0
    //   80: aload_0
    //   81: astore_3
    //   82: aload_0
    //   83: astore 4
    //   85: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   88: ldc_w 611
    //   91: iconst_2
    //   92: anewarray 4	java/lang/Object
    //   95: dup
    //   96: iconst_0
    //   97: aload_2
    //   98: aastore
    //   99: dup
    //   100: iconst_1
    //   101: aload 5
    //   103: invokevirtual 612	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   106: aastore
    //   107: invokeinterface 512 3 0
    //   112: goto -48 -> 64
    //   115: astore_0
    //   116: aload_3
    //   117: astore_0
    //   118: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   121: ldc_w 614
    //   124: iconst_1
    //   125: anewarray 4	java/lang/Object
    //   128: dup
    //   129: iconst_0
    //   130: aload_2
    //   131: aastore
    //   132: invokeinterface 248 3 0
    //   137: goto -73 -> 64
    //   140: astore 5
    //   142: aconst_null
    //   143: astore_0
    //   144: aload_0
    //   145: astore_3
    //   146: aload_0
    //   147: astore 4
    //   149: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   152: ldc_w 616
    //   155: iconst_2
    //   156: anewarray 4	java/lang/Object
    //   159: dup
    //   160: iconst_0
    //   161: aload_2
    //   162: aastore
    //   163: dup
    //   164: iconst_1
    //   165: aload 5
    //   167: invokevirtual 617	java/lang/ClassCastException:getMessage	()Ljava/lang/String;
    //   170: aastore
    //   171: invokeinterface 512 3 0
    //   176: goto -112 -> 64
    //   179: astore_0
    //   180: aload 4
    //   182: astore_3
    //   183: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   186: ldc_w 619
    //   189: iconst_2
    //   190: anewarray 4	java/lang/Object
    //   193: dup
    //   194: iconst_0
    //   195: aload_2
    //   196: aastore
    //   197: dup
    //   198: iconst_1
    //   199: aload_0
    //   200: aastore
    //   201: invokeinterface 512 3 0
    //   206: aload_3
    //   207: astore_0
    //   208: goto -144 -> 64
    //   211: astore 5
    //   213: aconst_null
    //   214: astore_0
    //   215: aload_0
    //   216: astore_3
    //   217: aload_0
    //   218: astore 4
    //   220: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   223: ldc_w 621
    //   226: iconst_2
    //   227: anewarray 4	java/lang/Object
    //   230: dup
    //   231: iconst_0
    //   232: aload_2
    //   233: aastore
    //   234: dup
    //   235: iconst_1
    //   236: aload 5
    //   238: invokevirtual 469	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   241: aastore
    //   242: invokeinterface 512 3 0
    //   247: goto -183 -> 64
    //   250: astore_1
    //   251: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   254: ldc_w 623
    //   257: iconst_2
    //   258: anewarray 4	java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload_2
    //   264: aastore
    //   265: dup
    //   266: iconst_1
    //   267: aload_1
    //   268: aastore
    //   269: invokeinterface 512 3 0
    //   274: aload_0
    //   275: areturn
    //   276: astore_0
    //   277: aconst_null
    //   278: astore_1
    //   279: aload 4
    //   281: astore_3
    //   282: goto -99 -> 183
    //   285: astore_0
    //   286: aload 4
    //   288: astore_3
    //   289: goto -106 -> 183
    //   292: astore_3
    //   293: aload_0
    //   294: astore_1
    //   295: aload_3
    //   296: astore_0
    //   297: aload 4
    //   299: astore_3
    //   300: goto -117 -> 183
    //   303: astore_0
    //   304: aconst_null
    //   305: astore_0
    //   306: aload 5
    //   308: astore_1
    //   309: goto -191 -> 118
    //   312: astore_0
    //   313: aconst_null
    //   314: astore_0
    //   315: goto -197 -> 118
    //   318: astore_1
    //   319: aload_0
    //   320: astore_1
    //   321: aconst_null
    //   322: astore_0
    //   323: goto -205 -> 118
    //   326: astore_0
    //   327: aconst_null
    //   328: astore_0
    //   329: goto -211 -> 118
    //   332: astore 5
    //   334: goto -119 -> 215
    //   337: astore 5
    //   339: goto -195 -> 144
    //   342: astore 5
    //   344: goto -264 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	347	0	paramContext	Context
    //   0	347	1	paramString1	String
    //   0	347	2	paramString2	String
    //   0	347	3	paramClass	Class<T>
    //   1	297	4	localContext	Context
    //   4	1	5	localObject	Object
    //   76	26	5	localClassNotFoundException1	ClassNotFoundException
    //   140	26	5	localClassCastException1	ClassCastException
    //   211	96	5	localException1	Exception
    //   332	1	5	localException2	Exception
    //   337	1	5	localClassCastException2	ClassCastException
    //   342	1	5	localClassNotFoundException2	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   30	39	76	java/lang/ClassNotFoundException
    //   41	64	115	java/io/FileNotFoundException
    //   85	112	115	java/io/FileNotFoundException
    //   149	176	115	java/io/FileNotFoundException
    //   220	247	115	java/io/FileNotFoundException
    //   30	39	140	java/lang/ClassCastException
    //   85	112	179	java/lang/Exception
    //   149	176	179	java/lang/Exception
    //   220	247	179	java/lang/Exception
    //   30	39	211	java/lang/Exception
    //   68	74	250	java/lang/Exception
    //   6	12	276	java/lang/Exception
    //   12	21	285	java/lang/Exception
    //   21	30	292	java/lang/Exception
    //   6	12	303	java/io/FileNotFoundException
    //   12	21	312	java/io/FileNotFoundException
    //   21	30	318	java/io/FileNotFoundException
    //   30	39	326	java/io/FileNotFoundException
    //   41	64	332	java/lang/Exception
    //   41	64	337	java/lang/ClassCastException
    //   41	64	342	java/lang/ClassNotFoundException
  }
  
  public static <T> T readObjectField(ObjectInputStream.GetField paramGetField, String paramString, T paramT)
  {
    try
    {
      paramGetField = paramGetField.get(paramString, paramT);
      return paramGetField;
    }
    catch (Exception paramGetField)
    {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, paramGetField.getMessage() });
    }
    return paramT;
  }
  
  public static String readStringField(ObjectInputStream.GetField paramGetField, String paramString1, String paramString2)
  {
    return (String)readObjectField(paramGetField, paramString1, paramString2);
  }
  
  public static void setDefaultHttpsUrlConnectionProperties(HttpsURLConnection paramHttpsURLConnection, String paramString)
  {
    paramHttpsURLConnection.setRequestProperty("Client-SDK", paramString);
    paramHttpsURLConnection.setConnectTimeout(60000);
    paramHttpsURLConnection.setReadTimeout(60000);
  }
  
  public static String sha1(String paramString)
  {
    return hash(paramString, "SHA-1");
  }
  
  /* Error */
  public static <T> void writeObject(T paramT, Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: aload_2
    //   5: iconst_0
    //   6: invokevirtual 659	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   9: astore_1
    //   10: aload_1
    //   11: astore 4
    //   13: new 661	java/io/BufferedOutputStream
    //   16: dup
    //   17: aload_1
    //   18: invokespecial 662	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: astore_2
    //   22: new 664	java/io/ObjectOutputStream
    //   25: dup
    //   26: aload_2
    //   27: invokespecial 665	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   30: astore_1
    //   31: aload_1
    //   32: astore 4
    //   34: aload_1
    //   35: aload_0
    //   36: invokevirtual 668	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   39: aload_1
    //   40: astore 4
    //   42: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   45: ldc_w 670
    //   48: iconst_2
    //   49: anewarray 4	java/lang/Object
    //   52: dup
    //   53: iconst_0
    //   54: aload_3
    //   55: aastore
    //   56: dup
    //   57: iconst_1
    //   58: aload_0
    //   59: aastore
    //   60: invokeinterface 248 3 0
    //   65: aload_1
    //   66: ifnull +9 -> 75
    //   69: aload_1
    //   70: invokeinterface 609 1 0
    //   75: return
    //   76: astore_0
    //   77: aload_1
    //   78: astore 4
    //   80: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   83: ldc_w 672
    //   86: iconst_1
    //   87: anewarray 4	java/lang/Object
    //   90: dup
    //   91: iconst_0
    //   92: aload_3
    //   93: aastore
    //   94: invokeinterface 512 3 0
    //   99: goto -34 -> 65
    //   102: astore_0
    //   103: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   106: ldc_w 674
    //   109: iconst_2
    //   110: anewarray 4	java/lang/Object
    //   113: dup
    //   114: iconst_0
    //   115: aload_3
    //   116: aastore
    //   117: dup
    //   118: iconst_1
    //   119: aload_0
    //   120: aastore
    //   121: invokeinterface 512 3 0
    //   126: aload 4
    //   128: astore_1
    //   129: goto -64 -> 65
    //   132: astore_0
    //   133: invokestatic 466	com/adjust/sdk/Util:getLogger	()Lcom/adjust/sdk/ILogger;
    //   136: ldc_w 676
    //   139: iconst_2
    //   140: anewarray 4	java/lang/Object
    //   143: dup
    //   144: iconst_0
    //   145: aload_3
    //   146: aastore
    //   147: dup
    //   148: iconst_1
    //   149: aload_0
    //   150: aastore
    //   151: invokeinterface 512 3 0
    //   156: return
    //   157: astore_0
    //   158: aload_2
    //   159: astore 4
    //   161: goto -58 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	paramT	T
    //   0	164	1	paramContext	Context
    //   0	164	2	paramString1	String
    //   0	164	3	paramString2	String
    //   1	159	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   34	39	76	java/io/NotSerializableException
    //   42	65	76	java/io/NotSerializableException
    //   3	10	102	java/lang/Exception
    //   13	22	102	java/lang/Exception
    //   34	39	102	java/lang/Exception
    //   42	65	102	java/lang/Exception
    //   80	99	102	java/lang/Exception
    //   69	75	132	java/lang/Exception
    //   22	31	157	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */