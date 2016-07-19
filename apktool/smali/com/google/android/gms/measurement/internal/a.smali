.class Lcom/google/android/gms/measurement/internal/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/ag;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Z

.field private s:J

.field private t:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ag;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    return-void
.end method

.method public a(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->g:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->g:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->m:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/a;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->h:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->h:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->k:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->k:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->l:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->l:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->i:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/a;->f:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->f:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->g:J

    return-wide v0
.end method

.method public f(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->s:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->s:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->h:J

    return-wide v0
.end method

.method public g(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->t:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->t:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->n:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->n:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->o:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->o:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->k:J

    return-wide v0
.end method

.method public j(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->p:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->p:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->l:J

    return-wide v0
.end method

.method public k(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->q:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/a;->q:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a;->m:Z

    return v0
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->f:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->s:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->t:J

    return-wide v0
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->f()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->c()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Bundle index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/a;->r:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->f:J

    return-void
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->n:J

    return-wide v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->o:J

    return-wide v0
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->p:J

    return-wide v0
.end method

.method public t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->x()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/a;->q:J

    return-wide v0
.end method
