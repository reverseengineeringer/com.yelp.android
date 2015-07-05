.class public Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "CurrentUserFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/ay;
.implements Lcom/yelp/android/ui/activities/feed/br;
.implements Lcom/yelp/android/ui/activities/feed/n;


# instance fields
.field protected a:Lcom/yelp/android/ui/activities/feed/aq;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/activities/feed/u;

.field private d:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 456
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/p;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/p;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 340
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/q;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 352
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/r;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/r;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 362
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/s;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/s;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 377
    const-string/jumbo v0, "com.yelp.android.review.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/t;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/t;-><init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 388
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/serializable/CheckInFeedEntry;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendCheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "check_in_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/CheckInFeedEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/CheckInFeedEntry;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v3

    invoke-virtual {p2}, Lcom/yelp/android/serializable/CheckInFeedEntry;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public a(ILcom/yelp/android/serializable/CheckInFeedEntry;Z)V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p2}, Lcom/yelp/android/serializable/CheckInFeedEntry;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    .line 222
    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 227
    :goto_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p3}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fo;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 229
    return-void

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0
.end method

.method public a(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getBusinessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method public a(ILcom/yelp/android/serializable/TipFeedEntry;Z)V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 251
    if-eqz p3, :cond_0

    .line 252
    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 257
    return-void

    .line 254
    :cond_0
    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 130
    instance-of v2, v0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;

    if-eqz v2, :cond_3

    .line 131
    check-cast v0, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;

    .line 133
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraftFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v1, v0, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_3
    instance-of v2, v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    if-eqz v2, :cond_4

    .line 150
    check-cast v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x416

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 152
    :cond_4
    instance-of v2, v0, Lcom/yelp/android/serializable/GenericFeedEntry;

    if-eqz v2, :cond_5

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    check-cast v0, Lcom/yelp/android/serializable/GenericFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericFeedEntry;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :cond_5
    instance-of v2, v0, Lcom/yelp/android/serializable/TipFeedEntry;

    if-eqz v2, :cond_6

    .line 155
    check-cast v0, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/TipFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :cond_6
    instance-of v2, v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    if-eqz v2, :cond_7

    .line 157
    check-cast v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :cond_7
    instance-of v2, v0, Lcom/yelp/android/serializable/FeedEntry;

    if-eqz v2, :cond_0

    .line 160
    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 161
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    if-nez v2, :cond_8

    .line 162
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    :cond_8
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 436
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 437
    new-instance v0, Lcom/yelp/android/ui/activities/feed/aq;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/v;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/feed/v;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/activities/feed/aq;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/at;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    .line 439
    new-instance v0, Lcom/yelp/android/ui/activities/feed/aw;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/aw;-><init>(Lcom/yelp/android/ui/activities/feed/ay;)V

    .line 440
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 442
    new-instance v0, Lcom/yelp/android/ui/activities/feed/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/k;-><init>(Lcom/yelp/android/ui/activities/feed/n;)V

    .line 443
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/CheckInFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 445
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bl;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/bl;-><init>(Lcom/yelp/android/ui/activities/feed/br;)V

    .line 446
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 447
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 450
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/feed/u;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/u;

    .line 401
    return-void
.end method

.method public a(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 271
    const/16 v1, 0x422

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/util/Collection;)V

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(I)V

    .line 412
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/AsyncTask$Status;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isNullOr(Lcom/yelp/android/appdata/webrequests/ApiRequest;[Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/u;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->p()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->q()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/u;->a(II)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 281
    :cond_0
    return-void
.end method

.method public b(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070356

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->clear()V

    .line 423
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Ljava/util/List;)V

    .line 424
    return-void
.end method

.method public c(ILcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/16 v1, 0x402

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/yelp/android/ui/activities/feed/aq;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string/jumbo v0, "all_entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    const-string/jumbo v0, "feed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 92
    const-string/jumbo v0, "has_user_scrolled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->g:Z

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b(I)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->g()V

    .line 98
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 173
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    :goto_0
    return-void

    .line 177
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 209
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 180
    :sswitch_0
    const-string/jumbo v0, "changed entry id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, "did we delete it?"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-string/jumbo v0, "changed entry id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "bundle to be passed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :sswitch_1
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    goto :goto_1

    .line 201
    :sswitch_2
    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedUpdate(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x402 -> :sswitch_0
        0x416 -> :sswitch_2
        0x422 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/AsyncTask$Status;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->abortIfAny([Landroid/os/AsyncTask$Status;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->g:Z

    .line 104
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v0, "all_entries"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 110
    const-string/jumbo v0, "feed_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    const-string/jumbo v0, "has_user_scrolled"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method
