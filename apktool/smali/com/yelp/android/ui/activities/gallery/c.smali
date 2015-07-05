.class Lcom/yelp/android/ui/activities/gallery/c;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/gallery/n;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 377
    if-eqz p2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lcom/yelp/android/ui/activities/media/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Lcom/yelp/android/ui/activities/media/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/media/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/media/b;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 408
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, "extra_media_source"

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 386
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    goto :goto_0

    .line 394
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/c;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    new-instance v2, Lcom/yelp/android/ui/activities/gallery/d;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/gallery/d;-><init>(Lcom/yelp/android/ui/activities/gallery/c;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/Features;->isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/r;)V

    goto :goto_0
.end method
