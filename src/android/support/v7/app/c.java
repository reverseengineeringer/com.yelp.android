package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v7.internal.widget.p;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.k;
import java.lang.ref.WeakReference;

class c
{
  private TextView A;
  private TextView B;
  private View C;
  private ListAdapter D;
  private int E = -1;
  private int F;
  private int G;
  private int H;
  private int I;
  private int J;
  private int K;
  private int L = 0;
  private Handler M;
  private final View.OnClickListener N = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if ((paramAnonymousView == c.a(c.this)) && (c.b(c.this) != null)) {
        paramAnonymousView = Message.obtain(c.b(c.this));
      }
      for (;;)
      {
        if (paramAnonymousView != null) {
          paramAnonymousView.sendToTarget();
        }
        c.h(c.this).obtainMessage(1, c.g(c.this)).sendToTarget();
        return;
        if ((paramAnonymousView == c.c(c.this)) && (c.d(c.this) != null)) {
          paramAnonymousView = Message.obtain(c.d(c.this));
        } else if ((paramAnonymousView == c.e(c.this)) && (c.f(c.this) != null)) {
          paramAnonymousView = Message.obtain(c.f(c.this));
        } else {
          paramAnonymousView = null;
        }
      }
    }
  };
  private final Context a;
  private final l b;
  private final Window c;
  private CharSequence d;
  private CharSequence e;
  private ListView f;
  private View g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private boolean m = false;
  private Button n;
  private CharSequence o;
  private Message p;
  private Button q;
  private CharSequence r;
  private Message s;
  private Button t;
  private CharSequence u;
  private Message v;
  private ScrollView w;
  private int x = 0;
  private Drawable y;
  private ImageView z;
  
  public c(Context paramContext, l paraml, Window paramWindow)
  {
    a = paramContext;
    b = paraml;
    c = paramWindow;
    M = new b(paraml);
    paramContext = paramContext.obtainStyledAttributes(null, a.k.AlertDialog, a.a.alertDialogStyle, 0);
    F = paramContext.getResourceId(a.k.AlertDialog_android_layout, 0);
    G = paramContext.getResourceId(a.k.AlertDialog_buttonPanelSideLayout, 0);
    H = paramContext.getResourceId(a.k.AlertDialog_listLayout, 0);
    I = paramContext.getResourceId(a.k.AlertDialog_multiChoiceItemLayout, 0);
    J = paramContext.getResourceId(a.k.AlertDialog_singleChoiceItemLayout, 0);
    K = paramContext.getResourceId(a.k.AlertDialog_listItemLayout, 0);
    paramContext.recycle();
  }
  
  private void a(Button paramButton)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    gravity = 1;
    weight = 0.5F;
    paramButton.setLayoutParams(localLayoutParams);
  }
  
  private static boolean a(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(a.a.alertDialogCenterButtons, localTypedValue, true);
    return data != 0;
  }
  
  static boolean a(View paramView)
  {
    if (paramView.onCheckIsTextEditor()) {
      return true;
    }
    if (!(paramView instanceof ViewGroup)) {
      return false;
    }
    paramView = (ViewGroup)paramView;
    int i1 = paramView.getChildCount();
    while (i1 > 0)
    {
      int i2 = i1 - 1;
      i1 = i2;
      if (a(paramView.getChildAt(i2))) {
        return true;
      }
    }
    return false;
  }
  
  private boolean a(ViewGroup paramViewGroup)
  {
    if (C != null)
    {
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      paramViewGroup.addView(C, 0, localLayoutParams);
      c.findViewById(a.f.title_template).setVisibility(8);
      return true;
    }
    z = ((ImageView)c.findViewById(16908294));
    int i1;
    if (!TextUtils.isEmpty(d)) {
      i1 = 1;
    }
    while (i1 != 0)
    {
      A = ((TextView)c.findViewById(a.f.alertTitle));
      A.setText(d);
      if (x != 0)
      {
        z.setImageResource(x);
        return true;
        i1 = 0;
      }
      else
      {
        if (y != null)
        {
          z.setImageDrawable(y);
          return true;
        }
        A.setPadding(z.getPaddingLeft(), z.getPaddingTop(), z.getPaddingRight(), z.getPaddingBottom());
        z.setVisibility(8);
        return true;
      }
    }
    c.findViewById(a.f.title_template).setVisibility(8);
    z.setVisibility(8);
    paramViewGroup.setVisibility(8);
    return false;
  }
  
  private int b()
  {
    if (G == 0) {
      return F;
    }
    if (L == 1) {
      return G;
    }
    return F;
  }
  
  private void b(ViewGroup paramViewGroup)
  {
    w = ((ScrollView)c.findViewById(a.f.scrollView));
    w.setFocusable(false);
    B = ((TextView)c.findViewById(16908299));
    if (B == null) {
      return;
    }
    if (e != null)
    {
      B.setText(e);
      return;
    }
    B.setVisibility(8);
    w.removeView(B);
    if (f != null)
    {
      paramViewGroup = (ViewGroup)w.getParent();
      int i1 = paramViewGroup.indexOfChild(w);
      paramViewGroup.removeViewAt(i1);
      paramViewGroup.addView(f, i1, new ViewGroup.LayoutParams(-1, -1));
      return;
    }
    paramViewGroup.setVisibility(8);
  }
  
  private void c()
  {
    int i1 = 0;
    b((ViewGroup)c.findViewById(a.f.contentPanel));
    boolean bool = d();
    Object localObject = (ViewGroup)c.findViewById(a.f.topPanel);
    p localp = p.a(a, null, a.k.AlertDialog, a.a.alertDialogStyle, 0);
    a((ViewGroup)localObject);
    localObject = c.findViewById(a.f.buttonPanel);
    if (!bool)
    {
      ((View)localObject).setVisibility(8);
      localObject = c.findViewById(a.f.textSpacerNoButtons);
      if (localObject != null) {
        ((View)localObject).setVisibility(0);
      }
    }
    FrameLayout localFrameLayout1 = (FrameLayout)c.findViewById(a.f.customPanel);
    if (g != null)
    {
      localObject = g;
      if (localObject != null) {
        i1 = 1;
      }
      if ((i1 == 0) || (!a((View)localObject))) {
        c.setFlags(131072, 131072);
      }
      if (i1 == 0) {
        break label324;
      }
      FrameLayout localFrameLayout2 = (FrameLayout)c.findViewById(a.f.custom);
      localFrameLayout2.addView((View)localObject, new ViewGroup.LayoutParams(-1, -1));
      if (m) {
        localFrameLayout2.setPadding(i, j, k, l);
      }
      if (f != null) {
        getLayoutParamsweight = 0.0F;
      }
    }
    for (;;)
    {
      localObject = f;
      if ((localObject != null) && (D != null))
      {
        ((ListView)localObject).setAdapter(D);
        i1 = E;
        if (i1 > -1)
        {
          ((ListView)localObject).setItemChecked(i1, true);
          ((ListView)localObject).setSelection(i1);
        }
      }
      localp.b();
      return;
      if (h != 0)
      {
        localObject = LayoutInflater.from(a).inflate(h, localFrameLayout1, false);
        break;
      }
      localObject = null;
      break;
      label324:
      localFrameLayout1.setVisibility(8);
    }
  }
  
  private boolean d()
  {
    n = ((Button)c.findViewById(16908313));
    n.setOnClickListener(N);
    int i1;
    if (TextUtils.isEmpty(o))
    {
      n.setVisibility(8);
      i1 = 0;
      q = ((Button)c.findViewById(16908314));
      q.setOnClickListener(N);
      if (!TextUtils.isEmpty(r)) {
        break label196;
      }
      q.setVisibility(8);
      label96:
      t = ((Button)c.findViewById(16908315));
      t.setOnClickListener(N);
      if (!TextUtils.isEmpty(u)) {
        break label222;
      }
      t.setVisibility(8);
      label143:
      if (a(a))
      {
        if (i1 != 1) {
          break label248;
        }
        a(n);
      }
    }
    for (;;)
    {
      if (i1 == 0) {
        break label280;
      }
      return true;
      n.setText(o);
      n.setVisibility(0);
      i1 = 1;
      break;
      label196:
      q.setText(r);
      q.setVisibility(0);
      i1 |= 0x2;
      break label96;
      label222:
      t.setText(u);
      t.setVisibility(0);
      i1 |= 0x4;
      break label143;
      label248:
      if (i1 == 2) {
        a(q);
      } else if (i1 == 4) {
        a(t);
      }
    }
    label280:
    return false;
  }
  
  public void a()
  {
    b.b(1);
    int i1 = b();
    b.setContentView(i1);
    c();
  }
  
  public void a(int paramInt)
  {
    g = null;
    h = paramInt;
    m = false;
  }
  
  public void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    Message localMessage = paramMessage;
    if (paramMessage == null)
    {
      localMessage = paramMessage;
      if (paramOnClickListener != null) {
        localMessage = M.obtainMessage(paramInt, paramOnClickListener);
      }
    }
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Button does not exist");
    case -1: 
      o = paramCharSequence;
      p = localMessage;
      return;
    case -2: 
      r = paramCharSequence;
      s = localMessage;
      return;
    }
    u = paramCharSequence;
    v = localMessage;
  }
  
  public void a(Drawable paramDrawable)
  {
    y = paramDrawable;
    x = 0;
    if (z != null)
    {
      if (paramDrawable != null) {
        z.setImageDrawable(paramDrawable);
      }
    }
    else {
      return;
    }
    z.setVisibility(8);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    g = paramView;
    h = 0;
    m = true;
    i = paramInt1;
    j = paramInt2;
    k = paramInt3;
    l = paramInt4;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    if (A != null) {
      A.setText(paramCharSequence);
    }
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return (w != null) && (w.executeKeyEvent(paramKeyEvent));
  }
  
  public void b(int paramInt)
  {
    y = null;
    x = paramInt;
    if (z != null)
    {
      if (paramInt != 0) {
        z.setImageResource(x);
      }
    }
    else {
      return;
    }
    z.setVisibility(8);
  }
  
  public void b(View paramView)
  {
    C = paramView;
  }
  
  public void b(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    if (B != null) {
      B.setText(paramCharSequence);
    }
  }
  
  public boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    return (w != null) && (w.executeKeyEvent(paramKeyEvent));
  }
  
  public int c(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    a.getTheme().resolveAttribute(paramInt, localTypedValue, true);
    return resourceId;
  }
  
  public void c(View paramView)
  {
    g = paramView;
    h = 0;
    m = false;
  }
  
  public Button d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case -1: 
      return n;
    case -2: 
      return q;
    }
    return t;
  }
  
  public static class a
  {
    public int A;
    public boolean B = false;
    public boolean[] C;
    public boolean D;
    public boolean E;
    public int F = -1;
    public DialogInterface.OnMultiChoiceClickListener G;
    public Cursor H;
    public String I;
    public String J;
    public AdapterView.OnItemSelectedListener K;
    public a L;
    public boolean M = true;
    public final Context a;
    public final LayoutInflater b;
    public int c = 0;
    public Drawable d;
    public int e = 0;
    public CharSequence f;
    public View g;
    public CharSequence h;
    public CharSequence i;
    public DialogInterface.OnClickListener j;
    public CharSequence k;
    public DialogInterface.OnClickListener l;
    public CharSequence m;
    public DialogInterface.OnClickListener n;
    public boolean o;
    public DialogInterface.OnCancelListener p;
    public DialogInterface.OnDismissListener q;
    public DialogInterface.OnKeyListener r;
    public CharSequence[] s;
    public ListAdapter t;
    public DialogInterface.OnClickListener u;
    public int v;
    public View w;
    public int x;
    public int y;
    public int z;
    
    public a(Context paramContext)
    {
      a = paramContext;
      o = true;
      b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    }
    
    private void b(final c paramc)
    {
      final ListView localListView = (ListView)b.inflate(c.i(paramc), null);
      Object localObject;
      if (D) {
        if (H == null)
        {
          localObject = new ArrayAdapter(a, c.j(paramc), 16908308, s)
          {
            public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
            {
              paramAnonymousView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
              if ((C != null) && (C[paramAnonymousInt] != 0)) {
                localListView.setItemChecked(paramAnonymousInt, true);
              }
              return paramAnonymousView;
            }
          };
          if (L != null) {
            L.a(localListView);
          }
          c.a(paramc, (ListAdapter)localObject);
          c.a(paramc, F);
          if (u == null) {
            break label274;
          }
          localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
            {
              u.onClick(c.g(paramc), paramAnonymousInt);
              if (!E) {
                c.g(paramc).dismiss();
              }
            }
          });
          label110:
          if (K != null) {
            localListView.setOnItemSelectedListener(K);
          }
          if (!E) {
            break label300;
          }
          localListView.setChoiceMode(1);
        }
      }
      for (;;)
      {
        c.a(paramc, localListView);
        return;
        localObject = new CursorAdapter(a, H, false)
        {
          private final int d;
          private final int e;
          
          public void bindView(View paramAnonymousView, Context paramAnonymousContext, Cursor paramAnonymousCursor)
          {
            ((CheckedTextView)paramAnonymousView.findViewById(16908308)).setText(paramAnonymousCursor.getString(d));
            paramAnonymousView = localListView;
            int i = paramAnonymousCursor.getPosition();
            if (paramAnonymousCursor.getInt(e) == 1) {}
            for (boolean bool = true;; bool = false)
            {
              paramAnonymousView.setItemChecked(i, bool);
              return;
            }
          }
          
          public View newView(Context paramAnonymousContext, Cursor paramAnonymousCursor, ViewGroup paramAnonymousViewGroup)
          {
            return b.inflate(c.j(paramc), paramAnonymousViewGroup, false);
          }
        };
        break;
        int i1;
        if (E) {
          i1 = c.k(paramc);
        }
        for (;;)
        {
          if (H == null)
          {
            if (t != null)
            {
              localObject = t;
              break;
              i1 = c.l(paramc);
              continue;
            }
            localObject = new c.c(a, i1, 16908308, s);
            break;
          }
        }
        localObject = new SimpleCursorAdapter(a, i1, H, new String[] { I }, new int[] { 16908308 });
        break;
        label274:
        if (G == null) {
          break label110;
        }
        localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (C != null) {
              C[paramAnonymousInt] = localListView.isItemChecked(paramAnonymousInt);
            }
            G.onClick(c.g(paramc), paramAnonymousInt, localListView.isItemChecked(paramAnonymousInt));
          }
        });
        break label110;
        label300:
        if (D) {
          localListView.setChoiceMode(2);
        }
      }
    }
    
    public void a(c paramc)
    {
      if (g != null)
      {
        paramc.b(g);
        if (h != null) {
          paramc.b(h);
        }
        if (i != null) {
          paramc.a(-1, i, j, null);
        }
        if (k != null) {
          paramc.a(-2, k, l, null);
        }
        if (m != null) {
          paramc.a(-3, m, n, null);
        }
        if ((s != null) || (H != null) || (t != null)) {
          b(paramc);
        }
        if (w == null) {
          break label236;
        }
        if (!B) {
          break label227;
        }
        paramc.a(w, x, y, z, A);
      }
      label227:
      label236:
      while (v == 0)
      {
        return;
        if (f != null) {
          paramc.a(f);
        }
        if (d != null) {
          paramc.a(d);
        }
        if (c != 0) {
          paramc.b(c);
        }
        if (e == 0) {
          break;
        }
        paramc.b(paramc.c(e));
        break;
        paramc.c(w);
        return;
      }
      paramc.a(v);
    }
    
    public static abstract interface a
    {
      public abstract void a(ListView paramListView);
    }
  }
  
  private static final class b
    extends Handler
  {
    private WeakReference<DialogInterface> a;
    
    public b(DialogInterface paramDialogInterface)
    {
      a = new WeakReference(paramDialogInterface);
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      case 0: 
      default: 
        return;
      case -3: 
      case -2: 
      case -1: 
        ((DialogInterface.OnClickListener)obj).onClick((DialogInterface)a.get(), what);
        return;
      }
      ((DialogInterface)obj).dismiss();
    }
  }
  
  private static class c
    extends ArrayAdapter<CharSequence>
  {
    public c(Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence)
    {
      super(paramInt1, paramInt2, paramArrayOfCharSequence);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public boolean hasStableIds()
    {
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */