.class Lcom/yelp/android/ui/activities/deals/b;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"

# interfaces
.implements Lcom/yelp/android/ui/util/ch;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/b;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 457
    return-void
.end method
