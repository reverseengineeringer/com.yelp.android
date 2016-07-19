package com.flipboard.bottomsheet.commons;

import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.widget.ImageView;

class a$b$1
  extends AsyncTask<Void, Void, Drawable>
{
  a$b$1(a.b paramb, a.a parama, a.b.a parama1) {}
  
  protected Drawable a(Void... paramVarArgs)
  {
    return a.d.loadIcon(a.b.a(c));
  }
  
  protected void a(Drawable paramDrawable)
  {
    a.a = paramDrawable;
    a.a.a(a, null);
    b.a.setImageDrawable(paramDrawable);
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.a.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */