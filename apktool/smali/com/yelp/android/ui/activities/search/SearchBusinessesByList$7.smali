.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$7;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 1921
    const/4 v0, 0x1

    return v0
.end method
