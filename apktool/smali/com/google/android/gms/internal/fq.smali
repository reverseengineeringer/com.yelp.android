.class public Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fq$b;,
        Lcom/google/android/gms/internal/fq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/gr;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/hi;

.field private final d:Lcom/google/android/gms/ads/internal/q;

.field private final e:Lcom/google/android/gms/internal/j;

.field private final f:Lcom/google/android/gms/internal/cz;

.field private final g:Ljava/lang/Object;

.field private final h:Lcom/google/android/gms/internal/gr$a;

.field private i:Z

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/fq;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/j;Lcom/google/android/gms/internal/gr$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fq;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    iput-object p4, p0, Lcom/google/android/gms/internal/fq;->c:Lcom/google/android/gms/internal/hi;

    iput-object p3, p0, Lcom/google/android/gms/internal/fq;->f:Lcom/google/android/gms/internal/cz;

    iput-object p6, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fq;->i:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/fq;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fq;->k:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/fq$a;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v0, "tracking_urls_and_actions"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v0, "impression_tracking_urls"

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/fq;->b(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/fq;->k:Ljava/util/List;

    const-string/jumbo v0, "active_view"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fq;->l:Lorg/json/JSONObject;

    invoke-interface {p2, p0, p3}, Lcom/google/android/gms/internal/fq$a;->a(Lcom/google/android/gms/internal/fq;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v0, "Failed to retrieve ad assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    iget-object v4, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v7, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/j;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/ads/internal/formats/h$a;->a(Lcom/google/android/gms/ads/internal/formats/h;)V

    move-object v1, v6

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fq;)Lcom/google/android/gms/ads/internal/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gr;
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fq;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/fq;->j:I

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/fq;->j:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-eq v6, v2, :cond_1

    const/16 v30, 0x0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/gr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->c:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v5, v5, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v7, v7, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fq;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v9, v9, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v9, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v10, v10, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v10, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->k:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v12, v12, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v12, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->d:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/gr$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/gr$a;->g:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->l:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->G:Z

    move/from16 v34, v0

    invoke-direct/range {v2 .. v34}, Lcom/google/android/gms/internal/gr;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/ib;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/di;Lcom/google/android/gms/internal/dt;Ljava/lang/String;Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/dl;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    move-object/from16 v30, p1

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hs;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Lcom/google/android/gms/internal/hs",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string/jumbo v0, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/fq;->a(IZ)V

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/hq;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/hq;

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v7, v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hq;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->c:Lcom/google/android/gms/internal/hi;

    new-instance v1, Lcom/google/android/gms/internal/fq$5;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/fq$5;-><init>(Lcom/google/android/gms/internal/fq;ZDLjava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/hi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hi$a;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "b"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/fq;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/cy;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/hp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/fq$b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fq$b;-><init>(Lcom/google/android/gms/internal/fq;)V

    new-instance v2, Lcom/google/android/gms/internal/fq$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/internal/fq$1;-><init>(Lcom/google/android/gms/internal/fq;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/hp;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/fq$b;->a:Lcom/google/android/gms/internal/bz;

    const-string/jumbo v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-wide v2, Lcom/google/android/gms/internal/fq;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/hp;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/internal/cy;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/formats/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/ads/internal/formats/f;

    new-instance v0, Lcom/google/android/gms/internal/fq$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fq$b;-><init>(Lcom/google/android/gms/internal/fq;)V

    new-instance v1, Lcom/google/android/gms/internal/fq$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fq$3;-><init>(Lcom/google/android/gms/internal/fq;Lcom/google/android/gms/ads/internal/formats/f;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/fq$b;->a:Lcom/google/android/gms/internal/bz;

    const-string/jumbo v0, "/nativeAdCustomClick"

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/bl;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/q;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/bo;->a(Lcom/google/android/gms/internal/bl;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fq;Lcom/google/android/gms/internal/bl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/bl;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/c;->a()Lcom/google/android/gms/dynamic/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private c()Lcom/google/android/gms/internal/cy;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ao;->ac:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/gr$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "https:"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->f:Lcom/google/android/gms/internal/cz;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/j;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/cz;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/j;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v2, Lcom/google/android/gms/internal/fq;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cy;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    iget-object v3, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    iget-object v4, p0, Lcom/google/android/gms/internal/fq;->d:Lcom/google/android/gms/ads/internal/q;

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/ads/internal/overlay/o;ZLcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/ep;)V

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "http:"

    goto :goto_1
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/fq$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->b:Z

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->h:Lcom/google/android/gms/internal/gr$a;

    iget-object v2, v2, Lcom/google/android/gms/internal/gr$a;->a:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->z:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->d:Z

    :goto_2
    const-string/jumbo v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/fr;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/fr;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/fs;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/fs;-><init>(ZZ)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/hp;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hp;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/fq$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/google/android/gms/internal/fq$2;-><init>(Lcom/google/android/gms/internal/fq;Lcom/google/android/gms/internal/hp;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v4, Lcom/google/android/gms/internal/fq;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/internal/hp;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/ft;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ft;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No handler for custom template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "custom_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;)V

    :goto_3
    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fq;->a(I)V

    goto :goto_3
.end method

.method public a()Lcom/google/android/gms/internal/gr;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fq;->c()Lcom/google/android/gms/internal/cy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/cy;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/fq$a;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/fq$a;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/h$a;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/ads/internal/formats/h$a;Lcom/google/android/gms/internal/cy;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gr;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Malformed native JSON response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fq;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fq;->a(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/ads/internal/formats/h$a;)Lcom/google/android/gms/internal/gr;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Timeout when loading native ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/hs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/hs",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hs",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/fq;->a(IZ)V

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hs;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "require"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;ZZ)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fq;->i:Z

    iput p1, p0, Lcom/google/android/gms/internal/fq;->j:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fq;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/hs;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/hs",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hq;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "text_size"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v0, "text_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v0, "bg_color"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v0, "animation_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v0, "presentation_ms"

    const/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "images"

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/hr;->a(Ljava/util/List;)Lcom/google/android/gms/internal/hs;

    move-result-object v12

    new-instance v0, Lcom/google/android/gms/internal/fq$4;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fq$4;-><init>(Lcom/google/android/gms/internal/fq;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;III)V

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/hr$a;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "image"

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/fq;->a(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/hs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fq;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->a()Lcom/google/android/gms/internal/gr;

    move-result-object v0

    return-object v0
.end method
