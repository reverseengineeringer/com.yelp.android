.class public final Lcom/google/android/gms/internal/kr;
.super Lcom/google/android/gms/measurement/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/f",
        "<",
        "Lcom/google/android/gms/internal/kr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/kr;->a:I

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/kr;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/kr;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->a(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/kr;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->b(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/kr;->c:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/kr;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->c(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/kr;->d:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/kr;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->d(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/kr;->e:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/kr;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->e(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kr;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/measurement/f;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/kr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/kr;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kr;->f:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/kr;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/kr;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/kr;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kr;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/kr;->e:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/kr;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/kr;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/kr;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/kr;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/kr;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/kr;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
