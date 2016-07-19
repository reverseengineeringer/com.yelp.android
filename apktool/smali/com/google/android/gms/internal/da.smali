.class public Lcom/google/android/gms/internal/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/j;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/internal/id;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->a()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/da;)Lcom/google/android/gms/internal/ib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->destroy()V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/ads/internal/overlay/o;ZLcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/ep;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/f;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/ads/internal/f;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/ads/internal/overlay/o;ZLcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/ep;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/cy$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/da$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/da$6;-><init>(Lcom/google/android/gms/internal/da;Lcom/google/android/gms/internal/cy$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ic$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/da$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/da$3;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/da$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/da$2;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/da$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/da$1;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/dd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/de;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/de;-><init>(Lcom/google/android/gms/internal/dc;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/da$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/da$5;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ic;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/da;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/da$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/da$4;-><init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/da;->a(Ljava/lang/Runnable;)V

    return-void
.end method
