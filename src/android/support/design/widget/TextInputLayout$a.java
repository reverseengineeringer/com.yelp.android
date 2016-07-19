package android.support.design.widget;

import android.support.v4.view.a;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import com.yelp.android.h.c;
import java.util.List;

class TextInputLayout$a
  extends a
{
  private TextInputLayout$a(TextInputLayout paramTextInputLayout) {}
  
  public void a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
  }
  
  public void a(View paramView, c paramc)
  {
    super.a(paramView, paramc);
    paramc.b(TextInputLayout.class.getSimpleName());
    paramView = TextInputLayout.a(a).h();
    if (!TextUtils.isEmpty(paramView)) {
      paramc.c(paramView);
    }
    if (TextInputLayout.b(a) != null) {
      paramc.d(TextInputLayout.b(a));
    }
    if (TextInputLayout.c(a) != null) {}
    for (paramView = TextInputLayout.c(a).getText();; paramView = null)
    {
      if (!TextUtils.isEmpty(paramView))
      {
        paramc.j(true);
        paramc.e(paramView);
      }
      return;
    }
  }
  
  public void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.b(paramView, paramAccessibilityEvent);
    paramView = TextInputLayout.a(a).h();
    if (!TextUtils.isEmpty(paramView)) {
      paramAccessibilityEvent.getText().add(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */