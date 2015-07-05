.class Lcom/yelp/android/ui/activities/profile/r;
.super Landroid/database/DataSetObserver;
.source "SingleFeedEntryActivity.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/r;->a:Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/r;->a:Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a(Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/r;->a:Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->b:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 78
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/r;->a:Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/SingleFeedEntryActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    goto :goto_0
.end method
