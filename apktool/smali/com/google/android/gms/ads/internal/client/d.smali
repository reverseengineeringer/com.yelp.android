.class public Lcom/google/android/gms/ads/internal/client/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/dr;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/client/q;

.field private d:Lcom/google/android/gms/ads/a;

.field private e:Lcom/google/android/gms/ads/internal/client/a;

.field private f:Lcom/google/android/gms/ads/internal/client/ac;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/ads/doubleclick/a;

.field private j:Lcom/google/android/gms/ads/purchase/d;

.field private k:Lcom/google/android/gms/ads/purchase/b;

.field private l:Lcom/google/android/gms/ads/doubleclick/e;

.field private m:Lcom/google/android/gms/ads/doubleclick/c;

.field private n:Lcom/google/android/gms/ads/e;

.field private o:Lcom/yelp/android/be/b;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/q;->a()Lcom/google/android/gms/ads/internal/client/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/q;Lcom/google/android/gms/ads/doubleclick/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/q;Lcom/google/android/gms/ads/doubleclick/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/dr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->a:Lcom/google/android/gms/internal/dr;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/d;->c:Lcom/google/android/gms/ads/internal/client/q;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/d;->l:Lcom/google/android/gms/ads/doubleclick/e;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/client/d;->d(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/d;->q:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->b()Lcom/google/android/gms/ads/internal/client/n;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/d;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/d;->a:Lcom/google/android/gms/internal/dr;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/internal/client/n;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dr;)Lcom/google/android/gms/ads/internal/client/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->d:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/l;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->d:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/l;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/y;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->e:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/k;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->e:Lcom/google/android/gms/ads/internal/client/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/k;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/x;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->i:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/s;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->i:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/s;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/ae;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->k:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/internal/fe;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->k:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fe;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/internal/ez;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->j:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/internal/fh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->j:Lcom/google/android/gms/ads/purchase/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fh;-><init>(Lcom/google/android/gms/ads/purchase/d;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/internal/fd;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->m:Lcom/google/android/gms/ads/doubleclick/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/google/android/gms/internal/bc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->m:Lcom/google/android/gms/ads/doubleclick/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/ads/doubleclick/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/internal/bb;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->n:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->n:Lcom/google/android/gms/ads/e;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e;->a()Lcom/google/android/gms/ads/internal/client/w;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/af;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->o:Lcom/yelp/android/be/b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    new-instance v1, Lcom/yelp/android/bb/f;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->o:Lcom/yelp/android/be/b;

    invoke-direct {v1, v2}, Lcom/yelp/android/bb/f;-><init>(Lcom/yelp/android/be/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/yelp/android/bb/c;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->p:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/ac;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->d:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/l;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->e:Lcom/google/android/gms/ads/internal/client/a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/k;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/k;-><init>(Lcom/google/android/gms/ads/internal/client/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/x;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/b;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-nez v0, :cond_0

    const-string/jumbo v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/client/d;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->c:Lcom/google/android/gms/ads/internal/client/q;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/q;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/b;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->a:Lcom/google/android/gms/internal/dr;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/b;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dr;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/be/b;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->o:Lcom/yelp/android/be/b;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/yelp/android/bb/f;

    invoke-direct {v0, p1}, Lcom/yelp/android/bb/f;-><init>(Lcom/yelp/android/be/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/ac;->a(Lcom/yelp/android/bb/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/d;->q:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/d;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/d;->f:Lcom/google/android/gms/ads/internal/client/ac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/ac;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
