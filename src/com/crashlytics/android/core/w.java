package com.crashlytics.android.core;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Build.VERSION;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.common.g;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class w
{
  private static final b a = b.a("0");
  private ActivityManager.RunningAppProcessInfo b;
  private Thread[] c;
  private List<StackTraceElement[]> d;
  private StackTraceElement[] e;
  private final Context f;
  private final b g;
  private final b h;
  private final int i = 8;
  
  public w(Context paramContext, String paramString1, String paramString2)
  {
    f = paramContext;
    g = b.a(paramString2);
    if (paramString1 == null) {}
    for (paramContext = null;; paramContext = b.a(paramString1.replace("-", "")))
    {
      h = paramContext;
      return;
    }
  }
  
  private int a()
  {
    return 0 + CodedOutputStream.b(1, b.a(new g().a(f)));
  }
  
  private int a(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    return 0 + CodedOutputStream.b(1, paramFloat) + CodedOutputStream.f(2, paramInt1) + CodedOutputStream.b(3, paramBoolean) + CodedOutputStream.d(4, paramInt2) + CodedOutputStream.b(5, paramLong1) + CodedOutputStream.b(6, paramLong2);
  }
  
  private int a(int paramInt1, b paramb1, b paramb2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<IdManager.DeviceIdentifierType, String> paramMap, int paramInt3, b paramb3, b paramb4)
  {
    int j = CodedOutputStream.b(1, paramb1);
    int k = CodedOutputStream.e(3, paramInt1);
    if (paramb2 == null) {}
    for (paramInt1 = 0;; paramInt1 = CodedOutputStream.b(4, paramb2))
    {
      paramInt1 = paramInt1 + (k + (0 + j)) + CodedOutputStream.d(5, paramInt2) + CodedOutputStream.b(6, paramLong1) + CodedOutputStream.b(7, paramLong2) + CodedOutputStream.b(10, paramBoolean);
      if (paramMap == null) {
        break;
      }
      paramb1 = paramMap.entrySet().iterator();
      for (;;)
      {
        paramInt2 = paramInt1;
        if (!paramb1.hasNext()) {
          break;
        }
        paramb2 = (Map.Entry)paramb1.next();
        paramInt2 = a((IdManager.DeviceIdentifierType)paramb2.getKey(), (String)paramb2.getValue());
        paramInt1 = paramInt2 + (CodedOutputStream.j(11) + CodedOutputStream.l(paramInt2)) + paramInt1;
      }
    }
    paramInt2 = paramInt1;
    j = CodedOutputStream.d(12, paramInt3);
    if (paramb3 == null)
    {
      paramInt1 = 0;
      if (paramb4 != null) {
        break label203;
      }
    }
    label203:
    for (paramInt3 = 0;; paramInt3 = CodedOutputStream.b(14, paramb4))
    {
      return paramInt3 + (paramInt2 + j + paramInt1);
      paramInt1 = CodedOutputStream.b(13, paramb3);
      break;
    }
  }
  
  private int a(b paramb)
  {
    return CodedOutputStream.b(1, paramb);
  }
  
  private int a(b paramb1, b paramb2, b paramb3, b paramb4, int paramInt)
  {
    int j = CodedOutputStream.b(1, paramb1);
    int k = CodedOutputStream.b(2, paramb2);
    int m = CodedOutputStream.b(3, paramb3);
    int n = a();
    return 0 + j + k + m + (n + (CodedOutputStream.j(5) + CodedOutputStream.l(n))) + CodedOutputStream.b(6, paramb4) + CodedOutputStream.e(10, paramInt);
  }
  
  private int a(b paramb1, b paramb2, boolean paramBoolean)
  {
    return 0 + CodedOutputStream.e(1, 3) + CodedOutputStream.b(2, paramb1) + CodedOutputStream.b(3, paramb2) + CodedOutputStream.b(4, paramBoolean);
  }
  
  private int a(IdManager.DeviceIdentifierType paramDeviceIdentifierType, String paramString)
  {
    return CodedOutputStream.e(1, protobufIndex) + CodedOutputStream.b(2, b.a(paramString));
  }
  
  private int a(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int j;
    int k;
    if (paramStackTraceElement.isNativeMethod())
    {
      j = CodedOutputStream.b(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
      k = j + CodedOutputStream.b(2, b.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      j = k;
      if (paramStackTraceElement.getFileName() != null) {
        j = k + CodedOutputStream.b(3, b.a(paramStackTraceElement.getFileName()));
      }
      if ((paramStackTraceElement.isNativeMethod()) || (paramStackTraceElement.getLineNumber() <= 0)) {
        break label147;
      }
      j += CodedOutputStream.b(4, paramStackTraceElement.getLineNumber());
    }
    label147:
    for (;;)
    {
      if (paramBoolean) {}
      for (k = 2;; k = 0)
      {
        return CodedOutputStream.d(5, k) + j;
        j = CodedOutputStream.b(1, 0L) + 0;
        break;
      }
    }
  }
  
  private int a(String paramString1, String paramString2)
  {
    int j = CodedOutputStream.b(1, b.a(paramString1));
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return j + CodedOutputStream.b(2, b.a(paramString1));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable)
  {
    int j = a(paramThread, e, 4, true);
    int n = CodedOutputStream.j(1);
    int i1 = CodedOutputStream.l(j);
    int m = c.length;
    int k = 0;
    j = j + (n + i1) + 0;
    while (k < m)
    {
      n = a(c[k], (StackTraceElement[])d.get(k), 0, false);
      j += n + (CodedOutputStream.j(1) + CodedOutputStream.l(n));
      k += 1;
    }
    k = a(paramThrowable, 1);
    m = CodedOutputStream.j(2);
    n = CodedOutputStream.l(k);
    i1 = c();
    int i2 = CodedOutputStream.j(3);
    int i3 = CodedOutputStream.l(i1);
    int i4 = b();
    return k + (m + n) + j + (i1 + (i2 + i3)) + (i4 + (CodedOutputStream.j(3) + CodedOutputStream.l(i4)));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
  {
    int j = a(paramThread, paramThrowable);
    j = j + (CodedOutputStream.j(1) + CodedOutputStream.l(j)) + 0;
    if (paramMap != null)
    {
      paramThread = paramMap.entrySet().iterator();
      for (;;)
      {
        k = j;
        if (!paramThread.hasNext()) {
          break;
        }
        paramThrowable = (Map.Entry)paramThread.next();
        k = a((String)paramThrowable.getKey(), (String)paramThrowable.getValue());
        j = k + (CodedOutputStream.j(2) + CodedOutputStream.l(k)) + j;
      }
    }
    int k = j;
    j = k;
    if (b != null) {
      if (b.importance == 100) {
        break label161;
      }
    }
    label161:
    for (boolean bool = true;; bool = false)
    {
      j = k + CodedOutputStream.b(3, bool);
      return CodedOutputStream.d(4, paramInt) + j;
    }
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, String paramString, long paramLong1, Map<String, String> paramMap, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, b paramb)
  {
    int j = CodedOutputStream.b(1, paramLong1);
    int k = CodedOutputStream.b(2, b.a(paramString));
    int m = a(paramThread, paramThrowable, paramInt2, paramMap);
    int n = CodedOutputStream.j(3);
    int i1 = CodedOutputStream.l(m);
    paramInt1 = a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    paramInt2 = 0 + j + k + (m + (n + i1)) + (paramInt1 + (CodedOutputStream.j(5) + CodedOutputStream.l(paramInt1)));
    paramInt1 = paramInt2;
    if (paramb != null)
    {
      paramInt1 = a(paramb);
      paramInt1 = paramInt2 + (paramInt1 + (CodedOutputStream.j(6) + CodedOutputStream.l(paramInt1)));
    }
    return paramInt1;
  }
  
  private int a(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int j = CodedOutputStream.b(1, b.a(paramThread.getName()));
    j = CodedOutputStream.d(2, paramInt) + j;
    int k = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < k)
    {
      int m = a(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      j += m + (CodedOutputStream.j(3) + CodedOutputStream.l(m));
      paramInt += 1;
    }
    return j;
  }
  
  private int a(Throwable paramThrowable, int paramInt)
  {
    int m = 0;
    int k = CodedOutputStream.b(1, b.a(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int j = k;
    if (localObject != null) {
      j = k + CodedOutputStream.b(3, b.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int n = localObject.length;
    k = 0;
    while (k < n)
    {
      int i1 = a(localObject[k], true);
      int i2 = CodedOutputStream.j(4);
      int i3 = CodedOutputStream.l(i1);
      k += 1;
      j = i1 + (i2 + i3) + j;
    }
    localObject = paramThrowable.getCause();
    k = j;
    if (localObject != null)
    {
      k = m;
      paramThrowable = (Throwable)localObject;
      if (paramInt < i)
      {
        paramInt = a((Throwable)localObject, paramInt + 1);
        k = j + (paramInt + (CodedOutputStream.j(6) + CodedOutputStream.l(paramInt)));
      }
    }
    else
    {
      return k;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      k += 1;
    }
    return j + CodedOutputStream.d(7, k);
  }
  
  private b a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return b.a(paramString);
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
    throws Exception
  {
    paramCodedOutputStream.g(5, 2);
    paramCodedOutputStream.k(a(paramFloat, paramInt1, paramBoolean, paramInt2, paramLong1, paramLong2));
    paramCodedOutputStream.a(1, paramFloat);
    paramCodedOutputStream.c(2, paramInt1);
    paramCodedOutputStream.a(3, paramBoolean);
    paramCodedOutputStream.a(4, paramInt2);
    paramCodedOutputStream.a(5, paramLong1);
    paramCodedOutputStream.a(6, paramLong2);
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
    throws Exception
  {
    int j = 4;
    paramCodedOutputStream.g(paramInt, 2);
    paramCodedOutputStream.k(a(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod())
    {
      paramCodedOutputStream.a(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
      paramCodedOutputStream.a(2, b.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      if (paramStackTraceElement.getFileName() != null) {
        paramCodedOutputStream.a(3, b.a(paramStackTraceElement.getFileName()));
      }
      if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0)) {
        paramCodedOutputStream.a(4, paramStackTraceElement.getLineNumber());
      }
      if (!paramBoolean) {
        break label145;
      }
    }
    label145:
    for (paramInt = j;; paramInt = 0)
    {
      paramCodedOutputStream.a(5, paramInt);
      return;
      paramCodedOutputStream.a(1, 0L);
      break;
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, b paramb)
    throws Exception
  {
    if (paramb != null)
    {
      paramCodedOutputStream.g(6, 2);
      paramCodedOutputStream.k(a(paramb));
      paramCodedOutputStream.a(1, paramb);
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Thread paramThread, Throwable paramThrowable)
    throws Exception
  {
    paramCodedOutputStream.g(1, 2);
    paramCodedOutputStream.k(a(paramThread, paramThrowable));
    a(paramCodedOutputStream, paramThread, e, 4, true);
    int k = c.length;
    int j = 0;
    while (j < k)
    {
      a(paramCodedOutputStream, c[j], (StackTraceElement[])d.get(j), 0, false);
      j += 1;
    }
    a(paramCodedOutputStream, paramThrowable, 1, 2);
    paramCodedOutputStream.g(3, 2);
    paramCodedOutputStream.k(c());
    paramCodedOutputStream.a(1, a);
    paramCodedOutputStream.a(2, a);
    paramCodedOutputStream.a(3, 0L);
    paramCodedOutputStream.g(4, 2);
    paramCodedOutputStream.k(b());
    paramCodedOutputStream.a(1, 0L);
    paramCodedOutputStream.a(2, 0L);
    paramCodedOutputStream.a(3, g);
    if (h != null) {
      paramCodedOutputStream.a(4, h);
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Thread paramThread, Throwable paramThrowable, int paramInt, Map<String, String> paramMap)
    throws Exception
  {
    paramCodedOutputStream.g(3, 2);
    paramCodedOutputStream.k(a(paramThread, paramThrowable, paramInt, paramMap));
    a(paramCodedOutputStream, paramThread, paramThrowable);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      a(paramCodedOutputStream, paramMap);
    }
    if (b != null) {
      if (b.importance == 100) {
        break label86;
      }
    }
    label86:
    for (boolean bool = true;; bool = false)
    {
      paramCodedOutputStream.a(3, bool);
      paramCodedOutputStream.a(4, paramInt);
      return;
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
    throws Exception
  {
    paramCodedOutputStream.g(1, 2);
    paramCodedOutputStream.k(a(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramCodedOutputStream.a(1, b.a(paramThread.getName()));
    paramCodedOutputStream.a(2, paramInt);
    int j = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < j)
    {
      a(paramCodedOutputStream, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Throwable paramThrowable, int paramInt1, int paramInt2)
    throws Exception
  {
    int j = 0;
    paramCodedOutputStream.g(paramInt2, 2);
    paramCodedOutputStream.k(a(paramThrowable, 1));
    paramCodedOutputStream.a(1, b.a(paramThrowable.getClass().getName()));
    Object localObject = paramThrowable.getLocalizedMessage();
    if (localObject != null) {
      paramCodedOutputStream.a(3, b.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int k = localObject.length;
    paramInt2 = 0;
    while (paramInt2 < k)
    {
      a(paramCodedOutputStream, 4, localObject[paramInt2], true);
      paramInt2 += 1;
    }
    localObject = paramThrowable.getCause();
    if (localObject != null)
    {
      paramInt2 = j;
      paramThrowable = (Throwable)localObject;
      if (paramInt1 < i) {
        a(paramCodedOutputStream, (Throwable)localObject, paramInt1 + 1, 6);
      }
    }
    else
    {
      return;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      paramInt2 += 1;
    }
    paramCodedOutputStream.a(7, paramInt2);
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Map<String, String> paramMap)
    throws Exception
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      paramCodedOutputStream.g(2, 2);
      paramCodedOutputStream.k(a((String)paramMap.getKey(), (String)paramMap.getValue()));
      paramCodedOutputStream.a(1, b.a((String)paramMap.getKey()));
      String str = (String)paramMap.getValue();
      paramMap = str;
      if (str == null) {
        paramMap = "";
      }
      paramCodedOutputStream.a(2, b.a(paramMap));
    }
  }
  
  private int b()
  {
    int k = 0 + CodedOutputStream.b(1, 0L) + CodedOutputStream.b(2, 0L) + CodedOutputStream.b(3, g);
    int j = k;
    if (h != null) {
      j = k + CodedOutputStream.b(4, h);
    }
    return j;
  }
  
  private int c()
  {
    return 0 + CodedOutputStream.b(1, a) + CodedOutputStream.b(2, a) + CodedOutputStream.b(3, 0L);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, long paramLong1, Thread paramThread, Throwable paramThrowable, String paramString, Thread[] paramArrayOfThread, float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, List<StackTraceElement[]> paramList, StackTraceElement[] paramArrayOfStackTraceElement, p paramp, Map<String, String> paramMap)
    throws Exception
  {
    b = paramRunningAppProcessInfo;
    d = paramList;
    e = paramArrayOfStackTraceElement;
    c = paramArrayOfThread;
    paramArrayOfThread = paramp.a();
    if (paramArrayOfThread == null) {
      c.h().a("Fabric", "No log data to include with this event.");
    }
    paramp.b();
    paramCodedOutputStream.g(10, 2);
    paramCodedOutputStream.k(a(paramThread, paramThrowable, paramString, paramLong1, paramMap, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3, paramArrayOfThread));
    paramCodedOutputStream.a(1, paramLong1);
    paramCodedOutputStream.a(2, b.a(paramString));
    a(paramCodedOutputStream, paramThread, paramThrowable, paramInt2, paramMap);
    a(paramCodedOutputStream, paramFloat, paramInt1, paramBoolean, paramInt2, paramLong2, paramLong3);
    a(paramCodedOutputStream, paramArrayOfThread);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<IdManager.DeviceIdentifierType, String> paramMap, int paramInt3, String paramString3, String paramString4)
    throws Exception
  {
    paramString1 = b.a(paramString1);
    b localb = a(paramString2);
    paramString2 = a(paramString4);
    paramString3 = a(paramString3);
    paramCodedOutputStream.g(9, 2);
    paramCodedOutputStream.k(a(paramInt1, paramString1, localb, paramInt2, paramLong1, paramLong2, paramBoolean, paramMap, paramInt3, paramString3, paramString2));
    paramCodedOutputStream.a(1, paramString1);
    paramCodedOutputStream.b(3, paramInt1);
    paramCodedOutputStream.a(4, localb);
    paramCodedOutputStream.a(5, paramInt2);
    paramCodedOutputStream.a(6, paramLong1);
    paramCodedOutputStream.a(7, paramLong2);
    paramCodedOutputStream.a(10, paramBoolean);
    paramString1 = paramMap.entrySet().iterator();
    while (paramString1.hasNext())
    {
      paramMap = (Map.Entry)paramString1.next();
      paramCodedOutputStream.g(11, 2);
      paramCodedOutputStream.k(a((IdManager.DeviceIdentifierType)paramMap.getKey(), (String)paramMap.getValue()));
      paramCodedOutputStream.b(1, getKeyprotobufIndex);
      paramCodedOutputStream.a(2, b.a((String)paramMap.getValue()));
    }
    paramCodedOutputStream.a(12, paramInt3);
    if (paramString3 != null) {
      paramCodedOutputStream.a(13, paramString3);
    }
    if (paramString2 != null) {
      paramCodedOutputStream.a(14, paramString2);
    }
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, String paramString1, String paramString2, long paramLong)
    throws Exception
  {
    paramCodedOutputStream.a(1, b.a(paramString2));
    paramCodedOutputStream.a(2, b.a(paramString1));
    paramCodedOutputStream.a(3, paramLong);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, String paramString1, String paramString2, String paramString3)
    throws Exception
  {
    Object localObject = paramString1;
    if (paramString1 == null) {
      localObject = "";
    }
    paramString1 = b.a((String)localObject);
    localObject = a(paramString2);
    b localb = a(paramString3);
    int k = 0 + CodedOutputStream.b(1, paramString1);
    int j = k;
    if (paramString2 != null) {
      j = k + CodedOutputStream.b(2, (b)localObject);
    }
    k = j;
    if (paramString3 != null) {
      k = j + CodedOutputStream.b(3, localb);
    }
    paramCodedOutputStream.g(6, 2);
    paramCodedOutputStream.k(k);
    paramCodedOutputStream.a(1, paramString1);
    if (paramString2 != null) {
      paramCodedOutputStream.a(2, (b)localObject);
    }
    if (paramString3 != null) {
      paramCodedOutputStream.a(3, localb);
    }
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
    throws Exception
  {
    paramString1 = b.a(paramString1);
    paramString2 = b.a(paramString2);
    paramString3 = b.a(paramString3);
    paramString4 = b.a(paramString4);
    paramCodedOutputStream.g(7, 2);
    paramCodedOutputStream.k(a(paramString1, paramString2, paramString3, paramString4, paramInt));
    paramCodedOutputStream.a(1, paramString1);
    paramCodedOutputStream.a(2, paramString2);
    paramCodedOutputStream.a(3, paramString3);
    paramCodedOutputStream.g(5, 2);
    paramCodedOutputStream.k(a());
    paramCodedOutputStream.a(1, new g().a(f));
    paramCodedOutputStream.a(6, paramString4);
    paramCodedOutputStream.b(10, paramInt);
  }
  
  public void a(CodedOutputStream paramCodedOutputStream, boolean paramBoolean)
    throws Exception
  {
    b localb1 = b.a(Build.VERSION.RELEASE);
    b localb2 = b.a(Build.VERSION.CODENAME);
    paramCodedOutputStream.g(8, 2);
    paramCodedOutputStream.k(a(localb1, localb2, paramBoolean));
    paramCodedOutputStream.b(1, 3);
    paramCodedOutputStream.a(2, localb1);
    paramCodedOutputStream.a(3, localb2);
    paramCodedOutputStream.a(4, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */