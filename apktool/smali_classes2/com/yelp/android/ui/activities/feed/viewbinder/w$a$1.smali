.class Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;
.super Ljava/lang/Object;
.source "ReviewFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->REMOVE:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    move-object v1, v0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/serializable/FeedItem;

    move-result-object v0

    const-class v5, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v6

    .line 166
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v7

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    sget-object v5, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->COOL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c(Z)V

    .line 193
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    add-int/2addr v0, v4

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c(I)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->d(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f070225

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v7

    invoke-static {v4, v6, v8, v7}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    move-object v0, v5

    .line 202
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 203
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/ci/f;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ci/h;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/serializable/FeedItem;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Lcom/yelp/android/ci/h;-><init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;)V

    invoke-interface {v2, v3}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 204
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    move-object v1, v0

    goto :goto_0

    .line 169
    :pswitch_0
    sget-object v5, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->USEFUL:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_5
    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a(Z)V

    .line 171
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_6
    add-int/2addr v0, v6

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a(I)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f070630

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v7

    invoke-static {v4, v6, v8, v7}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    move-object v0, v5

    .line 178
    goto :goto_3

    :cond_1
    move v0, v3

    .line 170
    goto :goto_5

    :cond_2
    move v0, v2

    .line 171
    goto :goto_6

    .line 180
    :pswitch_1
    sget-object v5, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->FUNNY:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_7
    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b(Z)V

    .line 182
    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_8
    add-int/2addr v0, v4

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b(I)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->c(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f070301

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v7

    invoke-static {v4, v6, v8, v7}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    move-object v0, v5

    .line 189
    goto/16 :goto_3

    :cond_3
    move v0, v3

    .line 181
    goto :goto_7

    :cond_4
    move v4, v2

    .line 182
    goto :goto_8

    :cond_5
    move v0, v3

    .line 192
    goto/16 :goto_1

    :cond_6
    move v4, v2

    .line 193
    goto/16 :goto_2

    :cond_7
    move v2, v3

    .line 202
    goto/16 :goto_4

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f010a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
