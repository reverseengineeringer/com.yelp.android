package com.facebook.share.internal;

import android.graphics.Bitmap;
import com.facebook.FacebookException;
import com.facebook.g;
import com.facebook.internal.u;
import com.facebook.internal.v;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class i
{
  private static a a;
  private static a b;
  
  private static a a()
  {
    if (b == null) {
      b = new a(null);
    }
    return b;
  }
  
  public static void a(ShareContent paramShareContent)
  {
    a(paramShareContent, a());
  }
  
  private static void a(ShareContent paramShareContent, a parama)
    throws FacebookException
  {
    if (paramShareContent == null) {
      throw new FacebookException("Must provide non-null content to share");
    }
    if ((paramShareContent instanceof ShareLinkContent)) {
      parama.a((ShareLinkContent)paramShareContent);
    }
    do
    {
      return;
      if ((paramShareContent instanceof SharePhotoContent))
      {
        parama.a((SharePhotoContent)paramShareContent);
        return;
      }
      if ((paramShareContent instanceof ShareVideoContent))
      {
        parama.a((ShareVideoContent)paramShareContent);
        return;
      }
    } while (!(paramShareContent instanceof ShareOpenGraphContent));
    parama.a((ShareOpenGraphContent)paramShareContent);
  }
  
  private static void a(Object paramObject, a parama)
  {
    if ((paramObject instanceof ShareOpenGraphObject)) {
      parama.a((ShareOpenGraphObject)paramObject);
    }
    while (!(paramObject instanceof SharePhoto)) {
      return;
    }
    parama.a((SharePhoto)paramObject);
  }
  
  private static void a(String paramString, boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (;;)
    {
      return;
      String[] arrayOfString = paramString.split(":");
      if (arrayOfString.length < 2) {
        throw new FacebookException("Open Graph keys must be namespaced: %s", new Object[] { paramString });
      }
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (arrayOfString[i].isEmpty()) {
          throw new FacebookException("Invalid key found in Open Graph dictionary: %s", new Object[] { paramString });
        }
        i += 1;
      }
    }
  }
  
  private static a b()
  {
    if (a == null) {
      a = new b(null);
    }
    return a;
  }
  
  public static void b(ShareContent paramShareContent)
  {
    a(paramShareContent, a());
  }
  
  private static void b(ShareLinkContent paramShareLinkContent, a parama)
  {
    paramShareLinkContent = paramShareLinkContent.g();
    if ((paramShareLinkContent != null) && (!u.b(paramShareLinkContent))) {
      throw new FacebookException("Image Url must be an http:// or https:// url");
    }
  }
  
  private static void b(ShareOpenGraphAction paramShareOpenGraphAction, a parama)
  {
    if (paramShareOpenGraphAction == null) {
      throw new FacebookException("Must specify a non-null ShareOpenGraphAction");
    }
    if (u.a(paramShareOpenGraphAction.a())) {
      throw new FacebookException("ShareOpenGraphAction must have a non-empty actionType");
    }
    parama.a(paramShareOpenGraphAction, false);
  }
  
  private static void b(ShareOpenGraphContent paramShareOpenGraphContent, a parama)
  {
    parama.a(paramShareOpenGraphContent.e());
    parama = paramShareOpenGraphContent.f();
    if (u.a(parama)) {
      throw new FacebookException("Must specify a previewPropertyName.");
    }
    if (paramShareOpenGraphContent.e().a(parama) == null) {
      throw new FacebookException("Property \"" + parama + "\" was not found on the action. " + "The name of the preview property must match the name of an " + "action property.");
    }
  }
  
  private static void b(ShareOpenGraphObject paramShareOpenGraphObject, a parama)
  {
    if (paramShareOpenGraphObject == null) {
      throw new FacebookException("Cannot share a null ShareOpenGraphObject");
    }
    parama.a(paramShareOpenGraphObject, true);
  }
  
  private static void b(ShareOpenGraphValueContainer paramShareOpenGraphValueContainer, a parama, boolean paramBoolean)
  {
    Iterator localIterator = paramShareOpenGraphValueContainer.c().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      a((String)localObject1, paramBoolean);
      localObject1 = paramShareOpenGraphValueContainer.a((String)localObject1);
      if ((localObject1 instanceof List))
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = ((Iterator)localObject1).next();
          if (localObject2 == null) {
            throw new FacebookException("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
          }
          a(localObject2, parama);
        }
      }
      else
      {
        a(localObject1, parama);
      }
    }
  }
  
  private static void b(SharePhotoContent paramSharePhotoContent, a parama)
  {
    paramSharePhotoContent = paramSharePhotoContent.e();
    if ((paramSharePhotoContent == null) || (paramSharePhotoContent.isEmpty())) {
      throw new FacebookException("Must specify at least one Photo in SharePhotoContent.");
    }
    if (paramSharePhotoContent.size() > 6) {
      throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d photos.", new Object[] { Integer.valueOf(6) }));
    }
    paramSharePhotoContent = paramSharePhotoContent.iterator();
    while (paramSharePhotoContent.hasNext()) {
      parama.a((SharePhoto)paramSharePhotoContent.next());
    }
  }
  
  private static void b(ShareVideo paramShareVideo, a parama)
  {
    if (paramShareVideo == null) {
      throw new FacebookException("Cannot share a null ShareVideo");
    }
    if (paramShareVideo.a() == null) {
      throw new FacebookException("ShareVideo does not have a LocalUrl specified");
    }
  }
  
  private static void b(ShareVideoContent paramShareVideoContent, a parama)
  {
    parama.a(paramShareVideoContent.h());
    paramShareVideoContent = paramShareVideoContent.g();
    if (paramShareVideoContent != null) {
      parama.a(paramShareVideoContent);
    }
  }
  
  public static void c(ShareContent paramShareContent)
  {
    a(paramShareContent, b());
  }
  
  private static void c(SharePhoto paramSharePhoto, a parama)
  {
    if (paramSharePhoto == null) {
      throw new FacebookException("Cannot share a null SharePhoto");
    }
    Bitmap localBitmap = paramSharePhoto.a();
    paramSharePhoto = paramSharePhoto.b();
    if (localBitmap == null)
    {
      if (paramSharePhoto == null) {
        throw new FacebookException("SharePhoto does not have a Bitmap or ImageUrl specified");
      }
      if ((u.b(paramSharePhoto)) && (!parama.a())) {
        throw new FacebookException("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
      }
    }
  }
  
  private static void d(SharePhoto paramSharePhoto, a parama)
  {
    c(paramSharePhoto, parama);
    if ((paramSharePhoto.a() != null) || (!u.b(paramSharePhoto.b()))) {
      v.c(g.f());
    }
  }
  
  private static void e(SharePhoto paramSharePhoto, a parama)
  {
    if (paramSharePhoto == null) {
      throw new FacebookException("Cannot share a null SharePhoto");
    }
    paramSharePhoto = paramSharePhoto.b();
    if ((paramSharePhoto == null) || (!u.b(paramSharePhoto))) {
      throw new FacebookException("SharePhoto must have a non-null imageUrl set to the Uri of an image on the web");
    }
  }
  
  private static class a
  {
    private boolean a = false;
    
    public void a(ShareLinkContent paramShareLinkContent)
    {
      i.a(paramShareLinkContent, this);
    }
    
    public void a(ShareOpenGraphAction paramShareOpenGraphAction)
    {
      i.a(paramShareOpenGraphAction, this);
    }
    
    public void a(ShareOpenGraphContent paramShareOpenGraphContent)
    {
      a = true;
      i.a(paramShareOpenGraphContent, this);
    }
    
    public void a(ShareOpenGraphObject paramShareOpenGraphObject)
    {
      i.a(paramShareOpenGraphObject, this);
    }
    
    public void a(ShareOpenGraphValueContainer paramShareOpenGraphValueContainer, boolean paramBoolean)
    {
      i.a(paramShareOpenGraphValueContainer, this, paramBoolean);
    }
    
    public void a(SharePhoto paramSharePhoto)
    {
      i.b(paramSharePhoto, this);
    }
    
    public void a(SharePhotoContent paramSharePhotoContent)
    {
      i.a(paramSharePhotoContent, this);
    }
    
    public void a(ShareVideo paramShareVideo)
    {
      i.a(paramShareVideo, this);
    }
    
    public void a(ShareVideoContent paramShareVideoContent)
    {
      i.a(paramShareVideoContent, this);
    }
    
    public boolean a()
    {
      return a;
    }
  }
  
  private static class b
    extends i.a
  {
    private b()
    {
      super();
    }
    
    public void a(SharePhoto paramSharePhoto)
    {
      i.a(paramSharePhoto, this);
    }
    
    public void a(SharePhotoContent paramSharePhotoContent)
    {
      throw new FacebookException("Cannot share SharePhotoContent via web sharing dialogs");
    }
    
    public void a(ShareVideoContent paramShareVideoContent)
    {
      throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */