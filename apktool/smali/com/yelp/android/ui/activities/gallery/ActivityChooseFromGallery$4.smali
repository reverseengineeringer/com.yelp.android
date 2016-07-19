.class Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/gallery/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 548
    if-eqz p2, :cond_1

    .line 549
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 550
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 551
    const-string/jumbo v1, "extra_file_path"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yelp/android/util/e;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string/jumbo v1, "extra_media_source"

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 559
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    new-instance v2, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4$1;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4$1;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/Features;->isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/Features$a;)Lcom/yelp/android/appdata/g;

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->g(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->h(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->f(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$4;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/net/Uri;Z)V

    goto :goto_0
.end method
