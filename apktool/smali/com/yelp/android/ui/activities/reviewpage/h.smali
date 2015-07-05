.class Lcom/yelp/android/ui/activities/reviewpage/h;
.super Ljava/lang/Object;
.source "ActivityHighlights.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ev;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ev;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ev;",
            ")V"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ev;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)I

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ev;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Z)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ev;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->c()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->b(Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Ljava/util/List;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->notifyDataSetChanged()V

    .line 255
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
    .line 229
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/eu;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->c()V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/h;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityHighlights;->a:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->notifyDataSetChanged()V

    .line 241
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ev;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ev;)V

    return-void
.end method
