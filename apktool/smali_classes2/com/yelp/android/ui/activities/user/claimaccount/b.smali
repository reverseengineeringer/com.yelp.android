.class public Lcom/yelp/android/ui/activities/user/claimaccount/b;
.super Lcom/yelp/android/bw/b;
.source "ClaimPlatformAccountPresenter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/user/claimaccount/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bw/b",
        "<",
        "Lcom/yelp/android/ui/activities/user/claimaccount/a$c;",
        "Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;",
        ">;",
        "Lcom/yelp/android/ui/activities/user/claimaccount/a$a;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yelp/android/bt/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/bt/b;Lcom/yelp/android/by/b;Lcom/yelp/android/ui/activities/user/claimaccount/a$c;Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p2, p3, p4}, Lcom/yelp/android/bw/b;-><init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->c:Lcom/yelp/android/bt/b;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bt/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->c:Lcom/yelp/android/bt/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/user/claimaccount/b;Lrx/a;Lrx/e;)Lrx/f;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a(Lrx/a;Lrx/e;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bx/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a:Lcom/yelp/android/bx/b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bx/c;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->b:Lcom/yelp/android/bx/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/yelp/android/bw/b;->a()V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->c:Lcom/yelp/android/bt/b;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->b:Lcom/yelp/android/bx/c;

    check-cast v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->b()Lcom/yelp/android/serializable/PlatformConfirmation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformConfirmation;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/bt/b;->b(Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;-><init>(Lcom/yelp/android/ui/activities/user/claimaccount/b;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a(Lrx/a;Lrx/e;)Lrx/f;

    .line 64
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a:Lcom/yelp/android/bx/b;

    check-cast v0, Lcom/yelp/android/ui/activities/user/claimaccount/a$c;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/a$c;->a()V

    .line 69
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
