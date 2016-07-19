.class Lcom/yelp/android/appdata/webrequests/co$6;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/co;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;

.field private b:I


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$6;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->b(I)V

    .line 806
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "user_is_fetched"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    .line 808
    :cond_0
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
    .line 812
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co;)V

    .line 814
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->b:I

    .line 819
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/appdata/webrequests/co$6;->b:I

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 797
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Integer;)V

    return-void
.end method
