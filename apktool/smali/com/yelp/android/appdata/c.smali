.class Lcom/yelp/android/appdata/c;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/yelp/android/appdata/c;->a:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 252
    const-string/jumbo v0, "Error checking email confirmation."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 257
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Z)V

    .line 261
    :cond_0
    return-void
.end method
