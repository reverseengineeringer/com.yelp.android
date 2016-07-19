.class Lcom/yelp/android/util/c$2;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/c;
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
        "Lcom/yelp/android/serializable/YelpBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/util/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/util/c;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/util/c$2;->a:Lcom/yelp/android/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/util/c$2;->a:Lcom/yelp/android/util/c;

    invoke-static {v0}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/util/c;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/util/c$2;->a:Lcom/yelp/android/util/c;

    invoke-static {v0}, Lcom/yelp/android/util/c;->b(Lcom/yelp/android/util/c;)Lcom/yelp/android/util/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/util/c$a;->a(Z)V

    .line 197
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
    .line 189
    iget-object v0, p0, Lcom/yelp/android/util/c$2;->a:Lcom/yelp/android/util/c;

    invoke-static {v0}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/util/c;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/util/c$2;->a:Lcom/yelp/android/util/c;

    const v1, 0x7f070591

    invoke-static {v0, v1}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/util/c;I)V

    .line 191
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p2, Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/util/c$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V

    return-void
.end method
