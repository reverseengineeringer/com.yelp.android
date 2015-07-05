package com.yelp.android.appdata.webrequests;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask.Status;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.bc;
import com.yelp.android.bf.k;
import com.yelp.android.debug.Debug;
import com.yelp.android.services.j;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;
import com.yelp.android.util.y;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ApiRequest<Params, Progress, Result>
{
  public static final String ACCURACY_KEY = "accuracy";
  private static final y<ApiRequest<?, ?, ?>> CURRENT_REQUESTS = new y();
  public static final String LATITUDE_KEY = "latitude";
  public static final String LONGITUDE_KEY = "longitude";
  private m<Result> mCallback;
  private Context mContext;
  private YelpException mException;
  private HttpClient mHttpClient;
  private boolean mIsFinished;
  private ArrayList<NameValuePair> mPostParameters;
  protected j mQuery;
  private final ApiRequest.RequestType mRequestType;
  private l<Params, Progress, Result> mTask;
  long mTimeRequestRecievedBody;
  long mTimeRequestRecievedHeader;
  long mTimeRequestStarted;
  long mTimeRequestStartedParsing;
  
  protected ApiRequest(ApiRequest.RequestType paramRequestType, String paramString, HttpClient paramHttpClient, Context paramContext, m<Result> paramm)
  {
    mContext = paramContext;
    mRequestType = paramRequestType;
    mQuery = getQuery(paramString);
    mHttpClient = paramHttpClient;
    mCallback = paramm;
    CURRENT_REQUESTS.a(this);
  }
  
  protected ApiRequest(ApiRequest.RequestType paramRequestType, String paramString, HttpClient paramHttpClient, m<Result> paramm)
  {
    this(paramRequestType, paramString, paramHttpClient, BaseYelpApplication.z(), paramm);
  }
  
  public static void abortIfAny(ApiRequest<?, ?, ?> paramApiRequest, AsyncTask.Status... paramVarArgs)
  {
    if (paramApiRequest != null) {
      paramApiRequest.abortIfAny(paramVarArgs);
    }
  }
  
  /* Error */
  private Result executeApiRequest(bc parambc, Debug paramDebug, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 106	com/yelp/android/appdata/webrequests/ApiRequest:isNetworkConnected	()Z
    //   4: ifne +14 -> 18
    //   7: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   10: dup
    //   11: getstatic 112	com/yelp/android/appdata/webrequests/YelpException:YPErrorNotConnectedToInternet	I
    //   14: invokespecial 115	com/yelp/android/appdata/webrequests/YelpException:<init>	(I)V
    //   17: athrow
    //   18: aload_0
    //   19: invokevirtual 119	com/yelp/android/appdata/webrequests/ApiRequest:getUri	()Ljava/lang/String;
    //   22: astore 8
    //   24: aconst_null
    //   25: astore_1
    //   26: aload_0
    //   27: aconst_null
    //   28: putfield 121	com/yelp/android/appdata/webrequests/ApiRequest:mException	Lcom/yelp/android/appdata/webrequests/YelpException;
    //   31: aconst_null
    //   32: astore 7
    //   34: getstatic 126	com/yelp/android/appdata/webrequests/k:a	[I
    //   37: aload_0
    //   38: getfield 60	com/yelp/android/appdata/webrequests/ApiRequest:mRequestType	Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;
    //   41: invokevirtual 132	com/yelp/android/appdata/webrequests/ApiRequest$RequestType:ordinal	()I
    //   44: iaload
    //   45: tableswitch	default:+31->76, 1:+41->86, 2:+130->175, 3:+147->192, 4:+193->238
    //   76: new 134	java/lang/UnsupportedOperationException
    //   79: dup
    //   80: ldc -120
    //   82: invokespecial 139	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;)V
    //   85: athrow
    //   86: aload_0
    //   87: invokevirtual 142	com/yelp/android/appdata/webrequests/ApiRequest:getRawResponseFromCache	()Ljava/lang/String;
    //   90: astore 7
    //   92: aload 7
    //   94: astore 6
    //   96: aload 7
    //   98: ifnonnull +17 -> 115
    //   101: new 144	org/apache/http/client/methods/HttpGet
    //   104: dup
    //   105: aload 8
    //   107: invokespecial 145	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   110: astore_1
    //   111: aload 7
    //   113: astore 6
    //   115: ldc2_w 146
    //   118: lstore 4
    //   120: aload 6
    //   122: ifnonnull +207 -> 329
    //   125: aload_0
    //   126: aload_1
    //   127: aload_0
    //   128: getfield 68	com/yelp/android/appdata/webrequests/ApiRequest:mHttpClient	Lorg/apache/http/client/HttpClient;
    //   131: aload_2
    //   132: invokespecial 151	com/yelp/android/appdata/webrequests/ApiRequest:executeHttpRequest	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/debug/Debug;)Landroid/util/Pair;
    //   135: astore 6
    //   137: aload 6
    //   139: getfield 157	android/util/Pair:first	Ljava/lang/Object;
    //   142: checkcast 159	java/lang/String
    //   145: astore_2
    //   146: aload 6
    //   148: getfield 162	android/util/Pair:second	Ljava/lang/Object;
    //   151: checkcast 164	org/apache/http/HttpResponse
    //   154: invokeinterface 168 1 0
    //   159: invokeinterface 174 1 0
    //   164: lstore 4
    //   166: aload_0
    //   167: invokevirtual 177	com/yelp/android/appdata/webrequests/ApiRequest:isYelpRequest	()Z
    //   170: ifne +172 -> 342
    //   173: aconst_null
    //   174: areturn
    //   175: new 179	org/apache/http/client/methods/HttpDelete
    //   178: dup
    //   179: aload 8
    //   181: invokespecial 180	org/apache/http/client/methods/HttpDelete:<init>	(Ljava/lang/String;)V
    //   184: astore_1
    //   185: aload 7
    //   187: astore 6
    //   189: goto -74 -> 115
    //   192: new 182	org/apache/http/client/methods/HttpPost
    //   195: dup
    //   196: aload 8
    //   198: invokespecial 183	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   201: astore 8
    //   203: aload_0
    //   204: invokevirtual 186	com/yelp/android/appdata/webrequests/ApiRequest:getPostEntity	()Lorg/apache/http/HttpEntity;
    //   207: astore 9
    //   209: aload 7
    //   211: astore 6
    //   213: aload 8
    //   215: astore_1
    //   216: aload 9
    //   218: ifnull -103 -> 115
    //   221: aload 8
    //   223: aload 9
    //   225: invokevirtual 190	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   228: aload 7
    //   230: astore 6
    //   232: aload 8
    //   234: astore_1
    //   235: goto -120 -> 115
    //   238: new 192	org/apache/http/client/methods/HttpPut
    //   241: dup
    //   242: aload 8
    //   244: invokespecial 193	org/apache/http/client/methods/HttpPut:<init>	(Ljava/lang/String;)V
    //   247: astore 8
    //   249: aload_0
    //   250: invokevirtual 186	com/yelp/android/appdata/webrequests/ApiRequest:getPostEntity	()Lorg/apache/http/HttpEntity;
    //   253: astore 9
    //   255: aload 7
    //   257: astore 6
    //   259: aload 8
    //   261: astore_1
    //   262: aload 9
    //   264: ifnull -149 -> 115
    //   267: aload 8
    //   269: aload 9
    //   271: invokevirtual 194	org/apache/http/client/methods/HttpPut:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   274: aload 7
    //   276: astore 6
    //   278: aload 8
    //   280: astore_1
    //   281: goto -166 -> 115
    //   284: astore_1
    //   285: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   288: dup
    //   289: aload_1
    //   290: getstatic 197	com/yelp/android/appdata/webrequests/YelpException:YPErrorUnknown	I
    //   293: invokespecial 200	com/yelp/android/appdata/webrequests/YelpException:<init>	(Ljava/lang/Throwable;I)V
    //   296: athrow
    //   297: astore_1
    //   298: invokestatic 204	com/yelp/android/services/d:a	()V
    //   301: aload_1
    //   302: athrow
    //   303: astore_1
    //   304: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   307: dup
    //   308: aload_1
    //   309: getstatic 207	com/yelp/android/appdata/webrequests/YelpException:YPErrorServerResponse	I
    //   312: invokespecial 200	com/yelp/android/appdata/webrequests/YelpException:<init>	(Ljava/lang/Throwable;I)V
    //   315: athrow
    //   316: astore_1
    //   317: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   320: dup
    //   321: aload_1
    //   322: getstatic 207	com/yelp/android/appdata/webrequests/YelpException:YPErrorServerResponse	I
    //   325: invokespecial 200	com/yelp/android/appdata/webrequests/YelpException:<init>	(Ljava/lang/Throwable;I)V
    //   328: athrow
    //   329: aload_0
    //   330: ldc -47
    //   332: invokestatic 215	com/yelp/android/util/YelpLog:v	(Ljava/lang/Object;Ljava/lang/String;)I
    //   335: pop
    //   336: aload 6
    //   338: astore_2
    //   339: goto -173 -> 166
    //   342: aload_0
    //   343: invokestatic 220	android/os/SystemClock:elapsedRealtime	()J
    //   346: putfield 222	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestStartedParsing	J
    //   349: new 224	org/json/JSONObject
    //   352: dup
    //   353: aload_2
    //   354: invokespecial 225	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   357: astore 6
    //   359: aload_0
    //   360: aload 6
    //   362: invokevirtual 229	com/yelp/android/appdata/webrequests/ApiRequest:onProcessingStarted	(Lorg/json/JSONObject;)V
    //   365: aload_0
    //   366: aload 6
    //   368: invokevirtual 233	com/yelp/android/appdata/webrequests/ApiRequest:process	(Lorg/json/JSONObject;)Ljava/lang/Object;
    //   371: astore 6
    //   373: iload_3
    //   374: ifeq +26 -> 400
    //   377: aload_0
    //   378: aload_1
    //   379: aload_0
    //   380: getfield 222	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestStartedParsing	J
    //   383: aload_0
    //   384: getfield 235	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestStarted	J
    //   387: aload_0
    //   388: getfield 237	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestRecievedHeader	J
    //   391: aload_0
    //   392: getfield 239	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestRecievedBody	J
    //   395: lload 4
    //   397: invokevirtual 243	com/yelp/android/appdata/webrequests/ApiRequest:sendMetrics	(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V
    //   400: aload_0
    //   401: aload_2
    //   402: invokevirtual 246	com/yelp/android/appdata/webrequests/ApiRequest:cacheRawResponse	(Ljava/lang/String;)V
    //   405: aload 6
    //   407: areturn
    //   408: astore_1
    //   409: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   412: dup
    //   413: aload_1
    //   414: getstatic 249	com/yelp/android/appdata/webrequests/YelpException:YPErrorInvalidData	I
    //   417: invokespecial 200	com/yelp/android/appdata/webrequests/YelpException:<init>	(Ljava/lang/Throwable;I)V
    //   420: athrow
    //   421: astore_1
    //   422: aload_0
    //   423: aload_1
    //   424: invokevirtual 253	com/yelp/android/appdata/webrequests/ApiRequest:onJSONException	(Lorg/json/JSONException;)V
    //   427: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   430: dup
    //   431: aload_1
    //   432: getstatic 249	com/yelp/android/appdata/webrequests/YelpException:YPErrorInvalidData	I
    //   435: invokespecial 200	com/yelp/android/appdata/webrequests/YelpException:<init>	(Ljava/lang/Throwable;I)V
    //   438: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	439	0	this	ApiRequest
    //   0	439	1	parambc	bc
    //   0	439	2	paramDebug	Debug
    //   0	439	3	paramBoolean	boolean
    //   118	278	4	l	long
    //   94	312	6	localObject1	Object
    //   32	243	7	str	String
    //   22	257	8	localObject2	Object
    //   207	63	9	localHttpEntity	HttpEntity
    // Exception table:
    //   from	to	target	type
    //   125	166	284	java/lang/IllegalStateException
    //   125	166	297	finally
    //   285	297	297	finally
    //   304	316	297	finally
    //   317	329	297	finally
    //   125	166	303	org/apache/http/client/ClientProtocolException
    //   125	166	316	java/io/IOException
    //   349	359	408	org/json/JSONException
    //   359	373	421	org/json/JSONException
    //   377	400	421	org/json/JSONException
    //   400	405	421	org/json/JSONException
  }
  
  /* Error */
  private Pair<String, HttpResponse> executeHttpRequest(HttpUriRequest paramHttpUriRequest, HttpClient paramHttpClient, Debug paramDebug)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 258
    //   4: invokestatic 263	com/yelp/android/appdata/ao:a	()F
    //   7: invokestatic 269	java/lang/Float:toString	(F)Ljava/lang/String;
    //   10: invokeinterface 275 3 0
    //   15: aload_1
    //   16: ldc_w 277
    //   19: ldc_w 279
    //   22: invokeinterface 282 3 0
    //   27: aload_0
    //   28: invokestatic 220	android/os/SystemClock:elapsedRealtime	()J
    //   31: putfield 235	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestStarted	J
    //   34: aload_1
    //   35: invokestatic 285	com/yelp/android/services/d:a	(Lorg/apache/http/HttpRequest;)V
    //   38: aload_0
    //   39: invokevirtual 289	com/yelp/android/appdata/webrequests/ApiRequest:getExtraRequestHeaders	()Ljava/util/List;
    //   42: ifnull +58 -> 100
    //   45: aload_0
    //   46: invokevirtual 289	com/yelp/android/appdata/webrequests/ApiRequest:getExtraRequestHeaders	()Ljava/util/List;
    //   49: invokeinterface 295 1 0
    //   54: astore_3
    //   55: aload_3
    //   56: invokeinterface 300 1 0
    //   61: ifeq +39 -> 100
    //   64: aload_3
    //   65: invokeinterface 304 1 0
    //   70: checkcast 153	android/util/Pair
    //   73: astore 6
    //   75: aload_1
    //   76: aload 6
    //   78: getfield 157	android/util/Pair:first	Ljava/lang/Object;
    //   81: checkcast 159	java/lang/String
    //   84: aload 6
    //   86: getfield 162	android/util/Pair:second	Ljava/lang/Object;
    //   89: checkcast 159	java/lang/String
    //   92: invokeinterface 275 3 0
    //   97: goto -42 -> 55
    //   100: aload_2
    //   101: aload_1
    //   102: invokeinterface 310 2 0
    //   107: astore_3
    //   108: aload_0
    //   109: aload_3
    //   110: invokevirtual 314	com/yelp/android/appdata/webrequests/ApiRequest:validateResponse	(Lorg/apache/http/HttpResponse;)V
    //   113: aload_3
    //   114: invokeinterface 318 1 0
    //   119: invokeinterface 323 1 0
    //   124: istore 4
    //   126: aload_0
    //   127: invokestatic 220	android/os/SystemClock:elapsedRealtime	()J
    //   130: putfield 237	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestRecievedHeader	J
    //   133: iload 4
    //   135: sipush 300
    //   138: if_icmplt +11 -> 149
    //   141: aload_0
    //   142: iload 4
    //   144: aload_1
    //   145: aload_3
    //   146: invokevirtual 327	com/yelp/android/appdata/webrequests/ApiRequest:onStatusCodeError	(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    //   149: aconst_null
    //   150: astore_2
    //   151: aload_3
    //   152: ldc_w 329
    //   155: invokeinterface 333 2 0
    //   160: astore 6
    //   162: aload_2
    //   163: astore_1
    //   164: aload 6
    //   166: ifnull +54 -> 220
    //   169: aload 6
    //   171: invokeinterface 339 1 0
    //   176: astore 6
    //   178: aload 6
    //   180: arraylength
    //   181: istore 5
    //   183: iconst_0
    //   184: istore 4
    //   186: aload_2
    //   187: astore_1
    //   188: iload 4
    //   190: iload 5
    //   192: if_icmpge +28 -> 220
    //   195: aload 6
    //   197: iload 4
    //   199: aaload
    //   200: ldc_w 341
    //   203: invokeinterface 347 2 0
    //   208: astore_1
    //   209: aload_1
    //   210: ifnull +66 -> 276
    //   213: aload_1
    //   214: invokeinterface 352 1 0
    //   219: astore_1
    //   220: aload_1
    //   221: astore_2
    //   222: aload_1
    //   223: invokestatic 358	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   226: ifeq +7 -> 233
    //   229: ldc_w 360
    //   232: astore_2
    //   233: aload_3
    //   234: invokeinterface 168 1 0
    //   239: aload_2
    //   240: invokestatic 363	com/yelp/android/services/d:a	(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    //   243: astore_1
    //   244: aload_0
    //   245: invokestatic 220	android/os/SystemClock:elapsedRealtime	()J
    //   248: putfield 239	com/yelp/android/appdata/webrequests/ApiRequest:mTimeRequestRecievedBody	J
    //   251: aload_1
    //   252: aload_3
    //   253: invokestatic 367	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   256: astore_1
    //   257: aload_3
    //   258: invokeinterface 168 1 0
    //   263: astore_2
    //   264: aload_2
    //   265: ifnull +9 -> 274
    //   268: aload_2
    //   269: invokeinterface 370 1 0
    //   274: aload_1
    //   275: areturn
    //   276: iload 4
    //   278: iconst_1
    //   279: iadd
    //   280: istore 4
    //   282: goto -96 -> 186
    //   285: astore_1
    //   286: new 108	com/yelp/android/appdata/webrequests/YelpException
    //   289: dup
    //   290: getstatic 249	com/yelp/android/appdata/webrequests/YelpException:YPErrorInvalidData	I
    //   293: invokespecial 115	com/yelp/android/appdata/webrequests/YelpException:<init>	(I)V
    //   296: athrow
    //   297: astore_1
    //   298: aload_3
    //   299: invokeinterface 168 1 0
    //   304: astore_2
    //   305: aload_2
    //   306: ifnull +9 -> 315
    //   309: aload_2
    //   310: invokeinterface 370 1 0
    //   315: aload_1
    //   316: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	ApiRequest
    //   0	317	1	paramHttpUriRequest	HttpUriRequest
    //   0	317	2	paramHttpClient	HttpClient
    //   0	317	3	paramDebug	Debug
    //   124	157	4	i	int
    //   181	12	5	j	int
    //   73	123	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   151	162	285	org/apache/http/ParseException
    //   169	183	285	org/apache/http/ParseException
    //   195	209	285	org/apache/http/ParseException
    //   213	220	285	org/apache/http/ParseException
    //   222	229	285	org/apache/http/ParseException
    //   233	257	285	org/apache/http/ParseException
    //   108	133	297	finally
    //   141	149	297	finally
    //   151	162	297	finally
    //   169	183	297	finally
    //   195	209	297	finally
    //   213	220	297	finally
    //   222	229	297	finally
    //   233	257	297	finally
    //   286	297	297	finally
  }
  
  public static Set<ApiRequest<?, ?, ?>> getLiveRequests()
  {
    return CURRENT_REQUESTS.a();
  }
  
  public static boolean is(ApiRequest<?, ?, ?> paramApiRequest, AsyncTask.Status paramStatus)
  {
    if (paramApiRequest == null) {
      return false;
    }
    return paramApiRequest.is(paramStatus);
  }
  
  public static boolean isAny(ApiRequest<?, ?, ?> paramApiRequest, AsyncTask.Status... paramVarArgs)
  {
    if (paramApiRequest == null) {
      return false;
    }
    return paramApiRequest.isAny(paramVarArgs);
  }
  
  public static boolean isCompleted(ApiRequest<?, ?, ?>... paramVarArgs)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramVarArgs == null)
    {
      bool1 = true;
      return bool1;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramVarArgs.length) {
        break label42;
      }
      if (paramVarArgs[i] != null)
      {
        bool1 = bool2;
        if (!paramVarArgs[i].isCompleted()) {
          break;
        }
      }
      i += 1;
    }
    label42:
    return true;
  }
  
  private boolean isNetworkConnected()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  public static boolean isNullOr(ApiRequest<?, ?, ?> paramApiRequest, AsyncTask.Status... paramVarArgs)
  {
    return (paramApiRequest == null) || (paramApiRequest.isAny(paramVarArgs));
  }
  
  public void abortIfAny(AsyncTask.Status... paramVarArgs)
  {
    if (isAny(paramVarArgs)) {
      cancel(true);
    }
  }
  
  public void addPostParam(String paramString, double paramDouble)
  {
    addPostParam(paramString, f.a(Double.valueOf(paramDouble)));
  }
  
  public void addPostParam(String paramString, int paramInt)
  {
    addPostParam(paramString, Integer.toString(paramInt));
  }
  
  public void addPostParam(String paramString, long paramLong)
  {
    addPostParam(paramString, Long.toString(paramLong));
  }
  
  public void addPostParam(String paramString, Iterable<?> paramIterable)
  {
    addPostParam(paramString, TextUtils.join(",", paramIterable));
  }
  
  public void addPostParam(String paramString1, String paramString2)
  {
    if (mRequestType != ApiRequest.RequestType.POST) {
      throw new IllegalArgumentException("Cannot add post parameters to a non-POST API request.");
    }
    if (mPostParameters == null) {
      mPostParameters = new ArrayList();
    }
    mPostParameters.add(new BasicNameValuePair(paramString1, paramString2));
  }
  
  public void addPostParam(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "1";; str = "0")
    {
      addPostParam(paramString, str);
      return;
    }
  }
  
  public void addPostParam(String paramString, String[] paramArrayOfString)
  {
    addPostParam(paramString, TextUtils.join(",", paramArrayOfString));
  }
  
  public void addUrlParam(String paramString, double paramDouble)
  {
    mQuery.a(paramString, paramDouble);
  }
  
  public void addUrlParam(String paramString, int paramInt)
  {
    mQuery.a(paramString, paramInt);
  }
  
  public void addUrlParam(String paramString, long paramLong)
  {
    mQuery.a(paramString, paramLong);
  }
  
  public void addUrlParam(String paramString, Iterable<?> paramIterable)
  {
    mQuery.a(paramString, TextUtils.join(",", paramIterable));
  }
  
  public void addUrlParam(String paramString1, String paramString2)
  {
    mQuery.a(paramString1, paramString2);
  }
  
  public void addUrlParam(String paramString, boolean paramBoolean)
  {
    mQuery.a(paramString, paramBoolean);
  }
  
  public void addUrlParam(String paramString, String[] paramArrayOfString)
  {
    mQuery.a(paramString, TextUtils.join(",", paramArrayOfString));
  }
  
  protected void cacheRawResponse(String paramString) {}
  
  public final void cancel(boolean paramBoolean)
  {
    mIsFinished = true;
    if (mTask != null) {
      mTask.cancel(paramBoolean);
    }
  }
  
  protected Result doInBackground(Params... paramVarArgs)
  {
    try
    {
      paramVarArgs = executeSynchronously(BaseYelpApplication.z().y(), BaseYelpApplication.z().o(), sendMetricsForRequest());
      return paramVarArgs;
    }
    catch (YelpException paramVarArgs)
    {
      mException = paramVarArgs;
    }
    return null;
  }
  
  public final ApiRequest<Params, Progress, Result> execute(Params... paramVarArgs)
  {
    if (mTask == null) {
      mTask = new l(this);
    }
    mTask.c(paramVarArgs);
    return this;
  }
  
  public final ApiRequest<Params, Progress, Result> executeRepeatable(Params... paramVarArgs)
  {
    mTask = new l(this);
    mIsFinished = false;
    mTask.c(paramVarArgs);
    return this;
  }
  
  public Result executeSynchronously()
  {
    return (Result)executeSynchronously(BaseYelpApplication.z().y(), BaseYelpApplication.z().o(), sendMetricsForRequest());
  }
  
  public Result executeSynchronously(bc parambc, Debug paramDebug, boolean paramBoolean)
  {
    try
    {
      Object localObject = executeApiRequest(parambc, paramDebug, paramBoolean);
      return (Result)localObject;
    }
    catch (YelpException localYelpException)
    {
      if (localYelpException.isRecoverable())
      {
        YelpLog.e(this, "Intermittent error, retrying", localYelpException);
        return (Result)executeApiRequest(parambc, paramDebug, paramBoolean);
      }
      throw localYelpException;
    }
  }
  
  public final Result get()
  {
    if (mTask == null) {
      mTask = new l(this);
    }
    return (Result)mTask.get();
  }
  
  public String getCacheDescriptor()
  {
    return mQuery.b();
  }
  
  public final m<Result> getCallback()
  {
    return mCallback;
  }
  
  protected Context getContext()
  {
    return mContext;
  }
  
  public YelpException getException()
  {
    return mException;
  }
  
  public List<Pair<String, String>> getExtraRequestHeaders()
  {
    return null;
  }
  
  public HttpClient getHttpClient()
  {
    return mHttpClient;
  }
  
  protected HttpEntity getPostEntity()
  {
    if ((mPostParameters != null) && (mPostParameters.size() > 0)) {
      try
      {
        UrlEncodedFormEntity localUrlEncodedFormEntity = new UrlEncodedFormEntity(mPostParameters, "UTF-8");
        localUrlEncodedFormEntity.setContentEncoding("UTF-8");
        return localUrlEncodedFormEntity;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        YelpLog.e(this, "Error encoding HTTP POST request parameters: " + localUnsupportedEncodingException.getLocalizedMessage());
        throw new YelpException(localUnsupportedEncodingException, YelpException.YPErrorUnknown);
      }
    }
    return null;
  }
  
  protected List<? extends NameValuePair> getPostParameters()
  {
    return mPostParameters;
  }
  
  protected abstract j getQuery(String paramString);
  
  protected String getRawResponseFromCache()
  {
    return null;
  }
  
  public final AsyncTask.Status getStatus()
  {
    if (mTask == null) {
      return AsyncTask.Status.PENDING;
    }
    return mTask.getStatus();
  }
  
  protected abstract String getUri();
  
  public boolean is(AsyncTask.Status paramStatus)
  {
    return (getStatus() == paramStatus) || ((paramStatus == AsyncTask.Status.RUNNING) && (isFetching()));
  }
  
  public boolean isAny(AsyncTask.Status... paramVarArgs)
  {
    boolean bool2 = false;
    AsyncTask.Status localStatus1 = getStatus();
    int j = paramVarArgs.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        AsyncTask.Status localStatus2 = paramVarArgs[i];
        if ((localStatus1 == localStatus2) || ((localStatus2 == AsyncTask.Status.RUNNING) && (isFetching()))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  public final boolean isCancelled()
  {
    if (mTask == null) {
      return false;
    }
    return mTask.isCancelled();
  }
  
  public boolean isCompleted()
  {
    return (mIsFinished) || (isCancelled());
  }
  
  public boolean isFetching()
  {
    return (getStatus() == AsyncTask.Status.RUNNING) && (!isCompleted());
  }
  
  protected boolean isYelpRequest()
  {
    return true;
  }
  
  protected void onCancelled() {}
  
  protected abstract void onJSONException(JSONException paramJSONException);
  
  protected void onPostExecute(Result paramResult)
  {
    mIsFinished = true;
    if ((mException != null) && (mException.getMessageResource() == k.YPAPIErrorInvalidSessionToken))
    {
      BaseYelpApplication localBaseYelpApplication = BaseYelpApplication.z();
      localBaseYelpApplication.y().a(localBaseYelpApplication);
    }
    if ((mException != null) && (getCallback() != null)) {
      getCallback().onError(this, mException);
    }
    while (mException != null) {
      return;
    }
    onSuccess(paramResult);
  }
  
  protected void onPreExecute() {}
  
  protected abstract void onProcessingStarted(JSONObject paramJSONObject);
  
  void onProgressUpdate(Progress... paramVarArgs) {}
  
  protected abstract void onStatusCodeError(int paramInt, HttpUriRequest paramHttpUriRequest, HttpResponse paramHttpResponse);
  
  protected void onSuccess(Result paramResult)
  {
    if (getCallback() != null) {
      getCallback().onSuccess(this, paramResult);
    }
  }
  
  public abstract Result process(JSONObject paramJSONObject);
  
  protected final void publishProgress(Progress... paramVarArgs)
  {
    if (mTask != null) {
      mTask.a(paramVarArgs);
    }
  }
  
  protected abstract void sendMetrics(HttpUriRequest paramHttpUriRequest, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5);
  
  public boolean sendMetricsForRequest()
  {
    return true;
  }
  
  public final void setCallback(m<Result> paramm)
  {
    mCallback = paramm;
  }
  
  public void setHttpClient(HttpClient paramHttpClient)
  {
    mHttpClient = paramHttpClient;
  }
  
  protected void validateResponse(HttpResponse paramHttpResponse) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ApiRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */