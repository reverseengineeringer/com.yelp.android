.class Lcom/yelp/android/ui/activities/friendcheckins/g;
.super Ljava/lang/Object;
.source "CommentOnCheckIn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/g;->b:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/g;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/g;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method
