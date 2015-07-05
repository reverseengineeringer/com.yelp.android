.class Lcom/yelp/android/debug/g;
.super Ljava/lang/Object;
.source "FreezerFragmentDebugFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/debug/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/debug/f;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 170
    iget-object v0, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    invoke-static {v0}, Lcom/yelp/android/debug/f;->b(Lcom/yelp/android/debug/f;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    invoke-static {v2}, Lcom/yelp/android/debug/f;->a(Lcom/yelp/android/debug/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/debug/f;->a(Lcom/yelp/android/debug/f;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 172
    return-void
.end method

.method public onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;TResult;)V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    invoke-static {v0}, Lcom/yelp/android/debug/f;->b(Lcom/yelp/android/debug/f;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    invoke-static {v2}, Lcom/yelp/android/debug/f;->a(Lcom/yelp/android/debug/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/debug/g;->a:Lcom/yelp/android/debug/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/debug/f;->a(Lcom/yelp/android/debug/f;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 178
    return-void
.end method
