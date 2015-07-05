.class final Lcom/yelp/android/appdata/webrequests/i;
.super Ljava/lang/Object;
.source "ApiLocationRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/aa;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/appdata/webrequests/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/h",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/h",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    .line 312
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    iput-object p1, v0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    .line 321
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/h;->isLocationAbsolutelyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    const v0, 0x7f070045

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/h;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/j;

    .line 325
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/h;->cancel(Z)V

    .line 326
    if-eqz v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/j;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/i;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->startRequest([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/i;->a:[Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/h;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/j;

    .line 337
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "dummy_location"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yelp/android/appdata/webrequests/h;->mLocation:Landroid/location/Location;

    .line 344
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/i;->b:Lcom/yelp/android/appdata/webrequests/h;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/i;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->startRequest([Ljava/lang/Object;)V

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
