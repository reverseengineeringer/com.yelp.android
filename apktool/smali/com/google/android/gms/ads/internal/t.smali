.class public final Lcom/google/android/gms/ads/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/t$a;
    }
.end annotation


# instance fields
.field A:Lcom/google/android/gms/ads/internal/purchase/k;

.field public B:Lcom/google/android/gms/internal/gw;

.field C:Landroid/view/View;

.field public D:I

.field E:Z

.field F:Z

.field private G:Ljava/lang/String;

.field private H:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gs;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:I

.field private K:Lcom/google/android/gms/internal/hl;

.field private L:Z

.field private M:Z

.field private N:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/j;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field f:Lcom/google/android/gms/ads/internal/t$a;

.field public g:Lcom/google/android/gms/internal/gy;

.field public h:Lcom/google/android/gms/internal/hf;

.field public i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public j:Lcom/google/android/gms/internal/gr;

.field public k:Lcom/google/android/gms/internal/gr$a;

.field public l:Lcom/google/android/gms/internal/gs;

.field m:Lcom/google/android/gms/ads/internal/client/x;

.field n:Lcom/google/android/gms/ads/internal/client/y;

.field o:Lcom/google/android/gms/ads/internal/client/ae;

.field p:Lcom/google/android/gms/ads/internal/client/af;

.field q:Lcom/google/android/gms/internal/ez;

.field r:Lcom/google/android/gms/internal/fd;

.field s:Lcom/google/android/gms/internal/bm;

.field t:Lcom/google/android/gms/internal/bn;

.field u:Lcom/yelp/android/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bo;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/yelp/android/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/i",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bp;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field x:Lcom/google/android/gms/internal/bb;

.field y:Lcom/yelp/android/bb/c;

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/j;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/j;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/t;->B:Lcom/google/android/gms/internal/gw;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/t;->C:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/t;->D:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->E:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->F:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/t;->H:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/t;->I:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/t;->J:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/t;->L:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/t;->M:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->N:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ao;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gt;->e()Lcom/google/android/gms/internal/aq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ao;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gt;->e()Lcom/google/android/gms/internal/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aq;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/t;->d:Lcom/google/android/gms/internal/j;

    new-instance v0, Lcom/google/android/gms/internal/hl;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/hl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->K:Lcom/google/android/gms/internal/hl;

    new-instance v0, Lcom/yelp/android/g/i;

    invoke-direct {v0}, Lcom/yelp/android/g/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->v:Lcom/yelp/android/g/i;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/t$a;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/t$a;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/internal/j;

    new-instance v0, Lcom/google/android/gms/ads/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/i;-><init>(Lcom/google/android/gms/ads/internal/t;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/j;-><init>(Lcom/google/android/gms/internal/g;)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->K:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hl;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ic;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/t$a;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/t;->I:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/t;->J:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/t;->I:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/t;->J:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/t;->I:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/t;->J:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ic;->a(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/t;->k()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/t$a;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/t;->L:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/t;->M:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->H:Ljava/util/HashSet;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/t;->G:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/gs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/t;->H:Ljava/util/HashSet;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/t;->D:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->g:Lcom/google/android/gms/internal/gy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->g:Lcom/google/android/gms/internal/gy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->h:Lcom/google/android/gms/internal/hf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->h:Lcom/google/android/gms/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hf;->d()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->destroy()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->stopLoading()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dt;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/t;->D:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/t;->D:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->b()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->M:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->L:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->N:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->M:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->N:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-wide v2, v1, Lcom/google/android/gms/internal/gr;->y:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gs;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-wide v2, v1, Lcom/google/android/gms/internal/gr;->z:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/gs;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gs;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/gr;->m:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gs;->b(Z)V

    return-void
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->g()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->n:Lcom/google/android/gms/ads/internal/client/y;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->o:Lcom/google/android/gms/ads/internal/client/ae;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->q:Lcom/google/android/gms/internal/ez;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->x:Lcom/google/android/gms/internal/bb;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->p:Lcom/google/android/gms/ads/internal/client/af;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/t;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/t;->d()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/t;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/t;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/t;->N:Z

    return-void
.end method
