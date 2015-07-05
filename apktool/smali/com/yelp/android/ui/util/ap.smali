.class public final Lcom/yelp/android/ui/util/ap;
.super Lcom/yelp/android/ui/util/ImageProcessingTask;
.source "ImageProcessingTask.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/ImageProcessingTask;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V

    .line 288
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap;->a:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    .line 313
    :goto_0
    if-eqz v2, :cond_2

    .line 314
    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    instance-of v3, v0, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 316
    check-cast v0, Landroid/graphics/Bitmap;

    .line 324
    :goto_1
    if-nez v0, :cond_0

    .line 325
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    :cond_0
    return-object v0

    .line 318
    :cond_1
    const-string/jumbo v0, "output"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 320
    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ap;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v1, "Device is giving us mem bitmap which should not be supported!"

    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ap;->b(Landroid/graphics/Bitmap;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    check-cast p1, [Landroid/content/Context;

    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
