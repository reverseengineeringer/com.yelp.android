.class Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;
.super Ljava/lang/Object;
.source "CreditCardSelector.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/account/CreditCardSelector;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/account/CreditCardSelector;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 364
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;->b:Lcom/yelp/android/ui/activities/account/CreditCardSelector;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/account/CreditCardSelector$3;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Lcom/yelp/android/ui/activities/account/CreditCardSelector;I)V

    .line 366
    return-void
.end method
