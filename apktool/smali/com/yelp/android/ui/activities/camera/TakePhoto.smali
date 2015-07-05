.class public Lcom/yelp/android/ui/activities/camera/TakePhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "TakePhoto.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/SurfaceView;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

.field private e:Z

.field private f:Lcom/yelp/android/ui/activities/media/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 354
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
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
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string/jumbo v1, "CameraId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "extra_started_from_gallery"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const/4 v1, -0x1

    if-le p4, v1, :cond_0

    .line 68
    const-string/jumbo v1, "CameraId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 348
    const-string/jumbo v0, "extra_file_path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo v0, "extra_media_source"

    invoke-static {p0, v0, p2}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 350
    const-string/jumbo v0, "extra_is_video"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    return-object p0
.end method

.method public static a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;ZII)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 335
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "extra_video_trim_begin"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string/jumbo v1, "extra_video_trim_end"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/io/File;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "extra_file_path"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "extra_media_source"

    const-class v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Landroid/view/SurfaceView;

    new-instance v2, Lcom/yelp/android/ui/activities/camera/q;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/camera/q;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;Lcom/yelp/android/ui/activities/camera/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V

    .line 180
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Landroid/view/SurfaceView;

    const v0, 0x7f0c01b4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V

    .line 182
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f()V

    return-void
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "extra_is_video"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 185
    const v0, 0x7f0c01b9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    new-instance v1, Lcom/yelp/android/ui/activities/camera/n;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/n;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public static d(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "extra_video_trim_begin"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    return-object v0
.end method

.method public static e(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 98
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
    .line 208
    const v0, 0x7f0c01b7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 209
    new-instance v1, Lcom/yelp/android/ui/activities/camera/o;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/o;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v1, Lcom/yelp/android/ui/activities/media/d;

    sget-object v2, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-direct {v1, p0, v0, v2}, Lcom/yelp/android/ui/activities/media/d;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/d;

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public static f(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 102
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
    .line 320
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    new-instance v0, Lcom/yelp/android/ui/activities/camera/p;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/p;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void

    .line 277
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TakePhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 238
    sparse-switch p1, :sswitch_data_0

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    :goto_1
    return-void

    .line 240
    :sswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_1

    .line 244
    :cond_1
    if-ne p2, v1, :cond_0

    .line 245
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 250
    :sswitch_1
    if-ne p2, v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 264
    :sswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c()V

    .line 265
    if-ne p2, v1, :cond_0

    .line 266
    invoke-virtual {p0, v1, p3}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x405 -> :sswitch_0
        0x410 -> :sswitch_1
        0x41e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    if-nez p1, :cond_1

    const-string/jumbo v0, "CameraId"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    :goto_0
    const-string/jumbo v2, "extra_business_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a:Ljava/lang/String;

    .line 112
    const-string/jumbo v2, "extra_started_from_gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e:Z

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;-><init>(ILandroid/view/Display;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f()V

    .line 125
    :goto_1
    return-void

    .line 109
    :cond_1
    const-string/jumbo v0, "CameraId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->setContentView(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 311
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 298
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/media/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f:Lcom/yelp/android/ui/activities/media/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/d;->cancel(Z)Z

    .line 305
    :cond_1
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a()Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string/jumbo v0, "CameraId"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 3

    .prologue
    const v1, 0x7f0c01b3

    const/16 v2, 0x8

    .line 129
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 135
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b:Landroid/view/SurfaceView;

    .line 137
    const v0, 0x7f0c01b6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/l;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/l;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f0c01b8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/view/View;)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c()V

    .line 154
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d()V

    .line 156
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e()V

    .line 158
    const v0, 0x7f0c01b5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 160
    if-eqz v1, :cond_2

    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    new-instance v1, Lcom/yelp/android/ui/activities/camera/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/m;-><init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
