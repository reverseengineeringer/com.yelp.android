.class final Lcom/google/android/gms/internal/hb$6;
.super Lcom/google/android/gms/internal/hb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hb;->c(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/hb$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/hb$6;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/hb$6;->b:Lcom/google/android/gms/internal/hb$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hb$a;-><init>(Lcom/google/android/gms/internal/hb$1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/hb$6;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "content_url_opted_out"

    const-string/jumbo v3, "content_url_opted_out"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hb$6;->b:Lcom/google/android/gms/internal/hb$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hb$6;->b:Lcom/google/android/gms/internal/hb$b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hb$b;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
