.class public final enum Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;
.super Ljava/lang/Enum;
.source "PromotedFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

.field public static final enum Boolean:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;


# instance fields
.field private final mTypeAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    const-string/jumbo v1, "Boolean"

    const-string/jumbo v2, "Boolean"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->Boolean:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    sget-object v1, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->Boolean:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->$VALUES:[Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->mTypeAsString:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->$VALUES:[Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    return-object v0
.end method
