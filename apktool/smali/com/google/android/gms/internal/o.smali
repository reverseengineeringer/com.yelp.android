.class public abstract Lcom/google/android/gms/internal/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/o$b;,
        Lcom/google/android/gms/internal/o$a;,
        Lcom/google/android/gms/internal/o$c;,
        Lcom/google/android/gms/internal/o$d;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Lcom/google/android/gms/internal/q;

.field c:Landroid/content/BroadcastReceiver;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/gr;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/w;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/view/WindowManager;

.field private final i:Landroid/os/PowerManager;

.field private final j:Landroid/app/KeyguardManager;

.field private k:Lcom/google/android/gms/internal/s;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/p;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/internal/hl;

.field private final t:Lcom/google/android/gms/internal/bz;

.field private final u:Lcom/google/android/gms/internal/bz;

.field private final v:Lcom/google/android/gms/internal/bz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/w;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/o;->m:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/o;->n:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->r:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/o$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$2;-><init>(Lcom/google/android/gms/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->t:Lcom/google/android/gms/internal/bz;

    new-instance v0, Lcom/google/android/gms/internal/o$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$3;-><init>(Lcom/google/android/gms/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->u:Lcom/google/android/gms/internal/bz;

    new-instance v0, Lcom/google/android/gms/internal/o$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$4;-><init>(Lcom/google/android/gms/internal/o;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->v:Lcom/google/android/gms/internal/bz;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->d:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/w;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->e:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->o:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/o;->q:Z

    new-instance v0, Lcom/google/android/gms/internal/hl;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/hl;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->s:Lcom/google/android/gms/internal/hl;

    new-instance v0, Lcom/google/android/gms/internal/q;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->b:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/android/gms/internal/gr;->j:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/gr;->a()Z

    move-result v5

    iget-boolean v6, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->i:Z

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/q;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->h:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->i:Landroid/os/PowerManager;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->j:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/o;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method protected a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->k()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/he;->a(Landroid/view/View;)Z

    move-result v1

    new-array v2, v3, [I

    new-array v0, v3, [I

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x1

    aget v0, v2, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v10, "windowVisibility"

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "isAttachedToWindow"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v10, "viewBox"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v12, "top"

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "bottom"

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "left"

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "right"

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "adBox"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v11, "top"

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "bottom"

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "left"

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "globalVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "top"

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "bottom"

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "left"

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v10, "right"

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "globalVisibleBoxVisible"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "top"

    iget v6, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "bottom"

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "left"

    iget v6, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "right"

    iget v6, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "localVisibleBoxVisible"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "hitBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "top"

    iget v6, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "bottom"

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "left"

    iget v6, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "right"

    iget v6, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/o;->a(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "screenDensity"

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isVisible"

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/o;->i:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/google/android/gms/internal/o;->j:Landroid/app/KeyguardManager;

    invoke-virtual {v3, p1, v4, v5}, Lcom/google/android/gms/internal/hd;->a(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Failure getting view location."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method protected a()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/o$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/o$1;-><init>(Lcom/google/android/gms/internal/o;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dc;)V
    .locals 2

    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->t:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->u:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->v:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/s;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/o;->k:Lcom/google/android/gms/internal/s;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/o;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Skipping active view message."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/p;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/o;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected b()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/o;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed trying to unregister the receiver"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/gt;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected b(Lcom/google/android/gms/internal/dc;)V
    .locals 2

    const-string/jumbo v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->v:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->u:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->t:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/dc;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method protected abstract b(Lorg/json/JSONObject;)V
.end method

.method protected b(Z)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/o;->o:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/w;

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->i:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/google/android/gms/internal/o;->j:Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->a(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->s:Lcom/google/android/gms/internal/hl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hl;->a()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/gms/internal/o;->q:Z

    if-ne v0, v3, :cond_3

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/w;

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->d()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/o;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->e()V

    monitor-exit v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    const-string/jumbo v2, "Active view update failed."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->o:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->e()V

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
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/o;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Untracking ad unit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "JSON failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->k:Lcom/google/android/gms/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->k:Lcom/google/android/gms/internal/s;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/s;->a(Lcom/google/android/gms/internal/o;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/o;->o:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected g()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/w;

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->c()Lcom/google/android/gms/internal/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->a()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->h()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/o;->l:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->l:Z

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/o;->e:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected i()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/q;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->i()Lcom/google/android/gms/internal/jt;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/q;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isMraid"

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/q;->e()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isStopped"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/o;->n:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isPaused"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/o;->m:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isScreenOn"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->l()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "isNative"

    iget-object v3, p0, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/q;->f()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected abstract j()Z
.end method

.method protected k()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isAttachedToWindow"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isScreenOn"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->l()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "isVisible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->i:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method protected m()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/o;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "doneReasonCode"

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public n()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->m:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/o;->m:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/o;->b(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
