.class Lcom/yelp/android/ui/activities/ActivityLogin$2;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityLogin;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 4
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
    .line 712
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->hideLoadingDialog()V

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v2, 0x7f07038a

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v3, 0x7f07047b

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 714
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->hideLoadingDialog()V

    .line 705
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v2, 0x7f07038a

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v3, 0x7f07047b

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 699
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityLogin$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
