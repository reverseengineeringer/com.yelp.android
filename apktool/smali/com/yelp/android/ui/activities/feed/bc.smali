.class Lcom/yelp/android/ui/activities/feed/bc;
.super Ljava/lang/Object;
.source "ReviewFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/bb;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/bb;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 133
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->i(Lcom/yelp/android/ui/activities/feed/bb;)I

    .line 139
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->l(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0701d8

    iget-object v6, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/feed/bb;->k(Lcom/yelp/android/ui/activities/feed/bb;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/yelp/android/ui/activities/feed/bb;->a(Lcom/yelp/android/ui/activities/feed/bb;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    .line 143
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 144
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/feed/bb;->a:Lcom/yelp/android/ui/activities/feed/ba;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/ba;->a(Lcom/yelp/android/ui/activities/feed/ba;)Lcom/yelp/android/ui/activities/feed/bd;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/bb;->m(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/serializable/ReviewFeedEntry;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/yelp/android/ui/activities/feed/bd;->a(Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/serializable/ReviewFeedEntry;)V

    .line 145
    return-void

    .line 110
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    goto :goto_0

    .line 113
    :pswitch_0
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->a(Lcom/yelp/android/ui/activities/feed/bb;)I

    .line 119
    :goto_4
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->d(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070653

    iget-object v6, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/feed/bb;->c(Lcom/yelp/android/ui/activities/feed/bb;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/yelp/android/ui/activities/feed/bb;->a(Lcom/yelp/android/ui/activities/feed/bb;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->b(Lcom/yelp/android/ui/activities/feed/bb;)I

    goto :goto_4

    .line 123
    :pswitch_1
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->e(Lcom/yelp/android/ui/activities/feed/bb;)I

    .line 129
    :cond_3
    :goto_5
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->h(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0702b5

    iget-object v6, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/feed/bb;->g(Lcom/yelp/android/ui/activities/feed/bb;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/yelp/android/ui/activities/feed/bb;->a(Lcom/yelp/android/ui/activities/feed/bb;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->f(Lcom/yelp/android/ui/activities/feed/bb;)I

    goto :goto_5

    .line 136
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bc;->a:Lcom/yelp/android/ui/activities/feed/bb;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/bb;->j(Lcom/yelp/android/ui/activities/feed/bb;)I

    goto/16 :goto_1

    .line 143
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00be
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
