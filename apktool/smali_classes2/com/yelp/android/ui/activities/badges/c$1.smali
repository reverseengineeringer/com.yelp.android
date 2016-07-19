.class Lcom/yelp/android/ui/activities/badges/c$1;
.super Lcom/yelp/android/bt/a;
.source "BadgesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/badges/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bt/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/Badge;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/badges/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/badges/c;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-direct {p0}, Lcom/yelp/android/bt/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/badges/c$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->a(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$c;->c()V

    .line 72
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->b(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/badges/b$c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->c(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/badges/b$c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->d(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BadgesViewModel;->a(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->e(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/badges/b$c;->c()V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/badges/c;->g(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/badges/b$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/badges/c$1;->a:Lcom/yelp/android/ui/activities/badges/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/badges/c;->f(Lcom/yelp/android/ui/activities/badges/c;)Lcom/yelp/android/bx/c;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/BadgesViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BadgesViewModel;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/badges/b$c;->a(Ljava/util/List;)V

    .line 86
    return-void
.end method
