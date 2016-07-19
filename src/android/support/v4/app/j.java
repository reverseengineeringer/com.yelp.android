package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.g.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class j
{
  private final k<?> a;
  
  private j(k<?> paramk)
  {
    a = paramk;
  }
  
  public static final j a(k<?> paramk)
  {
    return new j(paramk);
  }
  
  public l a()
  {
    return a.k();
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.d.a(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public List<Fragment> a(List<Fragment> paramList)
  {
    if (a.d.f == null) {
      return null;
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList(c());
    }
    ((List)localObject).addAll(a.d.f);
    return (List<Fragment>)localObject;
  }
  
  public void a(Configuration paramConfiguration)
  {
    a.d.a(paramConfiguration);
  }
  
  public void a(Parcelable paramParcelable, List<Fragment> paramList)
  {
    a.d.a(paramParcelable, paramList);
  }
  
  public void a(Fragment paramFragment)
  {
    a.d.a(a, a, paramFragment);
  }
  
  public void a(i<String, q> parami)
  {
    a.a(parami);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.b(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public boolean a(Menu paramMenu)
  {
    return a.d.a(paramMenu);
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    return a.d.a(paramMenu, paramMenuInflater);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return a.d.a(paramMenuItem);
  }
  
  public q b()
  {
    return a.l();
  }
  
  public void b(Menu paramMenu)
  {
    a.d.b(paramMenu);
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return a.d.b(paramMenuItem);
  }
  
  public int c()
  {
    ArrayList localArrayList = a.d.f;
    if (localArrayList == null) {
      return 0;
    }
    return localArrayList.size();
  }
  
  public void d()
  {
    a.d.m();
  }
  
  public Parcelable e()
  {
    return a.d.l();
  }
  
  public List<Fragment> f()
  {
    return a.d.k();
  }
  
  public void g()
  {
    a.d.n();
  }
  
  public void h()
  {
    a.d.o();
  }
  
  public void i()
  {
    a.d.p();
  }
  
  public void j()
  {
    a.d.q();
  }
  
  public void k()
  {
    a.d.r();
  }
  
  public void l()
  {
    a.d.s();
  }
  
  public void m()
  {
    a.d.t();
  }
  
  public void n()
  {
    a.d.v();
  }
  
  public void o()
  {
    a.d.w();
  }
  
  public boolean p()
  {
    return a.d.i();
  }
  
  public void q()
  {
    a.m();
  }
  
  public void r()
  {
    a.n();
  }
  
  public void s()
  {
    a.o();
  }
  
  public i<String, q> t()
  {
    return a.p();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */