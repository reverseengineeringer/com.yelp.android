.class Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$2;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"

# interfaces
.implements Lcom/yelp/android/ui/util/an$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$2;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$2;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->c(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    return-void
.end method
