.class public Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "AddBusinessPhoto.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/addphoto/g;
.implements Lcom/yelp/android/ui/activities/camera/ab;


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Ljava/io/File;

.field private c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string/jumbo v1, "yelp:business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "disable_video_for_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 208
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 209
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->b(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 210
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->c(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    .line 211
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    .line 212
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->e(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:I

    .line 213
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->f(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:I

    .line 214
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g()V

    return-void
.end method

.method private d()Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f()V

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    const v1, 0x7f070492

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 332
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->VIDEO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    :goto_0
    new-instance v3, Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/addphoto/a;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;Lcom/yelp/android/av/i;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 355
    return-void

    .line 332
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;->PHOTO:Lcom/yelp/android/appdata/webrequests/ValidateCaptionRequest$ContentType;

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-eq v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/yelp/android/util/l;->a(Ljava/io/File;)Z

    move-result v0

    .line 363
    if-nez v0, :cond_0

    .line 364
    const-string/jumbo v0, "Photo"

    const-string/jumbo v1, "Copying the photo to the user gallery failed!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 372
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 373
    const-string/jumbo v1, "caption_extra"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string/jumbo v1, "bitmap_extra"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v1, "photo_id_extra"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 379
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(ILandroid/content/Intent;)V

    .line 380
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    .line 381
    return-void
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 384
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 385
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v2, "has_caption"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v0, "user_chose_keyframe"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v0, "source"

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessVideoSave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v1, :cond_2

    .line 395
    invoke-static {v0}, Lcom/yelp/android/util/aj;->a(Ljava/lang/String;)I

    move-result v1

    .line 396
    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:I

    if-ne v2, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 414
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    const-string/jumbo v1, "is_video_extra"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setResult(ILandroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    .line 421
    return-void

    :cond_0
    move v0, v6

    .line 386
    goto :goto_0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:I

    iget v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:I

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/services/VideoTrimService;->a(Landroid/content/Context;Ljava/io/File;IILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 401
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/yelp/android/util/l;->b(Ljava/io/File;)Z

    move-result v1

    .line 405
    if-nez v1, :cond_3

    .line 406
    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "Copying the video file to the Movies directory failed!"

    invoke-static {v1, v2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v7}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-nez v0, :cond_0

    .line 425
    const-string/jumbo v0, "unknown"

    .line 434
    :goto_0
    return-object v0

    .line 427
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/addphoto/b;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 434
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 429
    :pswitch_0
    const-string/jumbo v0, "gallery"

    goto :goto_0

    .line 432
    :pswitch_1
    const-string/jumbo v0, "camera"

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->supportInvalidateOptionsMenu()V

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->i:I

    iget v3, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->j:I

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01d4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    goto :goto_1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    if-ne v0, v1, :cond_3

    const v0, 0x7f0704ff

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 312
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    const/4 v2, 0x0

    const v3, 0x7f07064f

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x415

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 309
    :cond_3
    const v0, 0x7f0704fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/util/List;

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 265
    const v1, 0x7f070463

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->showInfoDialog(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;

    invoke-static {p0, v0, p2, v1}, Lcom/yelp/android/util/z;->a(Landroid/content/Context;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()V

    goto :goto_0

    .line 278
    :cond_1
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 455
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 218
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 220
    :sswitch_0
    if-ne p2, v1, :cond_2

    .line 221
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:Z

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "take_photo_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Intent;)V

    .line 225
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 227
    :goto_1
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoShare:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->finish()V

    goto :goto_0

    .line 233
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 234
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Z

    .line 235
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e()V

    goto :goto_0

    .line 239
    :sswitch_2
    if-nez p2, :cond_0

    .line 240
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:Z

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0x415 -> :sswitch_2
        0x41d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_1

    .line 131
    const-string/jumbo v0, "file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "file_path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    .line 134
    :cond_0
    const-string/jumbo v0, "image_source"

    const-class v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p1, v0, v2}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 139
    const-string/jumbo v0, "disable_video_for_reviews"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:Z

    .line 140
    const-string/jumbo v0, "yelp:business"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const-string/jumbo v0, "take_photo_data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Intent;)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Z

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 155
    return-void

    :cond_3
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 200
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->h:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPostResume()V

    .line 178
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->l:Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 164
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->f:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->k:Z

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    const v0, 0x7f040019

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->overridePendingTransition(II)V

    .line 173
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v0, "file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    const-string/jumbo v0, "image_source"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 194
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 2

    .prologue
    .line 446
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->e:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 450
    :cond_0
    return-void
.end method
