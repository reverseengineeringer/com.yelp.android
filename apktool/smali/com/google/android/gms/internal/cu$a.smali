.class Lcom/google/android/gms/internal/cu$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cu;

.field private final b:Lcom/google/android/gms/internal/zzk;

.field private final c:Lcom/google/android/gms/internal/jc;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cu;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/jc;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cu$a;->a:Lcom/google/android/gms/internal/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/internal/cu$a;->c:Lcom/google/android/gms/internal/jc;

    iput-object p4, p0, Lcom/google/android/gms/internal/cu$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzk;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->c:Lcom/google/android/gms/internal/jc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jc;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu$a;->c:Lcom/google/android/gms/internal/jc;

    iget-object v1, v1, Lcom/google/android/gms/internal/jc;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->a(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->c:Lcom/google/android/gms/internal/jc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/jc;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu$a;->c:Lcom/google/android/gms/internal/jc;

    iget-object v1, v1, Lcom/google/android/gms/internal/jc;->c:Lcom/google/android/gms/internal/zzr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->b(Lcom/google/android/gms/internal/zzr;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cu$a;->b:Lcom/google/android/gms/internal/zzk;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzk;->c(Ljava/lang/String;)V

    goto :goto_2
.end method
