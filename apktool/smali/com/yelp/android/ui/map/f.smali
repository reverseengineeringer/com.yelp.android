.class public Lcom/yelp/android/ui/map/f;
.super Ljava/lang/Object;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/map/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/maps/MapView;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/yelp/android/ui/map/f$a;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/map/f$a;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/yelp/android/ui/map/f$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/f$1;-><init>(Lcom/yelp/android/ui/map/f;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/f;->f:Ljava/lang/Runnable;

    .line 50
    iput-object p2, p0, Lcom/yelp/android/ui/map/f;->e:Lcom/yelp/android/ui/map/f$a;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/map/f;->c:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/map/f;->d:Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/map/f;->f()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/f;)Lcom/google/android/gms/maps/MapView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

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

.method static synthetic b(Lcom/yelp/android/ui/map/f;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/map/f;->g()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/map/f;)Lcom/yelp/android/ui/map/f$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->e:Lcom/yelp/android/ui/map/f$a;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/map/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/d;->a(Landroid/content/Context;)I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/map/f;->b:Z

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/map/f;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/f;->b:Z

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/yelp/android/ui/map/f;->f()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->a()V

    .line 92
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/MapView;->b(Landroid/os/Bundle;)V

    .line 110
    const-string/jumbo v1, "extra.map_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/MapView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    .line 70
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->b()V

    .line 98
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->c()V

    .line 104
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/map/f;->a:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->d()V

    .line 118
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/f;->b:Z

    return v0
.end method
