package com.yelp.common.base;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

class FinalizableReferenceQueue$DecoupledLoader
  implements c
{
  private static final String LOADING_ERROR = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Google Collections to your system class path.";
  
  URL getBaseUrl()
  {
    String str1 = "com.yelp.common.base.internal.Finalizer".replace('.', '/') + ".class";
    URL localURL = getClass().getClassLoader().getResource(str1);
    if (localURL == null) {
      throw new FileNotFoundException(str1);
    }
    String str2 = localURL.toString();
    if (!str2.endsWith(str1)) {
      throw new IOException("Unsupported path style: " + str2);
    }
    return new URL(localURL, str2.substring(0, str2.length() - str1.length()));
  }
  
  public Class<?> loadFinalizer()
  {
    try
    {
      Class localClass = newLoader(getBaseUrl()).loadClass("com.yelp.common.base.internal.Finalizer");
      return localClass;
    }
    catch (Exception localException)
    {
      FinalizableReferenceQueue.access$000().log(Level.WARNING, "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Google Collections to your system class path.", localException);
    }
    return null;
  }
  
  URLClassLoader newLoader(URL paramURL)
  {
    return new URLClassLoader(new URL[] { paramURL });
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.FinalizableReferenceQueue.DecoupledLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */