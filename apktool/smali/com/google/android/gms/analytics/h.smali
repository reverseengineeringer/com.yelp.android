.class public Lcom/google/android/gms/analytics/h;
.super Lcom/google/android/gms/measurement/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/g",
        "<",
        "Lcom/google/android/gms/analytics/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/t;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/t;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/t;->h()Lcom/google/android/gms/measurement/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/t;->d()Lcom/google/android/gms/internal/jt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/g;-><init>(Lcom/google/android/gms/measurement/h;Lcom/google/android/gms/internal/jt;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/measurement/d;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/iq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/d;->b(Ljava/lang/Class;)Lcom/google/android/gms/measurement/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/t;->p()Lcom/google/android/gms/analytics/internal/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iq;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/h;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/t;->o()Lcom/google/android/gms/analytics/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/iq;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iq;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/i;

    iget-object v2, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/i;-><init>(Lcom/google/android/gms/analytics/internal/t;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/j;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/j;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/h;->c:Z

    return-void
.end method

.method k()Lcom/google/android/gms/analytics/internal/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/measurement/d;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->m()Lcom/google/android/gms/measurement/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/d;->a()Lcom/google/android/gms/measurement/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/t;->q()Lcom/google/android/gms/analytics/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/y;->c()Lcom/google/android/gms/internal/kp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/d;->a(Lcom/google/android/gms/measurement/f;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/h;->b:Lcom/google/android/gms/analytics/internal/t;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/t;->r()Lcom/google/android/gms/analytics/internal/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ag;->b()Lcom/google/android/gms/internal/kr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/d;->a(Lcom/google/android/gms/measurement/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/h;->b(Lcom/google/android/gms/measurement/d;)V

    return-object v0
.end method
