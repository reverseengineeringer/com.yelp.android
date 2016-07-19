package com.yelp.android.am;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.request.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class k<T extends View, Z>
  extends a<Z>
{
  private static boolean b = false;
  private static Integer c = null;
  protected final T a;
  private final a d;
  
  public k(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("View must not be null!");
    }
    a = paramT;
    d = new a(paramT);
  }
  
  private void a(Object paramObject)
  {
    if (c == null)
    {
      b = true;
      a.setTag(paramObject);
      return;
    }
    a.setTag(c.intValue(), paramObject);
  }
  
  private Object c()
  {
    if (c == null) {
      return a.getTag();
    }
    return a.getTag(c.intValue());
  }
  
  public b a()
  {
    Object localObject = c();
    if (localObject != null)
    {
      if ((localObject instanceof b)) {
        return (b)localObject;
      }
      throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }
    return null;
  }
  
  public void a(b paramb)
  {
    a(paramb);
  }
  
  public void a(h paramh)
  {
    d.a(paramh);
  }
  
  public T b_()
  {
    return a;
  }
  
  public String toString()
  {
    return "Target for: " + a;
  }
  
  private static class a
  {
    private final View a;
    private final List<h> b = new ArrayList();
    private a c;
    private Point d;
    
    public a(View paramView)
    {
      a = paramView;
    }
    
    private int a(int paramInt, boolean paramBoolean)
    {
      if (paramInt == -2)
      {
        Point localPoint = d();
        if (paramBoolean) {
          return y;
        }
        return x;
      }
      return paramInt;
    }
    
    private void a()
    {
      if (b.isEmpty()) {}
      int i;
      int j;
      do
      {
        return;
        i = c();
        j = b();
      } while ((!a(i)) || (!a(j)));
      a(i, j);
      ViewTreeObserver localViewTreeObserver = a.getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeOnPreDrawListener(c);
      }
      c = null;
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        ((h)localIterator.next()).a(paramInt1, paramInt2);
      }
      b.clear();
    }
    
    private boolean a(int paramInt)
    {
      return (paramInt > 0) || (paramInt == -2);
    }
    
    private int b()
    {
      ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
      if (a(a.getHeight())) {
        return a.getHeight();
      }
      if (localLayoutParams != null) {
        return a(height, true);
      }
      return 0;
    }
    
    private int c()
    {
      int i = 0;
      ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
      if (a(a.getWidth())) {
        i = a.getWidth();
      }
      while (localLayoutParams == null) {
        return i;
      }
      return a(width, false);
    }
    
    @TargetApi(13)
    private Point d()
    {
      if (d != null) {
        return d;
      }
      Display localDisplay = ((WindowManager)a.getContext().getSystemService("window")).getDefaultDisplay();
      if (Build.VERSION.SDK_INT >= 13)
      {
        d = new Point();
        localDisplay.getSize(d);
      }
      for (;;)
      {
        return d;
        d = new Point(localDisplay.getWidth(), localDisplay.getHeight());
      }
    }
    
    public void a(h paramh)
    {
      int i = c();
      int j = b();
      if ((a(i)) && (a(j))) {
        paramh.a(i, j);
      }
      do
      {
        return;
        if (!b.contains(paramh)) {
          b.add(paramh);
        }
      } while (c != null);
      paramh = a.getViewTreeObserver();
      c = new a(this);
      paramh.addOnPreDrawListener(c);
    }
    
    private static class a
      implements ViewTreeObserver.OnPreDrawListener
    {
      private final WeakReference<k.a> a;
      
      public a(k.a parama)
      {
        a = new WeakReference(parama);
      }
      
      public boolean onPreDraw()
      {
        if (Log.isLoggable("ViewTarget", 2)) {
          Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
        }
        k.a locala = (k.a)a.get();
        if (locala != null) {
          k.a.a(locala);
        }
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */