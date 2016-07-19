.class Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;
.super Ljava/lang/Object;
.source "RecentBookmarkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/s;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/viewbinder/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/s;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    iput p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/s;)Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/s;

    iget v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;->a:I

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 51
    return-void
.end method
