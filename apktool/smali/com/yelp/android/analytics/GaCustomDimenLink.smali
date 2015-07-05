.class public final enum Lcom/yelp/android/analytics/GaCustomDimenLink;
.super Ljava/lang/Enum;
.source "GaCustomDimenLink.java"

# interfaces
.implements Lcom/yelp/android/analytics/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/GaCustomDimenLink;",
        ">;",
        "Lcom/yelp/android/analytics/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum biz_dimension:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum first_search_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum nav_dino_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum promoted_filter_alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum promoted_filter_toggle:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum search_actions_shown:Lcom/yelp/android/analytics/GaCustomDimenLink;

.field public static final enum search_source:Lcom/yelp/android/analytics/GaCustomDimenLink;


# instance fields
.field private final mDimensionIndex:I

.field private final mParameterKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "search_actions_shown"

    const/16 v2, 0x9

    const-string/jumbo v3, "search_actions_shown"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_actions_shown:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 20
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "promoted_filter_alias"

    const/16 v2, 0xa

    const-string/jumbo v3, "promoted_filter_alias"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 21
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "search_source"

    const/16 v2, 0xc

    const-string/jumbo v3, "source"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_source:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 24
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "alias"

    const/16 v2, 0x9

    const-string/jumbo v3, "alias"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 25
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "promoted_filter_toggle"

    const/16 v2, 0xa

    const-string/jumbo v3, "toggle_on"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_toggle:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 29
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "biz_dimension"

    const/4 v2, 0x5

    const/16 v3, 0xe

    const-string/jumbo v4, "biz_dimension"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->biz_dimension:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 32
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "first_search_experiment"

    const/4 v2, 0x6

    const/16 v3, 0x1a

    const-string/jumbo v4, "first_search_experiment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->first_search_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 35
    new-instance v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    const-string/jumbo v1, "nav_dino_experiment"

    const/4 v2, 0x7

    const/16 v3, 0x1b

    const-string/jumbo v4, "growth_android_dino_nav"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/analytics/GaCustomDimenLink;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->nav_dino_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/analytics/GaCustomDimenLink;

    sget-object v1, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_actions_shown:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/GaCustomDimenLink;->search_source:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/GaCustomDimenLink;->alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_toggle:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->biz_dimension:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->first_search_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->nav_dino_experiment:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->$VALUES:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    .line 37
    new-array v0, v5, [Lcom/yelp/android/analytics/GaCustomDimenLink;

    sput-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/yelp/android/analytics/GaCustomDimenLink;->mDimensionIndex:I

    .line 44
    iput-object p4, p0, Lcom/yelp/android/analytics/GaCustomDimenLink;->mParameterKey:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/GaCustomDimenLink;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/GaCustomDimenLink;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->$VALUES:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/GaCustomDimenLink;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method


# virtual methods
.method public getDimensionIndex()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/analytics/GaCustomDimenLink;->mDimensionIndex:I

    return v0
.end method

.method public getParameterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/analytics/GaCustomDimenLink;->mParameterKey:Ljava/lang/String;

    return-object v0
.end method
