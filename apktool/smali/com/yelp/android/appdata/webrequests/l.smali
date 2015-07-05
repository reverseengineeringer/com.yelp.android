.class final Lcom/yelp/android/appdata/webrequests/l;
.super Lcom/yelp/android/util/aa;
.source "ApiRequest.java"


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
        "Lcom/yelp/android/util/aa",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 495
    return-void
.end method


# virtual methods
.method final varargs a([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/yelp/android/util/aa;->publishProgress([Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Lcom/yelp/android/util/aa;->onCancelled()V

    .line 529
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onCancelled()V

    .line 530
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/yelp/android/util/aa;->onPostExecute(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onPostExecute(Ljava/lang/Object;)V

    .line 511
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/yelp/android/util/aa;->onPreExecute()V

    .line 500
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onPreExecute()V

    .line 503
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 520
    invoke-super {p0, p1}, Lcom/yelp/android/util/aa;->onProgressUpdate([Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/l;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/l;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onProgressUpdate([Ljava/lang/Object;)V

    .line 524
    :cond_0
    return-void
.end method
