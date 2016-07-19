package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.measurement.a;

public class z
  extends aj
{
  private final String a = u().a();
  private final char b;
  private final long c = u().M();
  private final a d;
  private final a e;
  private final a f;
  private final a g;
  private final a h;
  private final a i;
  private final a j;
  private final a k;
  private final a l;
  
  z(ag paramag)
  {
    super(paramag);
    if (u().O())
    {
      if (u().N()) {}
      for (c1 = 'P';; c1 = 'C')
      {
        b = c1;
        d = new a(6, false, false);
        e = new a(6, true, false);
        f = new a(6, false, true);
        g = new a(5, false, false);
        h = new a(5, true, false);
        i = new a(5, false, true);
        j = new a(4, false, false);
        k = new a(3, false, false);
        l = new a(2, false, false);
        return;
      }
    }
    if (u().N()) {}
    for (char c1 = 'p';; c1 = 'c')
    {
      b = c1;
      break;
    }
  }
  
  private static String a(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = "";
    }
    int m;
    do
    {
      return str;
      m = paramString.lastIndexOf('.');
      str = paramString;
    } while (m == -1);
    return paramString.substring(0, m);
  }
  
  static String a(boolean paramBoolean, Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof Integer)) {
      paramObject = Long.valueOf(((Integer)paramObject).intValue());
    }
    for (;;)
    {
      String str1;
      if ((paramObject instanceof Long))
      {
        if (!paramBoolean) {
          return String.valueOf(paramObject);
        }
        if (Math.abs(((Long)paramObject).longValue()) < 100L) {
          return String.valueOf(paramObject);
        }
        if (String.valueOf(paramObject).charAt(0) == '-') {}
        for (str1 = "-";; str1 = "")
        {
          paramObject = String.valueOf(Math.abs(((Long)paramObject).longValue()));
          return str1 + Math.round(Math.pow(10.0D, ((String)paramObject).length() - 1)) + "..." + str1 + Math.round(Math.pow(10.0D, ((String)paramObject).length()) - 1.0D);
        }
      }
      if ((paramObject instanceof Boolean)) {
        return String.valueOf(paramObject);
      }
      if ((paramObject instanceof Throwable))
      {
        Object localObject1 = (Throwable)paramObject;
        paramObject = new StringBuilder(((Throwable)localObject1).toString());
        str1 = a(a.class.getCanonicalName());
        String str2 = a(ag.class.getCanonicalName());
        localObject1 = ((Throwable)localObject1).getStackTrace();
        int n = localObject1.length;
        int m = 0;
        if (m < n)
        {
          Object localObject2 = localObject1[m];
          if (((StackTraceElement)localObject2).isNativeMethod()) {}
          String str3;
          do
          {
            do
            {
              m += 1;
              break;
              str3 = ((StackTraceElement)localObject2).getClassName();
            } while (str3 == null);
            str3 = a(str3);
          } while ((!str3.equals(str1)) && (!str3.equals(str2)));
          ((StringBuilder)paramObject).append(": ");
          ((StringBuilder)paramObject).append(localObject2);
        }
        return ((StringBuilder)paramObject).toString();
      }
      if (paramBoolean) {
        return "-";
      }
      return String.valueOf(paramObject);
    }
  }
  
  static String a(boolean paramBoolean, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    String str1 = paramString;
    if (paramString == null) {
      str1 = "";
    }
    String str2 = a(paramBoolean, paramObject1);
    paramObject2 = a(paramBoolean, paramObject2);
    paramObject3 = a(paramBoolean, paramObject3);
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1))
    {
      localStringBuilder.append(str1);
      paramString = ": ";
    }
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(str2);
      paramObject1 = ", ";
    }
    paramString = (String)paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2))
    {
      localStringBuilder.append((String)paramObject1);
      localStringBuilder.append((String)paramObject2);
      paramString = ", ";
    }
    if (!TextUtils.isEmpty((CharSequence)paramObject3))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append((String)paramObject3);
    }
    return localStringBuilder.toString();
  }
  
  public String A()
  {
    Pair localPair = tb.a();
    if (localPair == null) {
      return null;
    }
    return String.valueOf(second) + ":" + (String)first;
  }
  
  protected void a() {}
  
  protected void a(int paramInt, String paramString)
  {
    Log.println(paramInt, a, paramString);
  }
  
  public void a(int paramInt, final String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    zzx.zzz(paramString);
    af localaf = n.k();
    if (localaf == null)
    {
      a(6, "Scheduler not set. Not logging error/warn.");
      return;
    }
    if (!localaf.E())
    {
      a(6, "Scheduler not initialized. Not logging error/warn.");
      return;
    }
    if (localaf.F())
    {
      a(6, "Scheduler shutdown. Not logging error/warn.");
      return;
    }
    int m = paramInt;
    if (paramInt < 0) {
      m = 0;
    }
    paramInt = m;
    if (m >= "01VDIWEA?".length()) {
      paramInt = "01VDIWEA?".length() - 1;
    }
    paramObject1 = "1" + "01VDIWEA?".charAt(paramInt) + b + c + ":" + a(true, paramString, paramObject1, paramObject2, paramObject3);
    if (((String)paramObject1).length() > 1024) {}
    for (paramString = paramString.substring(0, 1024);; paramString = (String)paramObject1)
    {
      localaf.a(new Runnable()
      {
        public void run()
        {
          ad localad = n.e();
          if ((!localad.E()) || (localad.F()))
          {
            a(6, "Persisted config not initialized . Not logging error/warn.");
            return;
          }
          b.a(paramString);
        }
      });
      return;
    }
  }
  
  protected void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    if ((!paramBoolean1) && (a(paramInt))) {
      a(paramInt, a(false, paramString, paramObject1, paramObject2, paramObject3));
    }
    if ((!paramBoolean2) && (paramInt >= 5)) {
      a(paramInt, paramString, paramObject1, paramObject2, paramObject3);
    }
  }
  
  protected boolean a(int paramInt)
  {
    return Log.isLoggable(a, paramInt);
  }
  
  public a b()
  {
    return d;
  }
  
  public a c()
  {
    return g;
  }
  
  public a v()
  {
    return h;
  }
  
  public a w()
  {
    return i;
  }
  
  public a x()
  {
    return j;
  }
  
  public a y()
  {
    return k;
  }
  
  public a z()
  {
    return l;
  }
  
  public class a
  {
    private final int b;
    private final boolean c;
    private final boolean d;
    
    a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
    {
      b = paramInt;
      c = paramBoolean1;
      d = paramBoolean2;
    }
    
    public void a(String paramString)
    {
      a(b, c, d, paramString, null, null, null);
    }
    
    public void a(String paramString, Object paramObject)
    {
      a(b, c, d, paramString, paramObject, null, null);
    }
    
    public void a(String paramString, Object paramObject1, Object paramObject2)
    {
      a(b, c, d, paramString, paramObject1, paramObject2, null);
    }
    
    public void a(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
    {
      a(b, c, d, paramString, paramObject1, paramObject2, paramObject3);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */