.class final Lcom/yelp/android/appdata/webrequests/k$a;
.super Ljava/lang/Object;
.source "ApiLocationRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/LocationService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

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
        "Lcom/yelp/android/appdata/LocationService$a;"
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

.field private final b:Lcom/yelp/android/appdata/webrequests/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    .line 328
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    iput-object p1, v0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    .line 341
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 342
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    const v0, 0x7f0700cd

    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k$b;

    .line 346
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->a(Z)V

    .line 347
    if-eqz v0, :cond_0

    .line 348
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/k$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k$a;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/k;->b([Ljava/lang/Object;)V

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
    .line 331
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/k$a;->a:[Ljava/lang/Object;

    .line 332
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k$b;

    .line 359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "dummy_location"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    .line 366
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k$a;->b:Lcom/yelp/android/appdata/webrequests/k;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k$a;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/k;->b([Ljava/lang/Object;)V

    .line 367
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
