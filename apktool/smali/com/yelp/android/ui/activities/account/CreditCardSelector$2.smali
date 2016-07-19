.class Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;
.super Ljava/lang/Object;
.source "CreditCardSelector.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/account/CreditCardSelector;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iput p2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iget v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$2;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V

    .line 343
    const/4 v0, 0x1

    return v0
.end method
