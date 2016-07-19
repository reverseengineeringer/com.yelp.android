.class public final enum Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
.super Ljava/lang/Enum;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Foldability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field public static final enum FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field public static final enum UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

.field public static final enum UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    const-string/jumbo v1, "FOLDED"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 85
    new-instance v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    const-string/jumbo v1, "UNFOLDED"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 90
    new-instance v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    const-string/jumbo v1, "UNFOLDABLE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->$VALUES:[Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

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

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->$VALUES:[Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    return-object v0
.end method
