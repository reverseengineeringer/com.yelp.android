.class public final enum Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;
.super Ljava/lang/Enum;
.source "RoundedWebImageView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

.field public static final enum CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

.field public static final enum DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

.field public static final enum NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

.field public static final enum OVERLAY:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

.field private static modes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final attrEnumValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 41
    new-instance v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    const-string/jumbo v2, "DEFAULT"

    invoke-direct {v1, v2, v0, v0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 49
    new-instance v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    const-string/jumbo v2, "CLIP"

    invoke-direct {v1, v2, v3, v3}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 56
    new-instance v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    const-string/jumbo v2, "OVERLAY"

    invoke-direct {v1, v2, v4, v4}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->OVERLAY:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 61
    new-instance v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    const-string/jumbo v2, "NONE"

    invoke-direct {v1, v2, v5, v5}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 34
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    aput-object v2, v1, v0

    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->OVERLAY:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    aput-object v2, v1, v5

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->$VALUES:[Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 67
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->modes:Landroid/util/SparseArray;

    .line 68
    invoke-static {}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->values()[Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 69
    sget-object v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->modes:Landroid/util/SparseArray;

    iget v5, v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->attrEnumValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->attrEnumValue:I

    .line 79
    return-void
.end method

.method public static modeForValue(I)Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->modes:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->$VALUES:[Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    return-object v0
.end method
