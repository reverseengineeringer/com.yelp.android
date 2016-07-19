.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;->b:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;)V

    .line 1514
    return-void
.end method
