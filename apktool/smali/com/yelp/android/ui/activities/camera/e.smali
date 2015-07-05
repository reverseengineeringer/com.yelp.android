.class public Lcom/yelp/android/ui/activities/camera/e;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/b;


# instance fields
.field private a:Landroid/hardware/Camera$Area;

.field private b:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private final e:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->f:Landroid/os/Handler;

    .line 378
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/e;->e:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->e:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method private a(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->a:Landroid/hardware/Camera$Area;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->a:Landroid/hardware/Camera$Area;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 440
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/e;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/e;->a(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->b:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/ui/activities/camera/b;
    .locals 1

    .prologue
    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->c:Ljava/lang/Integer;

    .line 396
    return-object p0
.end method

.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;)Lcom/yelp/android/ui/activities/camera/b;
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/e;->b:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 384
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/f;-><init>(Lcom/yelp/android/ui/activities/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method
