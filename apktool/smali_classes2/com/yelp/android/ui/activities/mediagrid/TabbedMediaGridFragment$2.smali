.class Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;
.super Ljava/lang/Object;
.source "TabbedMediaGridFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;I)I

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Ljava/util/ArrayList;)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/MediaCategory;->b(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/serializable/MediaPayload;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/MediaCategory;->b(Ljava/util/List;)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->e:I

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iput-boolean v3, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f:Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l()V

    .line 253
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/serializable/MediaPayload;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/MediaCategory;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->l()V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/MediaCategory;->a(Ljava/util/List;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 217
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;I)I

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;Lcom/yelp/android/serializable/MediaCategory;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->c(Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;)Lcom/yelp/android/serializable/MediaCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MediaCategory;->c()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->e:I

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a:Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;

    iput-boolean v3, v0, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment;->f:Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 200
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/TabbedMediaGridFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
