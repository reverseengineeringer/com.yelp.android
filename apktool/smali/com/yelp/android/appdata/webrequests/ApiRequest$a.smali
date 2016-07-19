.class final Lcom/yelp/android/appdata/webrequests/ApiRequest$a;
.super Lcom/yelp/android/util/q;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ApiRequest;
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
        "Lcom/yelp/android/util/q",
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
    .line 537
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 539
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
    .line 582
    invoke-super {p0, p1}, Lcom/yelp/android/util/q;->publishProgress([Ljava/lang/Object;)V

    .line 583
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
    .line 559
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Lcom/yelp/android/util/q;->onCancelled()V

    .line 573
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c()V

    .line 574
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
    .line 551
    invoke-super {p0, p1}, Lcom/yelp/android/util/q;->onPostExecute(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/Object;)V

    .line 555
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Lcom/yelp/android/util/q;->onPreExecute()V

    .line 544
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->e()V

    .line 547
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
    .line 564
    invoke-super {p0, p1}, Lcom/yelp/android/util/q;->onProgressUpdate([Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->d([Ljava/lang/Object;)V

    .line 568
    :cond_0
    return-void
.end method
