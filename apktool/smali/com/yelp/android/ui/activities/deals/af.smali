.class public Lcom/yelp/android/ui/activities/deals/af;
.super Ljava/lang/Object;
.source "DialogDealPurchaseSelection.java"


# static fields
.field public static e:I


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpDeal;

.field protected b:Lcom/yelp/android/serializable/DealPurchase;

.field protected c:Lcom/yelp/android/ui/util/s;

.field protected d:Lcom/yelp/android/ui/activities/deals/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0xcc1f33

    sput v0, Lcom/yelp/android/ui/activities/deals/af;->e:I

    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/ui/activities/deals/ah;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/af;->a:Lcom/yelp/android/serializable/YelpDeal;

    .line 84
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/af;->d:Lcom/yelp/android/ui/activities/deals/ah;

    .line 85
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpDeal;ZLcom/yelp/android/ui/activities/deals/ah;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/deals/af;

    invoke-direct {v0, p1, p3}, Lcom/yelp/android/ui/activities/deals/af;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/ui/activities/deals/ah;)V

    .line 40
    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/deals/af;->a(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Z)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/yelp/android/ui/util/s;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/s;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/af;->c:Lcom/yelp/android/ui/util/s;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/af;->c:Lcom/yelp/android/ui/util/s;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/af;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/util/s;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/af;->c:Lcom/yelp/android/ui/util/s;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/s;->notifyDataSetChanged()V

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/af;->c:Lcom/yelp/android/ui/util/s;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ag;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ag;-><init>(Lcom/yelp/android/ui/activities/deals/af;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 75
    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Lcom/yelp/android/serializable/YelpDeal;Z)V
    .locals 1

    .prologue
    .line 51
    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/s;

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/util/s;->a(Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 54
    invoke-virtual {v0}, Lcom/yelp/android/ui/util/s;->notifyDataSetChanged()V

    .line 55
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/af;->a:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public b()Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/af;->b:Lcom/yelp/android/serializable/DealPurchase;

    return-object v0
.end method
