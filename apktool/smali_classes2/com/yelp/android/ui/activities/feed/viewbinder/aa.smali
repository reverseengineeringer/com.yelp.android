.class public Lcom/yelp/android/ui/activities/feed/viewbinder/aa;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/o;
.source "TalkPostListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/viewbinder/o",
        "<",
        "Lcom/yelp/android/ui/activities/feed/viewbinder/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->d:Landroid/view/View;

    const v2, 0x7f0f03fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a:Lcom/yelp/android/cg/f;

    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->d:Landroid/view/View;

    const v2, 0x7f0f03ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->d:Landroid/view/View;

    const v2, 0x7f0f0400

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->c:Lcom/yelp/android/cg/f;

    .line 33
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/aa;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/o;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    const-class v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v0, v4}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 61
    const-class v1, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v1, v5}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 62
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a:Lcom/yelp/android/cg/f;

    check-cast v2, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {p0, p1, v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->e:Landroid/widget/TextView;

    const v1, 0x7f07053d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/aa;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const-class v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 41
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->c:Lcom/yelp/android/cg/f;

    check-cast v1, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {p0, p1, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    .line 46
    :pswitch_1
    const-class v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v0, v5}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 48
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    check-cast v1, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->b:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {p0, p1, v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    .line 53
    :pswitch_2
    const-class v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v0, v4}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a:Lcom/yelp/android/cg/f;

    check-cast v1, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->a(Lcom/yelp/android/serializable/TalkTopic;Lcom/yelp/android/serializable/TalkMessage;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a:Lcom/yelp/android/cg/f;

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/p;

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/p;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
