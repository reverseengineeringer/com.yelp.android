.class public Lcom/yelp/android/ui/activities/profile/tips/b;
.super Lcom/yelp/android/bw/b;
.source "UserTipsPresenter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/tips/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bw/b",
        "<",
        "Lcom/yelp/android/ui/activities/profile/tips/a$c;",
        "Lcom/yelp/android/serializable/UserTipsViewModel;",
        ">;",
        "Lcom/yelp/android/ui/activities/profile/tips/a$a;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yelp/android/bt/b;

.field private final d:I

.field private e:Lrx/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/profile/tips/a$c;Lcom/yelp/android/serializable/UserTipsViewModel;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p2, p3, p4}, Lcom/yelp/android/bw/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->c:Lcom/yelp/android/bt/b;

    .line 39
    iput p5, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->d:I

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/profile/tips/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/yelp/android/bw/b;->a()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->a(Ljava/util/List;)V

    .line 48
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->d(Lcom/yelp/android/serializable/Tip;)V

    .line 59
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->c:Lcom/yelp/android/bt/b;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/yelp/android/bt/b;->a(Ljava/lang/String;Z)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/profile/tips/b$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/tips/b$1;-><init>(Lcom/yelp/android/ui/activities/profile/tips/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/tips/b;->a(Lrx/a;Lrx/e;)Lrx/f;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->c(Lcom/yelp/android/serializable/Tip;)V

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/yelp/android/bw/b;->b()V

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/b;->e()V

    .line 54
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 93
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/profile/tips/a$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/profile/tips/a$c;->b(Lcom/yelp/android/serializable/Tip;)V

    .line 98
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/tips/b;->e()V

    .line 88
    return-void
.end method

.method protected e()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTipsViewModel;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->e:Lrx/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->e:Lrx/f;

    invoke-interface {v0}, Lrx/f;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->c:Lcom/yelp/android/bt/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v1, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/UserTipsViewModel;->d()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v2, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/UserTipsViewModel;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->d:I

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v4, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/UserTipsViewModel;->c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->FIRSTS:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    if-ne v4, v5, :cond_2

    move v4, v6

    :goto_0
    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->b:Lcom/yelp/android/bx/c;

    check-cast v5, Lcom/yelp/android/serializable/UserTipsViewModel;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/UserTipsViewModel;->c()Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    move-result-object v5

    sget-object v8, Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;->TIPS_OF_THE_DAY:Lcom/yelp/android/serializable/UserTipsViewModel$ViewType;

    if-ne v5, v8, :cond_3

    move v5, v6

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/yelp/android/bt/b;->a(Lcom/yelp/android/serializable/User;IIZZ)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/profile/tips/b$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/tips/b$2;-><init>(Lcom/yelp/android/ui/activities/profile/tips/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/tips/b;->a(Lrx/a;Lrx/e;)Lrx/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/tips/b;->e:Lrx/f;

    .line 140
    :cond_1
    return-void

    :cond_2
    move v4, v7

    .line 107
    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
.end method
