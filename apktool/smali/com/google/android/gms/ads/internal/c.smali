.class public abstract Lcom/google/android/gms/ads/internal/c;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/f;
.implements Lcom/google/android/gms/ads/internal/purchase/j;
.implements Lcom/google/android/gms/internal/cb;
.implements Lcom/google/android/gms/internal/dk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field protected final j:Lcom/google/android/gms/internal/ds;

.field protected transient k:Z

.field private final l:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/t;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/t;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1, p6}, Lcom/google/android/gms/ads/internal/c;-><init>(Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/ads/internal/e;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/ads/internal/e;)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/ads/internal/e;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/internal/ds;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/internal/ew;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ew;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/c;->l:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->k:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;
    .locals 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/t$a;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/t$a;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/t$a;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/t$a;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/t$a;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v4, v6

    if-lez v3, :cond_0

    add-int v3, v5, v9

    if-lez v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v3, :cond_0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v3, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v10, "x"

    invoke-virtual {v3, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "width"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "height"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "visible"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gt;->c()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    new-instance v4, Lcom/google/android/gms/internal/gs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Lcom/google/android/gms/internal/gs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v2, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gs;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->p:Lcom/google/android/gms/ads/internal/client/af;

    if-eqz v2, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->p:Lcom/google/android/gms/ads/internal/client/af;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/af;->a()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v22

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v4, v0, v9}, Lcom/google/android/gms/internal/gt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gv;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->v:Lcom/yelp/android/g/i;

    invoke-virtual {v4}, Lcom/yelp/android/g/i;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->v:Lcom/yelp/android/g/i;

    invoke-virtual {v4, v2}, Lcom/yelp/android/g/i;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->q:Lcom/google/android/gms/internal/ez;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v4, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gt;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move v15, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/c;->i:Lcom/google/android/gms/ads/internal/e;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/e;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/overlay/l;->a()Z

    move-result v29

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/t;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/gt;->a()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v13, v13, Lcom/google/android/gms/ads/internal/t;->z:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/gt;->g()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->l:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/ao;->a()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-object/from16 v27, v0

    new-instance v28, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v4, v15, v1}, Lcom/google/android/gms/ads/internal/request/CapabilityParcel;-><init>(ZZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/t;->h()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hd;->f()F

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v15, v15, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/hd;->j(Landroid/content/Context;)I

    move-result v31

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v15, v15, Lcom/google/android/gms/ads/internal/t;->f:Lcom/google/android/gms/ads/internal/t$a;

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/hd;->b(Landroid/view/View;)I

    move-result v32

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    invoke-direct/range {v2 .. v32}, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Lcom/google/android/gms/ads/internal/request/CapabilityParcel;Ljava/lang/String;FII)V

    return-object v2

    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_4
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ez;)V
    .locals 1

    const-string/jumbo v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/t;->q:Lcom/google/android/gms/internal/ez;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fd;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/k;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/t;->A:Lcom/google/android/gms/ads/internal/purchase/k;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gt;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->A:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fd;Lcom/google/android/gms/ads/internal/purchase/k;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/purchase/c;->g()Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gr;Z)V
    .locals 7

    if-nez p1, :cond_1

    const-string/jumbo v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/b;->c(Lcom/google/android/gms/internal/gr;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v0, v0, Lcom/google/android/gms/internal/dj;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v6, v3, Lcom/google/android/gms/internal/dj;->d:Ljava/util/List;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/do;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gr;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    iget-object v0, v0, Lcom/google/android/gms/internal/di;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    iget-object v6, v3, Lcom/google/android/gms/internal/di;->g:Ljava/util/List;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/do;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gr;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->q:Lcom/google/android/gms/internal/ez;

    if-nez v1, :cond_5

    const-string/jumbo v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    if-nez v1, :cond_1

    const-string/jumbo v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->A:Lcom/google/android/gms/ads/internal/purchase/k;

    if-nez v1, :cond_2

    const-string/jumbo v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/t;->E:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/t;->E:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/fd;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/t;->E:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/t;->E:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->o()Lcom/google/android/gms/ads/internal/purchase/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->e:Z

    new-instance v4, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/t;->A:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v4, v5, v6, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/k;Lcom/google/android/gms/internal/ey;Lcom/google/android/gms/ads/internal/purchase/j;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/purchase/i;->a(Landroid/content/Context;ZLcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->q:Lcom/google/android/gms/internal/ez;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ey;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/t;->r:Lcom/google/android/gms/internal/fd;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/fd;->a(Lcom/google/android/gms/internal/fc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/c$1;-><init>(Lcom/google/android/gms/ads/internal/c;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/ax;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->s()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gt;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/aa;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/aa;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/r;->a()V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iput v0, v2, Lcom/google/android/gms/ads/internal/t;->D:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    move-result-object v0

    const-string/jumbo v1, "seq_num"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "request_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->v:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "session_id"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->h:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->f:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "app_version"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->f:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->a()Lcom/google/android/gms/ads/internal/request/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->d:Lcom/google/android/gms/internal/j;

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/google/android/gms/ads/internal/request/a;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;Lcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/request/a$a;)Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/t;->g:Lcom/google/android/gms/internal/gy;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gr;Z)Z
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/gr;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    iget-wide v2, p2, Lcom/google/android/gms/internal/gr;->h:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->d()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-wide v0, v0, Lcom/google/android/gms/internal/dj;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-wide v2, v1, Lcom/google/android/gms/internal/dj;->g:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/gr;->m:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/gr;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/internal/gr;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/c;->g:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/gr;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/gr;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/gr;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/gr;->r:Lcom/google/android/gms/internal/dl;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/gr;->r:Lcom/google/android/gms/internal/dl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->r:Lcom/google/android/gms/internal/dl;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->r:Lcom/google/android/gms/internal/dl;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dk;)V

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget v1, v0, Lcom/google/android/gms/internal/dj;->l:I

    iget-object v0, p2, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget v0, v0, Lcom/google/android/gms/internal/dj;->m:I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->B:Lcom/google/android/gms/internal/gw;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/gw;->a(II)V

    const/4 v0, 0x1

    return v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/gr;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/b;->b(Lcom/google/android/gms/internal/gr;)V

    iget v0, p1, Lcom/google/android/gms/internal/gr;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v0, v0, Lcom/google/android/gms/internal/dj;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v6, v3, Lcom/google/android/gms/internal/dj;->e:Ljava/util/List;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/do;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gr;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/b;->b(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/ib;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dt;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/r;->d(Lcom/google/android/gms/internal/gr;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->b()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d_()V
    .locals 2

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gr;->b:Lcom/google/android/gms/internal/ib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/he;->b(Lcom/google/android/gms/internal/ib;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->o:Lcom/google/android/gms/internal/dt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dt;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->e:Lcom/google/android/gms/ads/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->c()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/r;->e(Lcom/google/android/gms/internal/gr;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v0, v0, Lcom/google/android/gms/internal/dj;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v6, v6, Lcom/google/android/gms/internal/gr;->q:Lcom/google/android/gms/internal/dj;

    iget-object v6, v6, Lcom/google/android/gms/internal/dj;->c:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/do;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gr;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->r()Lcom/google/android/gms/internal/do;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/t;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v6, v6, Lcom/google/android/gms/internal/gr;->n:Lcom/google/android/gms/internal/di;

    iget-object v6, v6, Lcom/google/android/gms/internal/di;->f:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/do;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gr;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/b;->e()V

    goto :goto_0
.end method

.method public e_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/r;->b(Lcom/google/android/gms/internal/gr;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->n()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->l:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gs;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/c;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->p()V

    return-void
.end method

.method public g_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/r;->d(Lcom/google/android/gms/internal/gr;)V

    return-void
.end method

.method public h_()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->h:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/r;->e(Lcom/google/android/gms/internal/gr;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method protected s()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INTERNET"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/t;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->e()V

    return-void
.end method

.method public u()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->e_()V

    return-void
.end method

.method public v()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->l()V

    return-void
.end method

.method public w()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->f_()V

    return-void
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gr;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gr;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->q()V

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/t;->j:Lcom/google/android/gms/internal/gr;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gr;Z)V

    return-void
.end method
