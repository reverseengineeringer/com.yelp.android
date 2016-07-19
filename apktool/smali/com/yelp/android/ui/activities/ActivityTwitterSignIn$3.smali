.class Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;
.super Ljava/lang/Object;
.source "ActivityTwitterSignIn.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->hideLoadingDialog()V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->setResult(I)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->finish()V

    .line 176
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 5
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
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    const v2, 0x7f070505

    const v3, 0x7f07018f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showYesNoDialog(IIII)V

    .line 185
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
