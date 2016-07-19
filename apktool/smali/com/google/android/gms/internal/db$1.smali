.class Lcom/google/android/gms/internal/db$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/db;->c()Lcom/google/android/gms/internal/db$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db$e;

.field final synthetic b:Lcom/google/android/gms/internal/db;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    iput-object p2, p0, Lcom/google/android/gms/internal/db$1;->a:Lcom/google/android/gms/internal/db$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->a(Lcom/google/android/gms/internal/db;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v2}, Lcom/google/android/gms/internal/db;->b(Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/cy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/db$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/db$1$1;-><init>(Lcom/google/android/gms/internal/db$1;Lcom/google/android/gms/internal/cy;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cy$a;)V

    const-string/jumbo v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/db$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/db$1$2;-><init>(Lcom/google/android/gms/internal/db$1;Lcom/google/android/gms/internal/cy;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    new-instance v1, Lcom/google/android/gms/internal/hm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/hm;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/db$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/db$1$3;-><init>(Lcom/google/android/gms/internal/db$1;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/hm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hm;->a(Ljava/lang/Object;)V

    const-string/jumbo v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/db$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/db$1$4;-><init>(Lcom/google/android/gms/internal/db$1;Lcom/google/android/gms/internal/cy;)V

    sget v0, Lcom/google/android/gms/internal/db$a;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cy;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/db$1;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v1}, Lcom/google/android/gms/internal/db;->f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cy;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
