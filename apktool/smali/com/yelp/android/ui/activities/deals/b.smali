.class public Lcom/yelp/android/ui/activities/deals/b;
.super Ljava/lang/Object;
.source "DialogDealPurchaseSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/b$a;
    }
.end annotation


# static fields
.field public static e:I


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpDeal;

.field protected b:Lcom/yelp/android/serializable/DealPurchase;

.field protected c:Lcom/yelp/android/ui/util/k;

.field protected d:Lcom/yelp/android/ui/activities/deals/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0xcc1f33

    sput v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/ui/activities/deals/b$a;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/b;->a:Lcom/yelp/android/serializable/YelpDeal;

    .line 87
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/b;->d:Lcom/yelp/android/ui/activities/deals/b$a;

    .line 88
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpDeal;ZLcom/yelp/android/ui/activities/deals/b$a;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/ui/activities/deals/b;

    invoke-direct {v0, p1, p3}, Lcom/yelp/android/ui/activities/deals/b;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/ui/activities/deals/b$a;)V

    .line 41
    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Z)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/ui/util/k;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/k;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->c:Lcom/yelp/android/ui/util/k;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->c:Lcom/yelp/android/ui/util/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/b;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/util/k;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->c:Lcom/yelp/android/ui/util/k;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/k;->notifyDataSetChanged()V

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    const v1, 0x7f0701c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/b;->c:Lcom/yelp/android/ui/util/k;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/b$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/b$1;-><init>(Lcom/yelp/android/ui/activities/deals/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 78
    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Lcom/yelp/android/serializable/YelpDeal;Z)V
    .locals 1

    .prologue
    .line 52
    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/k;

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/util/k;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 55
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/k;->notifyDataSetChanged()V

    .line 56
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->a:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public b()Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b;->b:Lcom/yelp/android/serializable/DealPurchase;

    return-object v0
.end method
