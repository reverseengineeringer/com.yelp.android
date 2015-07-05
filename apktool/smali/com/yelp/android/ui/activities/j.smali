.class Lcom/yelp/android/ui/activities/j;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/yelp/android/ui/activities/j;->b:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/j;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 184
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/j;->a:Lcom/yelp/android/serializable/YelpBusiness;

    new-instance v2, Lcom/yelp/android/ui/activities/o;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/j;->b:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/j;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/ui/activities/o;-><init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/av/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eg;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/j;->b:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e()V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
