.class final Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase$a;
.super Ljava/lang/Object;
.source "DealQuantityViewBase.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:[Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;


# direct methods
.method public varargs constructor <init>([Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase$a;->a:[Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;

    .line 34
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase$a;->a:[Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 38
    invoke-interface {v3, p1, p2}, Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;->a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
