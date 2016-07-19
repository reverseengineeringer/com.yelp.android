.class public Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->f:Landroid/os/Handler;

    .line 515
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->e:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 516
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->e:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    return-object v0
.end method

.method private a(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a:Landroid/hardware/Camera$Area;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a:Landroid/hardware/Camera$Area;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 578
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;Landroid/hardware/Camera$Parameters;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->b:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/ui/activities/camera/b;
    .locals 1

    .prologue
    .line 532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->c:Ljava/lang/Integer;

    .line 533
    return-object p0
.end method

.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;)Lcom/yelp/android/ui/activities/camera/b;
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->b:Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    .line 521
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method
