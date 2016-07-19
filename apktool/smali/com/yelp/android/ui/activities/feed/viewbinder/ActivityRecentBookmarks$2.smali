.class Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;
.super Ljava/lang/Object;
.source "ActivityRecentBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;


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
    .line 112
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;->c(Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityRecentBookmarks;)Lcom/yelp/android/util/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 117
    return-void
.end method
