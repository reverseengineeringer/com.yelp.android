.class Lcom/yelp/android/ui/activities/support/YelpActivity$b;
.super Ljava/lang/Object;
.source "YelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/YelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field private b:Landroid/content/Intent;

.field private c:Lcom/yelp/android/analytics/iris/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/a;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->b:Landroid/content/Intent;

    .line 1289
    iput-object p3, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->c:Lcom/yelp/android/analytics/iris/a;

    .line 1290
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mFeedHotButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$200(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setFeedHotButtonSelected(Z)V

    .line 1302
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->c:Lcom/yelp/android/analytics/iris/a;

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->c:Lcom/yelp/android/analytics/iris/a;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->b:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 1316
    :goto_1
    return-void

    .line 1296
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mNearbyHotButton:Landroid/view/View;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$300(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setNearbyHotButtonSelected(Z)V

    goto :goto_0

    .line 1298
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/YelpActivity;->mSearchHotButton:Landroid/view/View;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->access$400(Lcom/yelp/android/ui/activities/support/YelpActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setSearchHotButtonSelected(Z)V

    goto :goto_0

    .line 1314
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpActivity$b;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSameActivityHotButtonClick()V

    goto :goto_1
.end method
