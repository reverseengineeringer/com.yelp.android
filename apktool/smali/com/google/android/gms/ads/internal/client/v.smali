.class public Lcom/google/android/gms/ads/internal/client/v;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/client/v;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/client/a;

.field private final d:Lcom/google/android/gms/ads/internal/client/n;

.field private final e:Lcom/google/android/gms/ads/internal/client/t;

.field private final f:Lcom/google/android/gms/ads/internal/client/e;

.field private final g:Lcom/google/android/gms/internal/bq;

.field private final h:Lcom/yelp/android/bb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/v;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/v;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/v;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/v;->a(Lcom/google/android/gms/ads/internal/client/v;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->d:Lcom/google/android/gms/ads/internal/client/n;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/t;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->e:Lcom/google/android/gms/ads/internal/client/t;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/e;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->f:Lcom/google/android/gms/ads/internal/client/e;

    new-instance v0, Lcom/google/android/gms/internal/bq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->g:Lcom/google/android/gms/internal/bq;

    new-instance v0, Lcom/yelp/android/bb/e;

    invoke-direct {v0}, Lcom/yelp/android/bb/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/v;->h:Lcom/yelp/android/bb/e;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/client/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->e()Lcom/google/android/gms/ads/internal/client/v;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/v;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/ads/internal/client/v;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/ads/internal/client/v;->b:Lcom/google/android/gms/ads/internal/client/v;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/ads/internal/client/n;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->e()Lcom/google/android/gms/ads/internal/client/v;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/v;->d:Lcom/google/android/gms/ads/internal/client/n;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/ads/internal/client/t;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->e()Lcom/google/android/gms/ads/internal/client/v;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/v;->e:Lcom/google/android/gms/ads/internal/client/t;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/bq;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->e()Lcom/google/android/gms/ads/internal/client/v;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/v;->g:Lcom/google/android/gms/internal/bq;

    return-object v0
.end method

.method private static e()Lcom/google/android/gms/ads/internal/client/v;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/v;->b:Lcom/google/android/gms/ads/internal/client/v;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
