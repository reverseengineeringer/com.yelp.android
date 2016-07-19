.class Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Lcom/yelp/android/webimageview/WebImageView;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/yelp/android/ui/util/s;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/s;-><init>()V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment$1;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/s;->b(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 130
    :cond_0
    return-void
.end method
