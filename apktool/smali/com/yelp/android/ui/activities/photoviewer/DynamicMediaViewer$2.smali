.class Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;
.super Ljava/lang/Object;
.source "DynamicMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 8
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
    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 218
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v2

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_a

    move v0, v4

    .line 231
    :goto_1
    if-ge v0, v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    new-instance v6, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    invoke-direct {v6}, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;-><init>()V

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Lcom/yelp/android/serializable/Media;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;I)I

    move v1, v2

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;I)I

    .line 243
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 244
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 245
    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v7, v7, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v7}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 246
    iget-object v6, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v6, v6, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(ILcom/yelp/android/serializable/Media;)V

    .line 243
    :cond_3
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 247
    :cond_4
    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v7, v7, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v7}, Lcom/yelp/android/ui/activities/photoviewer/a;->d()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 248
    iget-object v6, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v6, v6, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->a(Lcom/yelp/android/serializable/Media;)V

    goto :goto_4

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/photoviewer/a;->g(I)V

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)I

    move-result v0

    if-nez v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/photoviewer/a;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/photoviewer/a;->g(I)V

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c(Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;)V

    .line 269
    if-eq v1, v3, :cond_9

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 279
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    goto/16 :goto_0

    .line 271
    :cond_9
    if-gt v2, v3, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v0

    if-gt v3, v0, :cond_8

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->c:Lcom/yelp/android/ui/activities/photoviewer/a;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/photoviewer/a;->e(I)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->a(I)V

    goto :goto_5

    :cond_a
    move v1, v3

    goto/16 :goto_2
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
    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a:Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->hideLoadingDialog()V

    .line 213
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
