.class public Lcom/yelp/android/ui/activities/badges/c;
.super Lcom/yelp/android/bw/b;
.source "BadgesPresenter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/badges/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bw/b",
        "<",
        "Lcom/yelp/android/ui/activities/badges/b$c;",
        "Lcom/yelp/android/serializable/BadgesViewModel;",
        ">;",
        "Lcom/yelp/android/ui/activities/badges/b$a;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yelp/android/bt/b;

.field private final d:Lcom/yelp/android/appdata/webrequests/co;

.field private e:Lrx/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/badges/b$c;Lcom/yelp/android/serializable/BadgesViewModel;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p3, p4, p5}, Lcom/yelp/android/bw/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/activities/badges/c;->c:Lcom/yelp/android/bt/b;

    .line 33
    iput-object p2, p0, Lcom/yelp/android/ui/activities/badges/c;->d:Lcom/yelp/android/appdata/webrequests/co;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/yelp/android/bw/b;->a()V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BadgesViewModel;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$c;->c()V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BadgesViewModel;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/badges/b$c;->a(Ljava/util/List;)V

    .line 45
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Badge;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Badge;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/badges/b$c;->a(Lcom/yelp/android/serializable/Badge;)V

    .line 95
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/bw/b;->b()V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BadgesViewModel;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/badges/c;->d()V

    .line 54
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->e:Lrx/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->e:Lrx/f;

    invoke-interface {v0}, Lrx/f;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$c;->b()V

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/c;->c:Lcom/yelp/android/bt/b;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BadgesViewModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/bt/b;->a(Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/badges/c$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/badges/c$1;-><init>(Lcom/yelp/android/ui/activities/badges/c;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/badges/c;->a(Lrx/a;Lrx/e;)Lrx/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->e:Lrx/f;

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/c;->d:Lcom/yelp/android/appdata/webrequests/co;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BadgesViewModel;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
