.class Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;
.super Landroid/os/AsyncTask;
.source "ActivityChooseFromGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->b:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 626
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yelp/android/util/ffmpeg/FFmpeg;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42c

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 638
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->c:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->j(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    .line 644
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$5;->a(Ljava/lang/Void;)V

    return-void
.end method
