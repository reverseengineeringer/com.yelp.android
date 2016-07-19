package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public class c$a
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
  
  public c$a(Context paramContext)
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

/* Location:
 * Qualified Name:     android.support.v7.app.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */