package com.comscore.analytics;

import android.content.Context;
import com.comscore.applications.EventType;
import com.comscore.utils.TransmissionMode;
import java.util.HashMap;

public class h
{
  private static a a = new a();
  
  public static void a()
  {
    a.v();
  }
  
  public static void a(Context paramContext)
  {
    a.a(paramContext);
  }
  
  public static void a(TransmissionMode paramTransmissionMode)
  {
    a.b(paramTransmissionMode, true);
  }
  
  public static void a(String paramString)
  {
    a.a(paramString, true);
  }
  
  public static void a(boolean paramBoolean)
  {
    a.a(paramBoolean, true);
  }
  
  public static void b()
  {
    a.w();
  }
  
  public static void c()
  {
    a.a(EventType.START, new HashMap(), true);
  }
  
  public static String d()
  {
    return a.V();
  }
  
  public static a e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.comscore.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */