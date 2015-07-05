.class Lcom/yelp/android/ui/activities/eg;
.super Ljava/lang/Object;
.source "ActivityTwitterSignIn.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eg;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

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
    .line 158
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b(Z)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eg;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->hideLoadingDialog()V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eg;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->setResult(I)V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eg;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->finish()V

    .line 166
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
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eg;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    const v2, 0x7f070500

    const v3, 0x7f070111

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showYesNoDialog(IIII)V

    .line 172
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/eg;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
