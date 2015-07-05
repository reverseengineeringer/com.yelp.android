.class public Lcom/ooyala/android/PaginatedItemResponse;
.super Ljava/lang/Object;
.source "PaginatedItemResponse.java"


# instance fields
.field public count:I

.field public firstIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    .line 10
    iput p1, p0, Lcom/ooyala/android/PaginatedItemResponse;->firstIndex:I

    .line 11
    iput p2, p0, Lcom/ooyala/android/PaginatedItemResponse;->count:I

    .line 12
    return-void
.end method
