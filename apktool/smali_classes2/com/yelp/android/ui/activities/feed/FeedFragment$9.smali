.class Lcom/yelp/android/ui/activities/feed/FeedFragment$9;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 673
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/bx;

    move-result-object v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/bx;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/bx;)Lcom/yelp/android/appdata/webrequests/bx;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/bx;->i_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Ljava/lang/String;

    .line 678
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 679
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 680
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 681
    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/FeedItem;->a(I)V

    .line 682
    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/String;)V

    .line 679
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;I)I

    .line 685
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 729
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 731
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->c()Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;->NO_MORE_FEEDS:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    if-ne v0, v1, :cond_2

    .line 732
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iput-object v6, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    .line 733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    new-instance v2, Lcom/yelp/android/g/g;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n()V

    .line 739
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 744
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 746
    :cond_3
    return-void

    .line 692
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v3

    invoke-direct {v1, v3, v6, v6}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/fn;)Lcom/yelp/android/appdata/webrequests/fn;

    .line 695
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/fn;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_1

    .line 697
    :cond_4
    const-string/jumbo v0, "FeedFragment"

    const-string/jumbo v1, "User is not logged in"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 703
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_NEARBY:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1, v6}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    goto/16 :goto_1

    .line 707
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS_FOLLOWING:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1, v6}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 708
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    goto/16 :goto_1

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 715
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B_()V

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/util/List;)V

    .line 717
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o()V

    .line 724
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    new-instance v3, Lcom/yelp/android/g/g;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iget-object v5, v5, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/activities/feed/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 722
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/util/List;)V

    goto :goto_2

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Z)V

    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 657
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 667
    return v3
.end method

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
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 646
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Z)V

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n()V

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 650
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    check-cast p2, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V

    return-void
.end method
