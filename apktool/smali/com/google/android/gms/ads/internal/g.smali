.class public Lcom/google/android/gms/ads/internal/g;
.super Lcom/google/android/gms/ads/internal/d;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/g$a;
    }
.end annotation


# instance fields
.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/gr$a;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "[xX]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/d;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d;-><init>(II)V

    :goto_1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b()Lcom/google/android/gms/ads/d;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/gr;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/gr;->m:Z

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/internal/gr;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v0, "Could not get mediation view"

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->getNextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/n;->b(Lcom/google/android/gms/internal/gr;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/g;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ib;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/ib;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/g;->a:Lcom/google/android/gms/internal/ax;

    invoke-interface {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ib;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ax;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->d()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/t$a;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->t:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->t:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t$a;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->t:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->t:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/t$a;->setMinimumHeight(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/t$a;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private e(Lcom/google/android/gms/internal/gr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/o;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;)Lcom/google/android/gms/internal/o;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/o;->a(Lcom/google/android/gms/internal/p;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/g$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/g$1;-><init>(Lcom/google/android/gms/ads/internal/g;Lcom/google/android/gms/internal/gr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ic$b;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->C:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->C:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;Landroid/view/View;)Lcom/google/android/gms/internal/o;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/gr$a;Lcom/google/android/gms/ads/internal/f;)Lcom/google/android/gms/internal/ib;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/g;->b(Lcom/google/android/gms/internal/gr$a;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/gr$a;Lcom/google/android/gms/ads/internal/f;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/gr;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/gr;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/n;->b(Lcom/google/android/gms/internal/gr;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/g$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/g$a;-><init>(Lcom/google/android/gms/ads/internal/g;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/n;->a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/ads/internal/g$a;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string/jumbo v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/g;->l:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/gr;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/d;->a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/gr;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/g;->b(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/gr;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/g;->a(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/internal/gr;->k:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/gr;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/hw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/hw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/ads/internal/g;->e(Lcom/google/android/gms/internal/gr;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ao;->aG:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/internal/gr;Z)V

    goto :goto_1
.end method

.method d(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .locals 22

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->h:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/g;->l:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->a:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->b:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->d:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->e:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->f:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->g:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->h:Z

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/g;->l:Z

    if-eqz v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->i:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->j:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->k:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->m:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->n:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->o:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->r:Z

    move/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method d(Lcom/google/android/gms/internal/gr;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/gr;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->a(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/t$a;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/g;->a(Lcom/google/android/gms/internal/gr;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/gr;->l:Z

    goto :goto_0
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/gr;)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/g;->d(Lcom/google/android/gms/internal/gr;)V

    return-void
.end method

.method protected s()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.permission.INTERNET"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string/jumbo v4, "Missing internet permission in AndroidManifest.xml."

    const-string/jumbo v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const-string/jumbo v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string/jumbo v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/g;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/t$a;->setVisibility(I)V

    :cond_2
    return v0
.end method
