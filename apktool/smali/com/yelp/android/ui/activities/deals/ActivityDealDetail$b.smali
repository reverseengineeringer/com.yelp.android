.class Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/BaseAdapter;

.field b:Landroid/view/View;

.field c:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic d:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;Landroid/widget/BaseAdapter;Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->d:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->a:Landroid/widget/BaseAdapter;

    .line 551
    iput-object p3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->b:Landroid/view/View;

    .line 552
    iput-object p4, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$b;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 553
    return-void
.end method
