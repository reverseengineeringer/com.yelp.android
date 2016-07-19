.class Lcom/yelp/android/ui/activities/profile/tips/b$2;
.super Lrx/e;
.source "UserTipsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/profile/tips/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/tips/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/tips/b;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-direct {p0}, Lrx/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 122
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/b;->a(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string/jumbo v0, "UserTipsPresenter"

    const-string/jumbo v1, "Error from request"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/b;->b(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/b;->c(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->a(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/b;->d(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b$2;->a:Lcom/yelp/android/ui/activities/profile/tips/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/tips/b;->e(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->b()V

    .line 137
    :cond_0
    return-void
.end method
