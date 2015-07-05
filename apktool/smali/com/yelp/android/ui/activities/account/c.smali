.class Lcom/yelp/android/ui/activities/account/c;
.super Ljava/lang/Object;
.source "CreditCardSelector.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/activities/account/c;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iput p2, p0, Lcom/yelp/android/ui/activities/account/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/c;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iget v1, p0, Lcom/yelp/android/ui/activities/account/c;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method
