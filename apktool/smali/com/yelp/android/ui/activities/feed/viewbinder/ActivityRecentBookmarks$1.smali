.class Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;
.super Ljava/lang/Object;
.source "ActivityRecentBookmarks.java"

# interfaces
.implements Lcom/yelp/android/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 102
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.business.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$1;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->notifyDataSetChanged()V

    .line 108
    return-void
.end method
