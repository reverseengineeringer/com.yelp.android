package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<b> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private l d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private b g;
  private boolean h;
  
  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }
  
  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private o a(String paramString, o paramo)
  {
    Object localObject = null;
    int i = 0;
    if (i < a.size())
    {
      b localb = (b)a.get(i);
      if (!b.b(localb).equals(paramString)) {
        break label217;
      }
      localObject = localb;
    }
    label204:
    label217:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        throw new IllegalStateException("No tab known for tag " + paramString);
      }
      paramString = paramo;
      if (g != localObject)
      {
        paramString = paramo;
        if (paramo == null) {
          paramString = d.a();
        }
        if ((g != null) && (b.a(g) != null)) {
          paramString.b(b.a(g));
        }
        if (localObject != null)
        {
          if (b.a((b)localObject) != null) {
            break label204;
          }
          b.a((b)localObject, Fragment.instantiate(c, b.c((b)localObject).getName(), b.d((b)localObject)));
          paramString.a(e, b.a((b)localObject), b.b((b)localObject));
        }
      }
      for (;;)
      {
        g = ((b)localObject);
        return paramString;
        paramString.c(b.a((b)localObject));
      }
    }
  }
  
  private void a()
  {
    if (b == null)
    {
      b = ((FrameLayout)findViewById(e));
      if (b == null) {
        throw new IllegalStateException("No tab content FrameLayout found for id " + e);
      }
    }
  }
  
  private void a(Context paramContext)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      paramContext = new FrameLayout(paramContext);
      b = paramContext;
      b.setId(e);
      localLinearLayout.addView(paramContext, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    e = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void a(Context paramContext, l paraml, int paramInt)
  {
    a(paramContext);
    super.setup();
    c = paramContext;
    d = paraml;
    e = paramInt;
    a();
    b.setId(paramInt);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  public void a(TabHost.TabSpec paramTabSpec, Class<?> paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new a(c));
    String str = paramTabSpec.getTag();
    paramClass = new b(str, paramClass, paramBundle);
    if (h)
    {
      b.a(paramClass, d.a(str));
      if ((b.a(paramClass) != null) && (!b.a(paramClass).isDetached()))
      {
        paramBundle = d.a();
        paramBundle.b(b.a(paramClass));
        paramBundle.a();
      }
    }
    a.add(paramClass);
    addTab(paramTabSpec);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < a.size())
    {
      b localb = (b)a.get(i);
      b.a(localb, d.a(b.b(localb)));
      Object localObject2 = localObject1;
      if (b.a(localb) != null)
      {
        localObject2 = localObject1;
        if (!b.a(localb).isDetached())
        {
          if (!b.b(localb).equals(str)) {
            break label109;
          }
          g = localb;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label109:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = d.a();
        }
        ((o)localObject2).b(b.a(localb));
      }
    }
    h = true;
    localObject1 = a(str, (o)localObject1);
    if (localObject1 != null)
    {
      ((o)localObject1).a();
      d.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = getCurrentTabTag();
    return localSavedState;
  }
  
  public void onTabChanged(String paramString)
  {
    if (h)
    {
      o localo = a(paramString, null);
      if (localo != null) {
        localo.a();
      }
    }
    if (f != null) {
      f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public FragmentTabHost.SavedState a(Parcel paramAnonymousParcel)
      {
        return new FragmentTabHost.SavedState(paramAnonymousParcel, null);
      }
      
      public FragmentTabHost.SavedState[] a(int paramAnonymousInt)
      {
        return new FragmentTabHost.SavedState[paramAnonymousInt];
      }
    };
    String a;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readString();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + a + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(a);
    }
  }
  
  static class a
    implements TabHost.TabContentFactory
  {
    private final Context a;
    
    public a(Context paramContext)
    {
      a = paramContext;
    }
    
    public View createTabContent(String paramString)
    {
      paramString = new View(a);
      paramString.setMinimumWidth(0);
      paramString.setMinimumHeight(0);
      return paramString;
    }
  }
  
  static final class b
  {
    private final String a;
    private final Class<?> b;
    private final Bundle c;
    private Fragment d;
    
    b(String paramString, Class<?> paramClass, Bundle paramBundle)
    {
      a = paramString;
      b = paramClass;
      c = paramBundle;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentTabHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */