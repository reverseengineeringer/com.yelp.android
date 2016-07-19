.class Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;
.super Ljava/lang/Object;
.source "ActivityHighlights.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;
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
        "Lcom/yelp/android/appdata/webrequests/dw$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dw$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dw$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dw$a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)I

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dw$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Z)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dw$a;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->c()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Ljava/util/List;)V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->notifyDataSetChanged()V

    .line 263
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 236
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dw;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->c()V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->notifyDataSetChanged()V

    .line 249
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 232
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dw$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dw$a;)V

    return-void
.end method
