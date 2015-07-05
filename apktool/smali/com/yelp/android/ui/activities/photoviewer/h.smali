.class Lcom/yelp/android/ui/activities/photoviewer/h;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 646
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v4

    .line 650
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-eqz v0, :cond_1

    .line 654
    check-cast p1, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 655
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->isSingleMediaRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 657
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(I)V

    .line 662
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 663
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 668
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isAllMediaFetched(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, v7}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(I)V

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getIndex()I

    move-result v2

    .line 680
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v2, v1, :cond_c

    move v0, v3

    .line 687
    :goto_1
    if-ge v0, v2, :cond_4

    .line 688
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)I

    move v1, v2

    .line 697
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)I

    .line 700
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 701
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getIndex()I

    move-result v0

    .line 702
    iget-object v5, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 703
    iget-object v5, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 700
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 705
    :cond_6
    iget-object v5, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 709
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(I)V

    .line 710
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->g(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->isAllMediaFetched(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->j(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v0

    if-nez v0, :cond_8

    .line 714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, v7}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/appdata/webrequests/MediaRequest;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 716
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/ak;->a(I)V

    .line 724
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->h(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V

    .line 725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v0

    if-eq v1, v0, :cond_b

    .line 726
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;I)V

    .line 731
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 727
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v0

    if-gt v2, v0, :cond_a

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getIndex()I

    move-result v0

    if-gt v1, v0, :cond_a

    .line 729
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->i(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    goto :goto_5

    :cond_c
    move v1, v0

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
    .line 641
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/h;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->hideLoadingDialog()V

    .line 642
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 637
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
