.class Lcom/yelp/android/ui/activities/deals/b$1;
.super Ljava/lang/Object;
.source "DialogDealPurchaseSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Activity;Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/b$1;->a:Lcom/yelp/android/ui/activities/deals/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b$1;->a:Lcom/yelp/android/ui/activities/deals/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/b$1;->a:Lcom/yelp/android/ui/activities/deals/b;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/deals/b;->c:Lcom/yelp/android/ui/util/k;

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/util/k;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/b;->b:Lcom/yelp/android/serializable/DealPurchase;

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/b$1;->a:Lcom/yelp/android/ui/activities/deals/b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/b;->d:Lcom/yelp/android/ui/activities/deals/b$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/b$1;->a:Lcom/yelp/android/ui/activities/deals/b;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/deals/b$a;->a(Lcom/yelp/android/ui/activities/deals/b;)V

    .line 74
    return-void
.end method
