.class Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;
.super Ljava/lang/Object;
.source "MediaGridFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;
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
        "Lcom/yelp/android/serializable/MediaPayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->e:I

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/Collection;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget v1, v1, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iput-boolean v2, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->f:Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->notifyDataSetChanged()V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->l()V

    .line 120
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
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 108
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
