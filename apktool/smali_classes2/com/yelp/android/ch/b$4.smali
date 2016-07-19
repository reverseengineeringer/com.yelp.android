.class Lcom/yelp/android/ch/b$4;
.super Ljava/lang/Object;
.source "FeedPhotoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/DynamicImageView$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/FeedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yelp/android/serializable/Photo;

.field final synthetic e:Lcom/yelp/android/ch/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/b;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/ch/b$4;->e:Lcom/yelp/android/ch/b;

    iput-object p2, p0, Lcom/yelp/android/ch/b$4;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p3, p0, Lcom/yelp/android/ch/b$4;->b:Lcom/yelp/android/serializable/FeedItem;

    iput-object p4, p0, Lcom/yelp/android/ch/b$4;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/yelp/android/ch/b$4;->d:Lcom/yelp/android/serializable/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 168
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ch/b$4;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ch/b$4;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ch/b$4;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ch/b$4;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ch/b$4;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ch/b$4;->d:Lcom/yelp/android/serializable/Photo;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Media;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
