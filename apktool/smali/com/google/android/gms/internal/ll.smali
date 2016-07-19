.class public abstract Lcom/google/android/gms/internal/ll;
.super Lcom/google/android/gms/internal/lq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/ll",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/lq;"
    }
.end annotation


# instance fields
.field protected m:Lcom/google/android/gms/internal/ln;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/lq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzsn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ln;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ln;->b(I)Lcom/google/android/gms/internal/lo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/lo;->a(Lcom/google/android/gms/internal/zzsn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/lk;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lk;->q()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/lk;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/lt;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lk;->q()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/lk;->a(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ls;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/ls;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ln;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ln;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/lo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lo;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ln;->a(ILcom/google/android/gms/internal/lo;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/lo;->a(Lcom/google/android/gms/internal/ls;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ln;->a(I)Lcom/google/android/gms/internal/lo;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ln;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ll;->m:Lcom/google/android/gms/internal/ln;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ln;->b(I)Lcom/google/android/gms/internal/lo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lo;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll;->d()Lcom/google/android/gms/internal/ll;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/lq;->e()Lcom/google/android/gms/internal/lq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ll;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/lp;->a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/ll;)V

    return-object v0
.end method

.method public synthetic e()Lcom/google/android/gms/internal/lq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ll;->d()Lcom/google/android/gms/internal/ll;

    move-result-object v0

    return-object v0
.end method
