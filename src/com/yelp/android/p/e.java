package com.yelp.android.p;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.support.v4.view.d;
import android.support.v4.view.q;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.i;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import com.yelp.android.j.a.k;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class e
  extends MenuInflater
{
  private static final Class<?>[] a = { Context.class };
  private static final Class<?>[] b = a;
  private final Object[] c;
  private final Object[] d;
  private Context e;
  private Object f;
  
  public e(Context paramContext)
  {
    super(paramContext);
    e = paramContext;
    c = new Object[] { paramContext };
    d = c;
  }
  
  private Object a(Object paramObject)
  {
    if ((paramObject instanceof Activity)) {}
    while (!(paramObject instanceof ContextWrapper)) {
      return paramObject;
    }
    return a(((ContextWrapper)paramObject).getBaseContext());
  }
  
  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
    throws XmlPullParserException, IOException
  {
    b localb = new b(paramMenu);
    int i = paramXmlPullParser.getEventType();
    label49:
    int k;
    int j;
    if (i == 2)
    {
      paramMenu = paramXmlPullParser.getName();
      if (paramMenu.equals("menu"))
      {
        i = paramXmlPullParser.next();
        paramMenu = null;
        int m = 0;
        k = i;
        j = 0;
        i = m;
        label65:
        if (j != 0) {
          return;
        }
      }
    }
    switch (k)
    {
    default: 
    case 2: 
    case 3: 
      for (;;)
      {
        k = paramXmlPullParser.next();
        break label65;
        throw new RuntimeException("Expecting menu, got " + paramMenu);
        j = paramXmlPullParser.next();
        i = j;
        if (j != 1) {
          break;
        }
        i = j;
        break label49;
        if (i == 0)
        {
          String str = paramXmlPullParser.getName();
          if (str.equals("group"))
          {
            localb.a(paramAttributeSet);
          }
          else if (str.equals("item"))
          {
            localb.b(paramAttributeSet);
          }
          else if (str.equals("menu"))
          {
            a(paramXmlPullParser, paramAttributeSet, localb.c());
          }
          else
          {
            paramMenu = str;
            i = 1;
            continue;
            str = paramXmlPullParser.getName();
            if ((i != 0) && (str.equals(paramMenu)))
            {
              paramMenu = null;
              i = 0;
            }
            else if (str.equals("group"))
            {
              localb.a();
            }
            else if (str.equals("item"))
            {
              if (!localb.d()) {
                if ((b.a(localb) != null) && (b.a(localb).e())) {
                  localb.c();
                } else {
                  localb.b();
                }
              }
            }
            else if (str.equals("menu"))
            {
              j = 1;
            }
          }
        }
      }
    }
    throw new RuntimeException("Unexpected end of document");
  }
  
  private Object c()
  {
    if (f == null) {
      f = a(e);
    }
    return f;
  }
  
  /* Error */
  public void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 144
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 146	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 5
    //   19: aconst_null
    //   20: astore 4
    //   22: aload_0
    //   23: getfield 36	com/yelp/android/p/e:e	Landroid/content/Context;
    //   26: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 156	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 4
    //   39: aload 6
    //   41: astore_3
    //   42: aload 6
    //   44: astore 5
    //   46: aload_0
    //   47: aload 6
    //   49: aload 6
    //   51: invokestatic 162	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   54: aload_2
    //   55: invokespecial 115	com/yelp/android/p/e:a	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   58: aload 6
    //   60: ifnull -47 -> 13
    //   63: aload 6
    //   65: invokeinterface 167 1 0
    //   70: return
    //   71: astore_2
    //   72: aload 4
    //   74: astore_3
    //   75: new 169	android/view/InflateException
    //   78: dup
    //   79: ldc -85
    //   81: aload_2
    //   82: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   85: athrow
    //   86: astore_2
    //   87: aload_3
    //   88: ifnull +9 -> 97
    //   91: aload_3
    //   92: invokeinterface 167 1 0
    //   97: aload_2
    //   98: athrow
    //   99: astore_2
    //   100: aload 5
    //   102: astore_3
    //   103: new 169	android/view/InflateException
    //   106: dup
    //   107: ldc -85
    //   109: aload_2
    //   110: invokespecial 174	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	e
    //   0	114	1	paramInt	int
    //   0	114	2	paramMenu	Menu
    //   15	88	3	localObject1	Object
    //   20	53	4	localObject2	Object
    //   17	84	5	localObject3	Object
    //   33	31	6	localXmlResourceParser	android.content.res.XmlResourceParser
    // Exception table:
    //   from	to	target	type
    //   22	35	71	org/xmlpull/v1/XmlPullParserException
    //   46	58	71	org/xmlpull/v1/XmlPullParserException
    //   22	35	86	finally
    //   46	58	86	finally
    //   75	86	86	finally
    //   103	114	86	finally
    //   22	35	99	java/io/IOException
    //   46	58	99	java/io/IOException
  }
  
  private static class a
    implements MenuItem.OnMenuItemClickListener
  {
    private static final Class<?>[] a = { MenuItem.class };
    private Object b;
    private Method c;
    
    public a(Object paramObject, String paramString)
    {
      b = paramObject;
      Class localClass = paramObject.getClass();
      try
      {
        c = localClass.getMethod(paramString, a);
        return;
      }
      catch (Exception paramObject)
      {
        paramString = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
        paramString.initCause((Throwable)paramObject);
        throw paramString;
      }
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      try
      {
        if (c.getReturnType() == Boolean.TYPE) {
          return ((Boolean)c.invoke(b, new Object[] { paramMenuItem })).booleanValue();
        }
        c.invoke(b, new Object[] { paramMenuItem });
        return true;
      }
      catch (Exception paramMenuItem)
      {
        throw new RuntimeException(paramMenuItem);
      }
    }
  }
  
  private class b
  {
    private Menu b;
    private int c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private int k;
    private CharSequence l;
    private CharSequence m;
    private int n;
    private char o;
    private char p;
    private int q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private String w;
    private String x;
    private String y;
    private d z;
    
    public b(Menu paramMenu)
    {
      b = paramMenu;
      a();
    }
    
    private char a(String paramString)
    {
      if (paramString == null) {
        return '\000';
      }
      return paramString.charAt(0);
    }
    
    private <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
    {
      try
      {
        paramArrayOfClass = e.a(e.this).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
        paramArrayOfClass.setAccessible(true);
        paramArrayOfClass = paramArrayOfClass.newInstance(paramArrayOfObject);
        return paramArrayOfClass;
      }
      catch (Exception paramArrayOfClass)
      {
        Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
      }
      return null;
    }
    
    private void a(MenuItem paramMenuItem)
    {
      int i1 = 1;
      Object localObject = paramMenuItem.setChecked(r).setVisible(s).setEnabled(t);
      if (q >= 1) {}
      for (boolean bool = true;; bool = false)
      {
        ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(m).setIcon(n).setAlphabeticShortcut(o).setNumericShortcut(p);
        if (u >= 0) {
          q.a(paramMenuItem, u);
        }
        if (y == null) {
          break label162;
        }
        if (!e.a(e.this).isRestricted()) {
          break;
        }
        throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
      }
      paramMenuItem.setOnMenuItemClickListener(new e.a(e.c(e.this), y));
      label162:
      if ((paramMenuItem instanceof h)) {
        localObject = (h)paramMenuItem;
      }
      if (q >= 2)
      {
        if ((paramMenuItem instanceof h)) {
          ((h)paramMenuItem).a(true);
        }
      }
      else
      {
        if (w == null) {
          break label297;
        }
        q.a(paramMenuItem, (View)a(w, e.b(), e.d(e.this)));
      }
      for (;;)
      {
        if (v > 0)
        {
          if (i1 != 0) {
            break label286;
          }
          q.b(paramMenuItem, v);
        }
        for (;;)
        {
          if (z != null) {
            q.a(paramMenuItem, z);
          }
          return;
          if (!(paramMenuItem instanceof i)) {
            break;
          }
          ((i)paramMenuItem).a(true);
          break;
          label286:
          Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
        }
        label297:
        i1 = 0;
      }
    }
    
    public void a()
    {
      c = 0;
      d = 0;
      e = 0;
      f = 0;
      g = true;
      h = true;
    }
    
    public void a(AttributeSet paramAttributeSet)
    {
      paramAttributeSet = e.a(e.this).obtainStyledAttributes(paramAttributeSet, a.k.MenuGroup);
      c = paramAttributeSet.getResourceId(a.k.MenuGroup_android_id, 0);
      d = paramAttributeSet.getInt(a.k.MenuGroup_android_menuCategory, 0);
      e = paramAttributeSet.getInt(a.k.MenuGroup_android_orderInCategory, 0);
      f = paramAttributeSet.getInt(a.k.MenuGroup_android_checkableBehavior, 0);
      g = paramAttributeSet.getBoolean(a.k.MenuGroup_android_visible, true);
      h = paramAttributeSet.getBoolean(a.k.MenuGroup_android_enabled, true);
      paramAttributeSet.recycle();
    }
    
    public void b()
    {
      i = true;
      a(b.add(c, j, k, l));
    }
    
    public void b(AttributeSet paramAttributeSet)
    {
      int i2 = 1;
      paramAttributeSet = e.a(e.this).obtainStyledAttributes(paramAttributeSet, a.k.MenuItem);
      j = paramAttributeSet.getResourceId(a.k.MenuItem_android_id, 0);
      k = (paramAttributeSet.getInt(a.k.MenuItem_android_menuCategory, d) & 0xFFFF0000 | paramAttributeSet.getInt(a.k.MenuItem_android_orderInCategory, e) & 0xFFFF);
      l = paramAttributeSet.getText(a.k.MenuItem_android_title);
      m = paramAttributeSet.getText(a.k.MenuItem_android_titleCondensed);
      n = paramAttributeSet.getResourceId(a.k.MenuItem_android_icon, 0);
      o = a(paramAttributeSet.getString(a.k.MenuItem_android_alphabeticShortcut));
      p = a(paramAttributeSet.getString(a.k.MenuItem_android_numericShortcut));
      int i1;
      if (paramAttributeSet.hasValue(a.k.MenuItem_android_checkable)) {
        if (paramAttributeSet.getBoolean(a.k.MenuItem_android_checkable, false))
        {
          i1 = 1;
          q = i1;
          label156:
          r = paramAttributeSet.getBoolean(a.k.MenuItem_android_checked, false);
          s = paramAttributeSet.getBoolean(a.k.MenuItem_android_visible, g);
          t = paramAttributeSet.getBoolean(a.k.MenuItem_android_enabled, h);
          u = paramAttributeSet.getInt(a.k.MenuItem_showAsAction, -1);
          y = paramAttributeSet.getString(a.k.MenuItem_android_onClick);
          v = paramAttributeSet.getResourceId(a.k.MenuItem_actionLayout, 0);
          w = paramAttributeSet.getString(a.k.MenuItem_actionViewClass);
          x = paramAttributeSet.getString(a.k.MenuItem_actionProviderClass);
          if (x == null) {
            break label333;
          }
          i1 = i2;
          label264:
          if ((i1 == 0) || (v != 0) || (w != null)) {
            break label338;
          }
        }
      }
      for (z = ((d)a(x, e.a(), e.b(e.this)));; z = null)
      {
        paramAttributeSet.recycle();
        i = false;
        return;
        i1 = 0;
        break;
        q = f;
        break label156;
        label333:
        i1 = 0;
        break label264;
        label338:
        if (i1 != 0) {
          Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
        }
      }
    }
    
    public SubMenu c()
    {
      i = true;
      SubMenu localSubMenu = b.addSubMenu(c, j, k, l);
      a(localSubMenu.getItem());
      return localSubMenu;
    }
    
    public boolean d()
    {
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */