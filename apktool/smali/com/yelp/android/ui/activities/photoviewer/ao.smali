.class Lcom/yelp/android/ui/activities/photoviewer/ao;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Lcom/yelp/android/webimageview/WebImageView$ImageLoadedCallback;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ao;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Lcom/yelp/android/webimageview/WebImageView;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ao;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/yelp/android/ui/util/ag;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/ag;-><init>()V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ao;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ao;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/webimageview/WebImageView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/util/ag;->b(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 121
    :cond_0
    return-void
.end method
