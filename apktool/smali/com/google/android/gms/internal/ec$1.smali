.class Lcom/google/android/gms/internal/ec$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sJ:Lcom/google/android/gms/internal/ef;

.field final synthetic sK:Landroid/content/Intent;

.field final synthetic sL:Lcom/google/android/gms/internal/ec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/ef;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    iput-object p2, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ec$1;->sK:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/ek;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    iget-object v1, v1, Lcom/google/android/gms/internal/ef;->sU:Ljava/lang/String;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ec$1;->sK:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ek;->a(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->c(Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/er;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/eg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    invoke-static {v1}, Lcom/google/android/gms/internal/ec;->b(Lcom/google/android/gms/internal/ec;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    iget-object v2, v2, Lcom/google/android/gms/internal/ef;->sV:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ec$1;->sK:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/eg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ef;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/eq;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->c(Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/er;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/eg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ec$1;->sL:Lcom/google/android/gms/internal/ec;

    invoke-static {v1}, Lcom/google/android/gms/internal/ec;->b(Lcom/google/android/gms/internal/ec;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    iget-object v2, v2, Lcom/google/android/gms/internal/ef;->sV:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/ec$1;->sK:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/internal/ec$1;->sJ:Lcom/google/android/gms/internal/ef;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/eg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ef;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/eq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Fail to verify and dispatch pending transaction"

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->W(Ljava/lang/String;)V

    goto :goto_0
.end method