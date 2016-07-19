.class Lcom/google/android/gms/internal/if;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ib;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/if$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cl;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Landroid/view/WindowManager;

.field private final a:Lcom/google/android/gms/internal/if$a;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/j;

.field private final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final e:Lcom/google/android/gms/ads/internal/e;

.field private f:Lcom/google/android/gms/internal/ic;

.field private g:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Boolean;

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/google/android/gms/internal/au;

.field private r:Lcom/google/android/gms/internal/au;

.field private s:Lcom/google/android/gms/internal/au;

.field private t:Lcom/google/android/gms/internal/aw;

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private w:Lcom/google/android/gms/internal/ho;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/if$a;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/if;->o:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->p:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/if;->x:I

    iput v1, p0, Lcom/google/android/gms/internal/if;->y:I

    iput v1, p0, Lcom/google/android/gms/internal/if;->z:I

    iput v1, p0, Lcom/google/android/gms/internal/if;->A:I

    iput-object p1, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/if;->k:Z

    iput v1, p0, Lcom/google/android/gms/internal/if;->n:I

    iput-object p5, p0, Lcom/google/android/gms/internal/if;->c:Lcom/google/android/gms/internal/j;

    iput-object p6, p0, Lcom/google/android/gms/internal/if;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/if;->e:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->C:Landroid/view/WindowManager;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/if;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v2, p6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/if;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->F()V

    invoke-static {}, Lcom/google/android/gms/internal/kf;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ig;-><init>(Lcom/google/android/gms/internal/ib;)V

    const-string/jumbo v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/if;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ho;

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/if$a;->a()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ho;-><init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/ax;)V

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gt;->j()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->m:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->m:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/if;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private E()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aeh"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    return-void
.end method

.method private F()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const-string/jumbo v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->G()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string/jumbo v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->H()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    const-string/jumbo v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->G()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->H()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private G()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->l:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/he;->c(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->l:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private H()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/he;->b(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->l:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private I()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->B:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private J()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gt;->e()Lcom/google/android/gms/internal/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gt;->e()Lcom/google/android/gms/internal/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aq;->a(Lcom/google/android/gms/internal/ax;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/if;
    .locals 9

    new-instance v1, Lcom/google/android/gms/internal/if$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/if$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/if;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/if;-><init>(Lcom/google/android/gms/internal/if$a;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)V

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/ax;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->J()V

    new-instance v0, Lcom/google/android/gms/internal/aw;

    new-instance v1, Lcom/google/android/gms/internal/ax;

    const/4 v2, 0x1

    const-string/jumbo v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ax;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/internal/ax;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/ax;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->r:Lcom/google/android/gms/internal/au;

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    const-string/jumbo v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->r:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/au;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    iput-object v5, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/if;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method


# virtual methods
.method public A()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public B()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ic;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->C:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v1

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v2

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->f()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_2
    move v4, v2

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/internal/if;->y:I

    if-ne v7, v1, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/if;->x:I

    if-ne v7, v2, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/if;->z:I

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/google/android/gms/internal/if;->A:I

    if-eq v7, v4, :cond_0

    :cond_3
    iget v7, p0, Lcom/google/android/gms/internal/if;->y:I

    if-ne v7, v1, :cond_4

    iget v7, p0, Lcom/google/android/gms/internal/if;->x:I

    if-eq v7, v2, :cond_6

    :cond_4
    move v7, v5

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/if;->y:I

    iput v2, p0, Lcom/google/android/gms/internal/if;->x:I

    iput v3, p0, Lcom/google/android/gms/internal/if;->z:I

    iput v4, p0, Lcom/google/android/gms/internal/if;->A:I

    new-instance v0, Lcom/google/android/gms/internal/eo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/eo;-><init>(Lcom/google/android/gms/internal/ib;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/if;->C:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/eo;->a(IIIIFI)V

    move v0, v7

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/hd;->a(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v3

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v7

    aget v4, v4, v5

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v0

    goto :goto_2
.end method

.method C()Ljava/lang/Boolean;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->m:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->E()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/if$a;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/if$a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ho;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ax;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ho;->b()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/if;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->i:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->p:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/if;->n:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/he;->b(Lcom/google/android/gms/internal/ib;)Z

    const-string/jumbo v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ic;->f()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->o:Z

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/ax;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/o;Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "isVisible"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method a(Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/if;->m:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gt;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/if;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd;->a(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/if;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/if;->k:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->F()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/if;->n:I

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v2, p0, Lcom/google/android/gms/internal/if;->n:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->a(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/if;->v:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/if;->p:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ic;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AFMA_ReceiveMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dispatching AFMA event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ic;->b()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->a(ZZ)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/if;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->E()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/if;->loadUrl(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/if;->o:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aes"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    const-string/jumbo v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/au;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/kf;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->C()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->D()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->C()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->J()V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ho;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ic;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->j:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->t()Lcom/google/android/gms/internal/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ib;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/if;->j:Z

    const-string/jumbo v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ic;->d()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hd;->f()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/hd;->i(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/if$a;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->j:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->t()Lcom/google/android/gms/internal/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/ib;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/if;->I()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/if$a;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->e:Lcom/google/android/gms/ads/internal/e;

    return-object v0
.end method

.method public i()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->g:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->v:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Lcom/google/android/gms/internal/ic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->i:Z

    return v0
.end method

.method public n()Lcom/google/android/gms/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->c:Lcom/google/android/gms/internal/j;

    return-object v0
.end method

.method public o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ho;->c()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ho;->d()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->B()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->i()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->o()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/if;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/if;->k:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-eqz v1, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->C:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/if;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_4

    if-ne v2, v8, :cond_b

    :cond_4
    move v2, v3

    :goto_1
    if-eq v5, v6, :cond_5

    if-ne v5, v8, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    if-gt v5, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    if-le v2, v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->a:Lcom/google/android/gms/internal/if$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/if$a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not enough space to show ad. Needs "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " dp, but only has "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->setVisibility(I)V

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/if;->setMeasuredDimension(II)V

    :goto_2
    monitor-exit v4

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/if;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->h:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/if;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_b
    move v2, v0

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/kf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/kf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->c:Lcom/google/android/gms/internal/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->c:Lcom/google/android/gms/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/j;->a(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->k:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/if;->n:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->j:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/if$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/if$1;-><init>(Lcom/google/android/gms/internal/if;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->u:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ic;

    iput-object p1, p0, Lcom/google/android/gms/internal/if;->f:Lcom/google/android/gms/internal/ic;

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/if;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public t()Z
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->q:Lcom/google/android/gms/internal/au;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "aebb"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/if;->o:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/if;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/if;->p:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()Lcom/google/android/gms/internal/ia;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lcom/google/android/gms/internal/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    return-object v0
.end method

.method public x()Lcom/google/android/gms/internal/aw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    return-object v0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->w:Lcom/google/android/gms/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ho;->a()V

    return-void
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    iget-object v0, p0, Lcom/google/android/gms/internal/if;->t:Lcom/google/android/gms/internal/aw;

    const-string/jumbo v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/if;->s:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/au;)V

    :cond_0
    return-void
.end method
