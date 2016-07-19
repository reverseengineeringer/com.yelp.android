.class public Lcom/yelp/android/ui/activities/camera/TakePhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/camera/TakePhoto$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

.field private e:Z

.field private f:Lcom/yelp/android/ui/activities/media/b;

.field private g:Ljava/io/File;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 442
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string/jumbo v1, "CameraId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "extra_started_from_gallery"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const/4 v1, -0x1

    if-le p4, v1, :cond_0

    .line 77
    const-string/jumbo v1, "CameraId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 436
    const-string/jumbo v0, "extra_file_path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v0, "extra_media_source"

    invoke-static {p0, v0, p2}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 438
    const-string/jumbo v0, "extra_is_video"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    return-object p0
.end method

.method public static a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;ZII)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 424
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    .line 425
    const-string/jumbo v1, "extra_video_trim_begin"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string/jumbo v1, "extra_video_trim_end"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/io/File;
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "extra_file_path"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/TakePhoto;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->g:Ljava/io/File;

    return-object p1
.end method

.method public static b(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "extra_media_source"

    const-class v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    new-instance v2, Lcom/yelp/android/ui/activities/camera/TakePhoto$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/camera/TakePhoto$a;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;Lcom/yelp/android/ui/activities/camera/TakePhoto$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V

    .line 247
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    const v0, 0x7f0f01e4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V

    .line 249
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f()V

    return-void
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "extra_is_video"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 252
    const v0, 0x7f0f01e9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    new-instance v1, Lcom/yelp/android/ui/activities/camera/TakePhoto$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto$3;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method public static d(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "extra_video_trim_begin"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    return-object v0
.end method

.method public static e(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "extra_video_trim_begin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 280
    const v0, 0x7f0f01e7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    new-instance v1, Lcom/yelp/android/ui/activities/camera/TakePhoto$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto$4;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v1, Lcom/yelp/android/ui/activities/media/b;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-direct {v1, p0, v0, v2}, Lcom/yelp/android/ui/activities/media/b;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/b;

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    return-void
.end method

.method public static f(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 117
    const-string/jumbo v0, "extra_video_trim_end"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    .line 420
    :goto_0
    return-void

    .line 411
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 418
    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    new-instance v0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void

    .line 359
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TakePhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 320
    sparse-switch p1, :sswitch_data_0

    .line 354
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 355
    :goto_1
    return-void

    .line 322
    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_1

    .line 326
    :cond_1
    if-ne p2, v3, :cond_0

    .line 327
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 332
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->g:Ljava/io/File;

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, v1, v2, v4}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setIntent(Landroid/content/Intent;)V

    .line 333
    if-ne p2, v3, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 336
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 347
    :sswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c()V

    .line 348
    if-ne p2, v3, :cond_0

    .line 349
    invoke-virtual {p0, v3, p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x408 -> :sswitch_0
        0x415 -> :sswitch_1
        0x427 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const/16 v0, 0xfa

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    if-nez p1, :cond_1

    const-string/jumbo v0, "CameraId"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->h:I

    .line 135
    const-string/jumbo v0, "extra_business_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "extra_started_from_gallery"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e:Z

    .line 142
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->h:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;-><init>(ILandroid/view/Display;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f()V

    .line 156
    :goto_1
    return-void

    .line 131
    :cond_1
    const-string/jumbo v0, "CameraId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 155
    :cond_2
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setContentView(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 399
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 383
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 384
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/media/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/b;->cancel(Z)Z

    .line 391
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const v3, 0x7f070486

    const/4 v2, 0x0

    .line 216
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_3

    .line 217
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v1

    .line 220
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 225
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(I)V

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->recreate()V

    goto :goto_0

    .line 240
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 315
    const-string/jumbo v0, "saved_file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->g:Ljava/io/File;

    .line 316
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    if-eqz v0, :cond_0

    .line 307
    const-string/jumbo v0, "CameraId"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    :cond_0
    const-string/jumbo v0, "saved_file"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->g:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 310
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 6

    .prologue
    const v5, 0x7f0f01e3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 160
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->setCameraWrangler(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    .line 172
    const v0, 0x7f0f01e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/TakePhoto$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto$1;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f0f01e8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/view/View;)V

    .line 186
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c()V

    .line 188
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d()V

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e()V

    .line 192
    const v0, 0x7f0f01e5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 195
    if-eqz v1, :cond_1

    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    new-instance v1, Lcom/yelp/android/ui/activities/camera/TakePhoto$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto$2;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
