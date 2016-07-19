package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzg;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class b<T extends a>
{
  private T a;
  private Bundle b;
  private LinkedList<a> c;
  private final e<T> d = new e()
  {
    public void a(T paramAnonymousT)
    {
      b.a(b.this, paramAnonymousT);
      paramAnonymousT = b.a(b.this).iterator();
      while (paramAnonymousT.hasNext()) {
        ((b.a)paramAnonymousT.next()).a(b.b(b.this));
      }
      b.a(b.this).clear();
      b.a(b.this, null);
    }
  };
  
  private void a(int paramInt)
  {
    while ((!c.isEmpty()) && (((a)c.getLast()).a() >= paramInt)) {
      c.removeLast();
    }
  }
  
  private void a(Bundle paramBundle, a parama)
  {
    if (a != null)
    {
      parama.a(a);
      return;
    }
    if (c == null) {
      c = new LinkedList();
    }
    c.add(parama);
    if (paramBundle != null)
    {
      if (b != null) {
        break label76;
      }
      b = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(d);
      return;
      label76:
      b.putAll(paramBundle);
    }
  }
  
  public static void b(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    final int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(localContext);
    String str2 = zzg.zzc(localContext, i, GooglePlayServicesUtil.zzao(localContext));
    String str1 = zzg.zzh(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    paramFrameLayout = new TextView(paramFrameLayout.getContext());
    paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.setText(str2);
    localLinearLayout.addView(paramFrameLayout);
    if (str1 != null)
    {
      paramFrameLayout = new Button(localContext);
      paramFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      paramFrameLayout.setText(str1);
      localLinearLayout.addView(paramFrameLayout);
      paramFrameLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          a.startActivity(GooglePlayServicesUtil.zzbv(i));
        }
      });
    }
  }
  
  public View a(final LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    final FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new a()
    {
      public int a()
      {
        return 2;
      }
      
      public void a(a paramAnonymousa)
      {
        localFrameLayout.removeAllViews();
        localFrameLayout.addView(b.b(b.this).a(paramLayoutInflater, paramViewGroup, paramBundle));
      }
    });
    if (a == null) {
      a(localFrameLayout);
    }
    return localFrameLayout;
  }
  
  public T a()
  {
    return a;
  }
  
  public void a(final Activity paramActivity, final Bundle paramBundle1, final Bundle paramBundle2)
  {
    a(paramBundle2, new a()
    {
      public int a()
      {
        return 0;
      }
      
      public void a(a paramAnonymousa)
      {
        b.b(b.this).a(paramActivity, paramBundle1, paramBundle2);
      }
    });
  }
  
  public void a(final Bundle paramBundle)
  {
    a(paramBundle, new a()
    {
      public int a()
      {
        return 1;
      }
      
      public void a(a paramAnonymousa)
      {
        b.b(b.this).a(paramBundle);
      }
    });
  }
  
  protected void a(FrameLayout paramFrameLayout)
  {
    b(paramFrameLayout);
  }
  
  protected abstract void a(e<T> parame);
  
  public void b()
  {
    a(null, new a()
    {
      public int a()
      {
        return 5;
      }
      
      public void a(a paramAnonymousa)
      {
        b.b(b.this).a();
      }
    });
  }
  
  public void b(Bundle paramBundle)
  {
    if (a != null) {
      a.b(paramBundle);
    }
    while (b == null) {
      return;
    }
    paramBundle.putAll(b);
  }
  
  public void c()
  {
    if (a != null)
    {
      a.b();
      return;
    }
    a(5);
  }
  
  public void d()
  {
    if (a != null)
    {
      a.c();
      return;
    }
    a(2);
  }
  
  public void e()
  {
    if (a != null)
    {
      a.d();
      return;
    }
    a(1);
  }
  
  public void f()
  {
    if (a != null) {
      a.e();
    }
  }
  
  private static abstract interface a
  {
    public abstract int a();
    
    public abstract void a(a parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */