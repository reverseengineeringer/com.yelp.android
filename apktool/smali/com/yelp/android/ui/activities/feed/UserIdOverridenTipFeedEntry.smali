.class public Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;
.super Lcom/yelp/android/serializable/TipFeedEntry;
.source "UserIdOverridenTipFeedEntry.java"


# instance fields
.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Tip;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/serializable/TipFeedEntry;-><init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;->mUserId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getSubTitle(Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0705f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserIdForTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/serializable/TipFeedEntry;->getUserIdForTip()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;->mUserId:Ljava/lang/String;

    goto :goto_0
.end method
