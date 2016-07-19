.class Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;
.super Lcom/yelp/android/bt/a;
.source "ClaimPlatformAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/bt/a",
        "<",
        "Lcom/yelp/android/appdata/webrequests/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/user/claimaccount/b$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/user/claimaccount/b$1;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b$1;

    invoke-direct {p0}, Lcom/yelp/android/bt/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/e$a;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->b(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bx/b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/user/claimaccount/a$c;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/e$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/e$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/appdata/webrequests/e$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/user/claimaccount/a$c;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/user/claimaccount/b$1;->a:Lcom/yelp/android/ui/activities/user/claimaccount/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/user/claimaccount/b;->c(Lcom/yelp/android/ui/activities/user/claimaccount/b;)Lcom/yelp/android/bx/c;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->a(Z)V

    .line 59
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/yelp/android/appdata/webrequests/e$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/user/claimaccount/b$1$1;->a(Lcom/yelp/android/appdata/webrequests/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
