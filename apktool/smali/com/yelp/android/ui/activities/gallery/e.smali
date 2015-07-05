.class Lcom/yelp/android/ui/activities/gallery/e;
.super Landroid/os/AsyncTask;
.source "ActivityChooseFromGallery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/e;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 419
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/e;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/e;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/e;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x423

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 426
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/e;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/gallery/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
