.class Lcom/google/android/gms/internal/cq$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq;->a(Lcom/google/android/gms/internal/cr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cq$a;

.field final synthetic b:Lcom/google/android/gms/internal/cr;

.field final synthetic c:Lcom/google/android/gms/internal/cq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq;Lcom/google/android/gms/internal/cq$a;Lcom/google/android/gms/internal/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$7;->c:Lcom/google/android/gms/internal/cq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cq$7;->a:Lcom/google/android/gms/internal/cq$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/cq$7;->b:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cq$7;->a:Lcom/google/android/gms/internal/cq$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq$7;->b:Lcom/google/android/gms/internal/cr;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cq$a;->a(Lcom/google/android/gms/internal/cr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
