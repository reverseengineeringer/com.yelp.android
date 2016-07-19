.class public Lcom/google/android/gms/internal/v;
.super Lcom/google/android/gms/internal/o;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private d:Lcom/google/android/gms/internal/db$d;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/db;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/w;)V

    invoke-virtual {p6}, Lcom/google/android/gms/internal/db;->b()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    :try_start_0
    invoke-interface {p5}, Lcom/google/android/gms/internal/w;->c()Lcom/google/android/gms/internal/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/v;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    new-instance v2, Lcom/google/android/gms/internal/v$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/v$1;-><init>(Lcom/google/android/gms/internal/v;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/google/android/gms/internal/v$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/v$2;-><init>(Lcom/google/android/gms/internal/v;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    new-instance v1, Lcom/google/android/gms/internal/v$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/v$3;-><init>(Lcom/google/android/gms/internal/v;)V

    new-instance v2, Lcom/google/android/gms/internal/v$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/v$4;-><init>(Lcom/google/android/gms/internal/v;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failure while processing active view data."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/v;->e:Z

    return p1
.end method


# virtual methods
.method protected b(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    new-instance v1, Lcom/google/android/gms/internal/v$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/v$5;-><init>(Lcom/google/android/gms/internal/v;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/internal/hu$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hu$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/o;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    new-instance v2, Lcom/google/android/gms/internal/v$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/v$6;-><init>(Lcom/google/android/gms/internal/v;)V

    new-instance v3, Lcom/google/android/gms/internal/hu$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/hu$b;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->d:Lcom/google/android/gms/internal/db$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$d;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->e:Z

    return v0
.end method
