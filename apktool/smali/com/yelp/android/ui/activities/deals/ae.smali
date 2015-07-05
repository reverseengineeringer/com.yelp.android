.class final Lcom/yelp/android/ui/activities/deals/ae;
.super Ljava/lang/Object;
.source "DealQuantityViewBase.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/s;


# instance fields
.field public final a:[Lcom/yelp/android/ui/widgets/s;


# direct methods
.method public varargs constructor <init>([Lcom/yelp/android/ui/widgets/s;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ae;->a:[Lcom/yelp/android/ui/widgets/s;

    .line 32
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ae;->a:[Lcom/yelp/android/ui/widgets/s;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 36
    invoke-interface {v3, p1, p2}, Lcom/yelp/android/ui/widgets/s;->a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
