.class public Lcom/adjust/sdk/plugin/CriteoProduct;
.super Ljava/lang/Object;
.source "CriteoProduct.java"


# instance fields
.field price:F

.field productID:Ljava/lang/String;

.field quantity:I


# direct methods
.method public constructor <init>(FILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/adjust/sdk/plugin/CriteoProduct;->price:F

    .line 13
    iput p2, p0, Lcom/adjust/sdk/plugin/CriteoProduct;->quantity:I

    .line 14
    iput-object p3, p0, Lcom/adjust/sdk/plugin/CriteoProduct;->productID:Ljava/lang/String;

    .line 15
    return-void
.end method
