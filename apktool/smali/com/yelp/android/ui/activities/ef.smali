.class Lcom/yelp/android/ui/activities/ef;
.super Ljava/lang/Object;
.source "ActivityTwitterSignIn.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ef;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

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
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ef;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ef;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    .line 144
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
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ef;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    const v2, 0x7f070500

    const v3, 0x7f070111

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showYesNoDialog(IIII)V

    .line 150
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ef;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
