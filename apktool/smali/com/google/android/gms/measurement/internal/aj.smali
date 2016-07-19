.class abstract Lcom/google/android/gms/measurement/internal/aj;
.super Lcom/google/android/gms/measurement/internal/ai;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ai;-><init>(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->n:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/ag;->a(Lcom/google/android/gms/measurement/internal/aj;)V

    return-void
.end method


# virtual methods
.method E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->c:Z

    return v0
.end method

.method protected G()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->E()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->n:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->C()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Z

    return-void
.end method

.method protected abstract a()V
.end method
