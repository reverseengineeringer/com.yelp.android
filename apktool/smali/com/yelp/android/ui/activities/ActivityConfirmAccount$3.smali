.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 317
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070614

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 320
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 313
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
