.class public Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;,
        Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;,
        Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;,
        Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/view/Display;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/camera/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Landroid/hardware/Camera;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/view/OrientationEventListener;

.field private j:I

.field private k:Z

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/view/Display;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$1;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->l:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$2;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->m:Ljava/lang/Runnable;

    .line 75
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    .line 76
    iput-object p2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;-><init>(Landroid/content/Context;ILcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Landroid/view/OrientationEventListener;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->k:Z

    .line 83
    return-void
.end method

.method public static a(II)I
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 310
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 311
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 312
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    .line 313
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 317
    :goto_0
    return v0

    .line 315
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method private static a(III)I
    .locals 0

    .prologue
    .line 460
    if-le p0, p2, :cond_0

    .line 466
    :goto_0
    return p2

    .line 463
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 464
    goto :goto_0

    :cond_1
    move p2, p0

    .line 466
    goto :goto_0
.end method

.method public static a(Landroid/view/Display;I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 289
    packed-switch v1, :pswitch_data_0

    .line 304
    :goto_0
    :pswitch_0
    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(II)I

    move-result v0

    return v0

    .line 294
    :pswitch_1
    const/16 v0, 0x5a

    .line 295
    goto :goto_0

    .line 297
    :pswitch_2
    const/16 v0, 0xb4

    .line 298
    goto :goto_0

    .line 300
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;I)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x44fa0000    # 2000.0f

    const/high16 v5, 0x40000000    # 2.0f

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v3, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(III)I

    move-result v0

    .line 441
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v1, v3, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(III)I

    move-result v1

    .line 443
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 444
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v1

    .line 446
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 451
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 452
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 454
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 455
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 456
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 188
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 190
    if-eqz v1, :cond_0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v5, v6

    if-le v4, v5, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:I

    .line 196
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:I

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b:Landroid/view/Display;

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/hardware/Camera;)Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "auto"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "macro"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/hardware/Camera;)V
    .locals 3

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 428
    const-string/jumbo v2, "fixed"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 437
    return-void

    .line 430
    :cond_1
    const-string/jumbo v2, "infinity"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    const-string/jumbo v1, "infinity"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    const-string/jumbo v2, "macro"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const-string/jumbo v1, "macro"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->k:Z

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    return v0
.end method

.method public a(ILandroid/view/SurfaceHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 106
    :goto_0
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    .line 107
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 108
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 114
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceHolder;)V

    .line 116
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    return-void
.end method

.method public a(Landroid/view/SurfaceView;Lcom/yelp/android/ui/activities/camera/a;)V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$d;->camera_focus_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 394
    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b(Landroid/hardware/Camera;)V

    .line 397
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 398
    const-string/jumbo v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 400
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 402
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 403
    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/View;Landroid/view/MotionEvent;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/hardware/Camera$Area;

    invoke-direct {v1, v0, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string/jumbo v1, "Couldn\'t set camera parameter"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Landroid/hardware/Camera$Size;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 171
    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->j:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    .line 172
    :cond_2
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 173
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, v0, Landroid/hardware/Camera$Size;->height:I

    .line 174
    iput v1, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->i:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 238
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 239
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Z

    .line 240
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:Z

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:Z

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Z

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 254
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/camera/a;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 262
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f:Z

    .line 263
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_1
.end method

.method public e()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 323
    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->AUTO:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-class v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 334
    goto :goto_0
.end method

.method public f()Lcom/yelp/android/ui/activities/camera/b;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    return-object v0
.end method

.method public g()Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->OFF:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    goto :goto_0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->g:Z

    .line 274
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->h:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 277
    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 282
    iget v3, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 283
    new-instance v3, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)V

    new-array v0, v1, [[B

    aput-object p1, v0, v2

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    return-void

    :cond_0
    move v0, v2

    .line 283
    goto :goto_0
.end method

.method public onShutter()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 618
    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/camera/a;->d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    goto :goto_0

    .line 620
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 377
    :cond_0
    return v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    return-void
.end method
