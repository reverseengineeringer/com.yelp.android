.class Lcom/yelp/android/ba/h;
.super Ljava/lang/Object;
.source "FeedUserProfileViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedEntry;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/ba/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ba/f;Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/ba/h;->c:Lcom/yelp/android/ba/f;

    iput-object p2, p0, Lcom/yelp/android/ba/h;->a:Lcom/yelp/android/serializable/FeedEntry;

    iput-object p3, p0, Lcom/yelp/android/ba/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FeedFriendBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p0, Lcom/yelp/android/ba/h;->a:Lcom/yelp/android/serializable/FeedEntry;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessIriParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ba/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ba/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ba/h;->a:Lcom/yelp/android/serializable/FeedEntry;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
