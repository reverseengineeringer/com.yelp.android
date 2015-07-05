.class Lcom/yelp/android/ui/activities/camera/q;
.super Ljava/lang/Object;
.source "TakePhoto.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/a;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/TakePhoto;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;Lcom/yelp/android/ui/activities/camera/l;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/q;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 6

    .prologue
    const v5, 0x7f0c01b9

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 359
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e()Ljava/util/EnumSet;

    move-result-object v1

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 361
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g()Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 362
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v1, 0x7f0c01b8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    return-void

    .line 362
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Ljava/io/File;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 388
    if-nez p2, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    .line 418
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_1

    .line 395
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 397
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 398
    const-string/jumbo v6, "GPSLatitudeRef"

    cmpl-double v0, v2, v10

    if-lez v0, :cond_2

    const-string/jumbo v0, "N"

    :goto_1
    invoke-virtual {v1, v6, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v0, "GPSLatitude"

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v6, "GPSLatitudeRef"

    cmpl-double v0, v2, v10

    if-lez v0, :cond_3

    const-string/jumbo v0, "E"

    :goto_2
    invoke-virtual {v1, v6, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v0, "GPSLatitude"

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setIntent(Landroid/content/Intent;)V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v4, 0x7f0704ff

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v5, 0x7f07064f

    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, p2, v2, v3, v4}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 398
    :cond_2
    :try_start_1
    const-string/jumbo v0, "S"

    goto :goto_1

    .line 402
    :cond_3
    const-string/jumbo v0, "W"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string/jumbo v1, "EXIF"

    const-string/jumbo v2, "There was an issue with the Exif Tags "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 372
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v1, 0x7f0c01b9

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/q;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const v1, 0x7f0c01b8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    return-void
.end method

.method public d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
