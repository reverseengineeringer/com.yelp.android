.class public Lcom/yelp/android/ui/map/g;
.super Ljava/lang/Object;
.source "MapHelper.java"


# instance fields
.field private a:Lcom/google/android/gms/maps/MapView;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/yelp/android/ui/map/i;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/map/i;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/yelp/android/ui/map/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/h;-><init>(Lcom/yelp/android/ui/map/g;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/g;->f:Ljava/lang/Runnable;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ui/map/g;->e:Lcom/yelp/android/ui/map/i;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/map/g;->c:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/map/g;->d:Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/map/g;->f()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/g;)Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/map/g;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/map/g;->g()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/map/g;)Lcom/yelp/android/ui/map/i;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->e:Lcom/yelp/android/ui/map/i;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/map/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/map/g;->b:Z

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/map/g;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/g;->b:Z

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/yelp/android/ui/map/g;->f()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 91
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v1, "extra.map_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    .line 69
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 97
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 103
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/map/g;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 117
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/g;->b:Z

    return v0
.end method
