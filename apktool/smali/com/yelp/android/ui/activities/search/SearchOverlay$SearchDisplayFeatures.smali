.class public final enum Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;
.super Ljava/lang/Enum;
.source "SearchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchDisplayFeatures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

.field public static final enum LOCATION:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

.field public static final enum NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    const-string/jumbo v1, "LOCATION"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->LOCATION:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    .line 79
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->LOCATION:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->$VALUES:[Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->$VALUES:[Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    return-object v0
.end method
