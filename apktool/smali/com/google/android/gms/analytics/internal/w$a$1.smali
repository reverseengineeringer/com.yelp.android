.class Lcom/google/android/gms/analytics/internal/w$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/w$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/d;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/w$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/w$a;Lcom/google/android/gms/analytics/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->b:Lcom/google/android/gms/analytics/internal/w$a;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->a:Lcom/google/android/gms/analytics/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->b:Lcom/google/android/gms/analytics/internal/w$a;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/w$a;->a:Lcom/google/android/gms/analytics/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->b:Lcom/google/android/gms/analytics/internal/w$a;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/w$a;->a:Lcom/google/android/gms/analytics/internal/w;

    const-string/jumbo v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/w;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->b:Lcom/google/android/gms/analytics/internal/w$a;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/w$a;->a:Lcom/google/android/gms/analytics/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/w$a$1;->a:Lcom/google/android/gms/analytics/internal/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/w;->a(Lcom/google/android/gms/analytics/internal/w;Lcom/google/android/gms/analytics/internal/d;)V

    :cond_0
    return-void
.end method
