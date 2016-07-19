.class public abstract Lcom/yelp/android/ui/activities/feed/viewbinder/ad;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/o;
.source "UserListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/viewbinder/o",
        "<",
        "Lcom/yelp/android/cg/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 25
    new-instance v0, Lcom/yelp/android/cg/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->d:Landroid/view/View;

    const v2, 0x7f0f0407

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a:Lcom/yelp/android/cg/f;

    .line 27
    new-instance v0, Lcom/yelp/android/cg/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->d:Landroid/view/View;

    const v2, 0x7f0f0408

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->b:Lcom/yelp/android/cg/f;

    .line 29
    new-instance v0, Lcom/yelp/android/cg/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->d:Landroid/view/View;

    const v2, 0x7f0f0409

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->c:Lcom/yelp/android/cg/f;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;
.end method

.method protected abstract a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
.end method

.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->e:Landroid/widget/TextView;

    const v1, 0x7f07053d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->c:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p0, p1, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v1}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/cg/g;

    invoke-virtual {p0, p1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
