.class Lcom/google/android/gms/analytics/internal/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/af;-><init>(Lcom/google/android/gms/analytics/internal/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/af;->a(Lcom/google/android/gms/analytics/internal/af;)Lcom/google/android/gms/analytics/internal/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/t;->h()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/h;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/af;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/af;->a(Lcom/google/android/gms/analytics/internal/af;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/af;->b(Lcom/google/android/gms/analytics/internal/af;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/af$1;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/af;->a()V

    goto :goto_0
.end method
