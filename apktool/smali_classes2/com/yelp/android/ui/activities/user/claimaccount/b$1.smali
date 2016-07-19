.class Lcom/yelp/android/ui/activities/user/claimaccount/b$1;
.super Lcom/yelp/android/bt/a;
.source "ClaimPlatformAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/user/claimaccount/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bt/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/user/claimaccount/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/user/claimaccount/b;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b;

    invoke-direct {p0}, Lcom/yelp/android/bt/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bt/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/bt/b;->a()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;-><init>(Lcom/yelp/android/ui/activities/user/claimaccount/b$1;)V

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->a(Lcom/yelp/android/ui/activities/user/claimaccount/b;Lrx/a;Lrx/e;)Lrx/f;

    .line 61
    return-void
.end method
