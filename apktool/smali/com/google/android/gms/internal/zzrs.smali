.class public Lcom/google/android/gms/internal/zzrs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrs$b;,
        Lcom/google/android/gms/internal/zzrs$a;,
        Lcom/google/android/gms/internal/zzrs$zzg;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/internal/d$a;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/d$a;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/d$a;->a:I

    iput v0, v1, Lcom/google/android/gms/internal/d$a;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/d$a;->k:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->l:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/d$a;->l:Z

    :cond_0
    return-object v1
.end method
