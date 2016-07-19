.class public Lcom/google/android/gms/ads/internal/formats/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/h;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/ads/internal/q;

.field private final c:Landroid/content/Context;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/google/android/gms/internal/cy;

.field private final f:Lcom/google/android/gms/ads/internal/formats/h$a;

.field private final g:Lcom/google/android/gms/internal/j;

.field private final h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private i:Z

.field private j:Lcom/google/android/gms/internal/ib;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/j;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->l:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/i;->b:Lcom/google/android/gms/ads/internal/q;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/i;->g:Lcom/google/android/gms/internal/j;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/i;->d:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/formats/i;->f:Lcom/google/android/gms/ads/internal/formats/h$a;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/formats/i;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/formats/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/formats/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/i;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/formats/i;)Lcom/google/android/gms/internal/cy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/internal/formats/i;)Lcom/google/android/gms/internal/ib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/b;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->f:Lcom/google/android/gms/ads/internal/formats/h$a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/h$a;->l()Lcom/google/android/gms/ads/internal/formats/a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/i;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/ads/internal/formats/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/formats/a;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/b;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/b;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const-string/jumbo v2, "Ad attribution icon"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const-string/jumbo v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/i;->a(Z)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/i;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    const-string/jumbo v2, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/q;->a(Lcom/google/android/gms/ads/internal/formats/h;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to create impression JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->g:Lcom/google/android/gms/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/j;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/gms/ads/internal/formats/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    const-string/jumbo v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "asset"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "template"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/i;->f:Lcom/google/android/gms/ads/internal/formats/h$a;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/formats/h$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/i;->d:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "click"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "has_custom_click_handler"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->b:Lcom/google/android/gms/ads/internal/q;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/i;->f:Lcom/google/android/gms/ads/internal/formats/h$a;

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/formats/h$a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/q;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "view_rectangles"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v0, "click_point"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v0, "native_view_rectangle"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    const-string/jumbo v2, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to create click JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/formats/i;->i:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->i:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/i;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public d()Lcom/google/android/gms/internal/ib;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/i;->g()Lcom/google/android/gms/internal/ib;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    const-string/jumbo v1, "/loadHtml"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i$1;-><init>(Lcom/google/android/gms/ads/internal/formats/i;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    const-string/jumbo v1, "/showOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i$2;-><init>(Lcom/google/android/gms/ads/internal/formats/i;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->e:Lcom/google/android/gms/internal/cy;

    const-string/jumbo v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i$3;-><init>(Lcom/google/android/gms/ads/internal/formats/i;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    const-string/jumbo v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i$4;-><init>(Lcom/google/android/gms/ads/internal/formats/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    const-string/jumbo v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/i$5;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/i$5;-><init>(Lcom/google/android/gms/ads/internal/formats/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->j:Lcom/google/android/gms/internal/ib;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->c:Landroid/content/Context;

    return-object v0
.end method

.method g()Lcom/google/android/gms/internal/ib;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/i;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/i;->g:Lcom/google/android/gms/internal/j;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/i;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    return-object v0
.end method
