.class public abstract Lcom/google/ads/mediation/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/im;
.implements Lcom/yelp/android/bc/c;
.implements Lcom/yelp/android/bc/g;
.implements Lcom/yelp/android/bf/a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/a$b;,
        Lcom/google/ads/mediation/a$a;,
        Lcom/google/ads/mediation/a$e;,
        Lcom/google/ads/mediation/a$d;,
        Lcom/google/ads/mediation/a$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/ads/AdView;

.field protected b:Lcom/google/android/gms/ads/f;

.field final c:Lcom/yelp/android/be/b;

.field private d:Lcom/google/android/gms/ads/b;

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/ads/f;

.field private g:Lcom/yelp/android/bf/b;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/mediation/a$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/a$1;-><init>(Lcom/google/ads/mediation/a;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->c:Lcom/yelp/android/be/b;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/f;)Lcom/google/android/gms/ads/f;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/mediation/a;)Lcom/yelp/android/bf/b;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->g:Lcom/yelp/android/bf/b;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/b$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/b$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .locals 4

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-interface {p2}, Lcom/yelp/android/bc/a;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/util/Date;)Lcom/google/android/gms/ads/c$a;

    :cond_0
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(I)Lcom/google/android/gms/ads/c$a;

    :cond_1
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->d()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;

    :cond_3
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/c$a;

    :cond_4
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->e()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-interface {p2}, Lcom/yelp/android/bc/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->a(Z)Lcom/google/android/gms/ads/c$a;

    :cond_5
    invoke-interface {p2}, Lcom/yelp/android/bc/a;->g()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/c$a;->b(Z)Lcom/google/android/gms/ads/c$a;

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->c()V

    iput-object v1, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/ads/b;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    :cond_3
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/bc/a;Ljava/lang/String;Lcom/yelp/android/bf/b;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/a;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ads/mediation/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/ads/mediation/a;->g:Lcom/yelp/android/bf/b;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->g:Lcom/yelp/android/bf/b;

    invoke-interface {v0, p0}, Lcom/yelp/android/bf/b;->a(Lcom/yelp/android/bf/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/bc/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/yelp/android/bc/a;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->b()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/d;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/ads/mediation/a$c;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/a$c;-><init>(Lcom/google/ads/mediation/a;Lcom/yelp/android/bc/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/a;->a(Landroid/content/Context;Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/bc/f;Landroid/os/Bundle;Lcom/yelp/android/bc/a;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    new-instance v1, Lcom/google/ads/mediation/a$d;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/a$d;-><init>(Lcom/google/ads/mediation/a;Lcom/yelp/android/bc/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/a;->a(Landroid/content/Context;Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/bc/h;Landroid/os/Bundle;Lcom/yelp/android/bc/l;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/ads/mediation/a$e;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/a$e;-><init>(Lcom/google/ads/mediation/a;Lcom/yelp/android/bc/h;)V

    const-string/jumbo v1, "pubid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/ads/mediation/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;

    move-result-object v1

    invoke-interface {p4}, Lcom/yelp/android/bc/l;->h()Lcom/google/android/gms/ads/formats/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/b;)Lcom/google/android/gms/ads/b$a;

    :cond_0
    invoke-interface {p4}, Lcom/yelp/android/bc/l;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/c$a;)Lcom/google/android/gms/ads/b$a;

    :cond_1
    invoke-interface {p4}, Lcom/yelp/android/bc/l;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/formats/d$a;)Lcom/google/android/gms/ads/b$a;

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/b$a;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->d:Lcom/google/android/gms/ads/b;

    invoke-virtual {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/a;->a(Landroid/content/Context;Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public a(Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->g:Lcom/yelp/android/bf/b;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "AdMobAdapter.loadAd called before initialize."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/a;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->c:Lcom/yelp/android/be/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/yelp/android/be/b;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a;->e:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/a;->a(Landroid/content/Context;Lcom/yelp/android/bc/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/c;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->a()V

    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->b:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()V

    return-void
.end method

.method public f()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/yelp/android/bc/b$a;

    invoke-direct {v0}, Lcom/yelp/android/bc/b$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bc/b$a;->a(I)Lcom/yelp/android/bc/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/bc/b$a;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->f:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()V

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/a;->g:Lcom/yelp/android/bf/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
