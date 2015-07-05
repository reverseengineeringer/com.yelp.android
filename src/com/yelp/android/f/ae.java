package com.yelp.android.f;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class ae
  extends AccessibilityNodeProvider
{
  ae(af paramaf) {}
  
  public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    return (AccessibilityNodeInfo)a.a(paramInt);
  }
  
  public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return a.a(paramString, paramInt);
  }
  
  public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return a.a(paramInt1, paramInt2, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */