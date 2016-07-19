.class Lcom/yelp/android/appdata/webrequests/co$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/webrequests/co;->a(Landroid/support/v4/app/l;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/UserLocation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/l;

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/co;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/co;Landroid/support/v4/app/l;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$4;->b:Lcom/yelp/android/appdata/webrequests/co;

    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/co$4;->a:Landroid/support/v4/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/UserLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserLocation;

    .line 738
    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserLocation;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    :goto_0
    if-eqz v0, :cond_1

    .line 745
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$4;->b:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/UserLocation;)V

    .line 747
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 721
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$4;->a:Landroid/support/v4/app/l;

    if-eqz v1, :cond_0

    .line 726
    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$4;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    const-string/jumbo v0, "LoginManager"

    invoke-static {v0, p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
